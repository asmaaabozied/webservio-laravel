<?php
/*
 * File name: EProviderAPIController.php
 * Last modified: 2021.05.23 at 16:24:25
 * Author: SmarterVision - https://codecanyon.net/user/smartervision
 * Copyright (c) 2021
 */

namespace App\Http\Controllers\API\EProvider;


use App\Criteria\EProviders\EProvidersOfUserCriteria;
use App\Http\Controllers\Controller;
use App\Http\Requests\Api\CreateEProviderRequest;
use App\Http\Requests\Api\UpdateEProviderRequest;
use App\Repositories\EProviderRepository;
use App\Repositories\CustomFieldRepository;
use App\Repositories\UploadRepository;
use App\Repositories\AvailabilityHourRepository;
use App\Repositories\UserRepository;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use InfyOm\Generator\Criteria\LimitOffsetCriteria;
use Prettus\Repository\Criteria\RequestCriteria;
use Prettus\Repository\Exceptions\RepositoryException;
use Exception;
use Illuminate\Support\Facades\DB;

/**
 * Class EProviderController
 * @package App\Http\Controllers\API
 */
class EProviderAPIController extends Controller
{
    /** @var  EProviderRepository */
    private $eProviderRepository;

    /** @var  CustomFieldRepository */
    private $customFieldRepository;

    /** @var  CustomFieldRepository */
    private $uploadRepository;

    /**  @var UserRepository */
    private $userRepository;

    /** @var  AvailabilityHourRepository */
    private $availabilityHourRepository;

    public function __construct(EProviderRepository $eProviderRepo, AvailabilityHourRepository $availabilityHourRepo, CustomFieldRepository $customFieldRepo, UploadRepository $uploadRepo, UserRepository $userRepo)
    {
        $this->eProviderRepository = $eProviderRepo;
        $this->customFieldRepository = $customFieldRepo;
        $this->uploadRepository = $uploadRepo;
        $this->userRepository = $userRepo;
        $this->availabilityHourRepository = $availabilityHourRepo;


        parent::__construct();
    }

    /**
     * Display a listing of the EProvider.
     * GET|HEAD /eProviders
     *
     * @param Request $request
     * @return JsonResponse
     */
    public function index(Request $request): JsonResponse
    {
        try {
            $this->eProviderRepository->pushCriteria(new RequestCriteria($request));
            $this->eProviderRepository->pushCriteria(new LimitOffsetCriteria($request));
            $this->eProviderRepository->pushCriteria(new EProvidersOfUserCriteria(auth()->id()));
        } catch (RepositoryException $e) {
            return $this->sendError($e->getMessage());
        }
        $eProviders = $this->eProviderRepository->with('availabilityHours')->all();
        $this->filterCollection($request, $eProviders);


        return $this->sendResponse($eProviders->toArray(), 'E Providers retrieved successfully');
    }

    /**
     * Display the specified EProvider.
     * GET|HEAD /eProviders/{id}
     *
     * @param int $id
     *
     * @return JsonResponse
     */
    public function show(int $id, Request $request): JsonResponse
    {
        try {
            $this->eProviderRepository->pushCriteria(new RequestCriteria($request));
            $this->eProviderRepository->pushCriteria(new LimitOffsetCriteria($request));
        } catch (RepositoryException $e) {
            return $this->sendError($e->getMessage());
        }
        $eProvider = $this->eProviderRepository->findWithoutFail($id);
        if (empty($eProvider)) {
            return $this->sendError('EProvider not found');
        }
        $this->filterModel($request, $eProvider);

        if ($eProvider->availabilityHours && $eProvider->availabilityHours->count() > 0) {
            $days = [];
            foreach ($eProvider->availabilityHours as $value) {

                array_push($days, $value['day']);
            }

            $availabilityDays['days'] = $days;
            $availabilityDays['start_at'] = $eProvider->availabilityHours->first()->start_at;
            $availabilityDays['end_at'] = $eProvider->availabilityHours->first()->end_at;
            $availabilityDays['data'] = $eProvider->availabilityHours->first()->data;

            $eProvider->availabilityDays = $availabilityDays;
        }
        $eProvider->spoken_languages = $eProvider->spoken_languages ? json_decode($eProvider->spoken_languages) : null;
        $eProvider['availability_hours'] = $eProvider->availabilityHours;

        return $this->sendResponse($eProvider->toArray(), 'EProvider retrieved successfully');
    }

    /**
     * Store a newly created EProvider in storage.
     *
     * @param CreateEProviderRequest $request
     *
     * @return Application|RedirectResponse|Redirector|Response
     */
    public function store(CreateEProviderRequest $request)
    {
        $input = $request->all();
        $input['users'] = [$request->userId];

        $user = $this->userRepository->with('eProviders')->find($request->userId);
        $type_id = $user->eProviders->pluck('e_provider_type_id')->first();
        // dd($type_id);
        $input['e_provider_type_id'] =  $type_id;
        $input['spoken_languages'] = json_encode($request->spoken_languages);
        $input['mobile_number'] = $request->phone_number;

        $customFields = $this->customFieldRepository->findByField('custom_field_model', $this->eProviderRepository->model());
        try {
            $eProvider = $this->eProviderRepository->create($input);
            $eProvider->customFieldsValues()->createMany(getCustomFieldsValues($customFields, $request));

            if (isset($input['image']) && $input['image'] && is_array($input['image'])) {
                foreach ($input['image'] as $fileUuid) {
                    $cacheUpload = $this->uploadRepository->getByUuid($fileUuid);
                    $mediaItem = $cacheUpload->getMedia('image')->first();
                    $mediaItem->copy($eProvider, 'image');
                }
            }

            $input['start_at'] = $input['availabilityDays']['start_at'];
            $input['end_at'] = $input['availabilityDays']['end_at'];
            $input['data'] = $input['availabilityDays']['data'];
            $input['e_provider_id'] = $eProvider->id;
            foreach ($input['availabilityDays']['day'] as $day) {
                $input['day'] = $day;
                $availabilityHour = $this->availabilityHourRepository->create($input);
            }
        } catch (Exception $e) {
            return $this->sendError($e->getMessage());
        }


        $eProvider->spoken_languages = $eProvider->spoken_languages ? json_decode($eProvider->spoken_languages) : null;
        $eProvider['availability_hours'] = $eProvider->availabilityHours;
        return $this->sendResponse($eProvider->toArray(), __('lang.saved_successfully', ['operator' => __('lang.e_provider')]));
    }

    /**
     * Update the specified EProvider in storage.
     *
     * @param int $id
     * @param UpdateEProviderRequest $request
     *
     * @return Application|RedirectResponse|Redirector|Response
     * @throws RepositoryException
     */
    public function update(int $id, UpdateEProviderRequest $request)
    {
        // $this->eProviderRepository->pushCriteria(new EProvidersOfUserCriteria($request->userId));
        $oldEProvider = $this->eProviderRepository->findWithoutFail($id);
        //   return $id;
        if (empty($oldEProvider)) {
            return $this->sendError(__('lang.not_found', ['operator' => __('lang.e_provider')]));
        }
        $input = $request->all();
        $input['users'] = [$request->userId];
        $input['spoken_languages'] = json_encode($request->spoken_languages);
        // return $this->sendResponse($input, __('lang.updated_successfully', ['operator' => __('lang.e_provider')]));

        // dd($input);
        $customFields = $this->customFieldRepository->findByField('custom_field_model', $this->eProviderRepository->model());
        DB::beginTransaction();

        try {
            $input['addresses'] = isset($input['addresses']) ? $input['addresses'] : [];
            $input['taxes'] = isset($input['taxes']) ? $input['taxes'] : [];
            $eProvider = $this->eProviderRepository->update($input, $id);
            if (count($input['availabilityDays']) > 0) {
                foreach ($oldEProvider->availabilityHours as $value) {
                    $value->delete();
                }
                $input['start_at'] = $input['availabilityDays']['start_at'];
                $input['end_at'] = $input['availabilityDays']['end_at'];
                $input['data'] = $input['availabilityDays']['data'] ?? null;
                $input['e_provider_id'] = $eProvider->id;
                foreach ($input['availabilityDays']['day'] as $day) {
                    $input['day'] = $day;
                    $availabilityHour = $this->availabilityHourRepository->create($input);
                }
                // $availability_days = [];
                // foreach ($input['availabilityDays']['day'] as $day) {
                //     $$availability_days['day'] = $day;
                //     $availability_days['start_at'] = $input['availabilityDays']['start_at'];
                //     $availability_days['end_at'] = $input['availabilityDays']['end_at'];
                //     $availability_days['data'] = $input['availabilityDays']['data'];

                // }

                // $this->eProviderRepository->sync($eProvider->id ,'availabilityHours' ,$availability_days);

            }
            if (isset($input['image']) && $input['image'] && is_array($input['image'])) {
                foreach ($input['image'] as $fileUuid) {
                    $cacheUpload = $this->uploadRepository->getByUuid($fileUuid);
                    $mediaItem = $cacheUpload->getMedia('image')->first();
                    $mediaItem->copy($eProvider, 'image');
                }
            }
            foreach (getCustomFieldsValues($customFields, $request) as $value) {
                $eProvider->customFieldsValues()
                    ->updateOrCreate(['custom_field_id' => $value['custom_field_id']], $value);
            }
            DB::commit();
        } catch (Exception $e) {
            return $this->sendError($e->getMessage());
        }
        $eProvider->spoken_languages = $eProvider->spoken_languages ? json_decode($eProvider->spoken_languages) : null;
        $eProvider->accepted = $eProvider->accepted ? true : false;
        $eProvider['availability_hours'] = $eProvider->availabilityHours;
        return $this->sendResponse($eProvider->toArray(), __('lang.updated_successfully', ['operator' => __('lang.e_provider')]));
    }

    /**
     * Remove the specified EProvider from storage.
     *
     * @param int $id
     *
     */
    public function destroy(int $id)
    {
        $eProvider = $this->eProviderRepository->findWithoutFail($id);

        if (empty($eProvider)) {
            return $this->sendError(__('lang.not_found', ['operator' => __('lang.e_provider')]));
        }
        $this->eProviderRepository->delete($id);
        return $this->sendResponse($eProvider, __('lang.deleted_successfully', ['operator' => __('lang.e_provider')]));
    }
}
