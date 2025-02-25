<?php
/*
 * File name: AvailabilityHourAPIController.php
 * Last modified: 2022.03.14 at 19:05:03
 * Author: SmarterVision - https://codecanyon.net/user/smartervision
 * Copyright (c) 2022
 */

namespace App\Http\Controllers\API;


use App\Http\Controllers\Controller;
use App\Repositories\AvailabilityHourRepository;
use App\Repositories\EProviderRepository;
use Carbon\Carbon;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use InfyOm\Generator\Criteria\LimitOffsetCriteria;
use Prettus\Repository\Criteria\RequestCriteria;
use Prettus\Repository\Exceptions\RepositoryException;
use App\Http\Requests\CreateAvailabilityHourRequest;

/**
 * Class AvailabilityHourController
 * @package App\Http\Controllers\API
 */
class AvailabilityHourAPIController extends Controller
{
    /** @var  AvailabilityHourRepository */
    private $availabilityHourRepository;

    /** @var  EProviderRepository */
    private $eProviderRepository;

    public function __construct(AvailabilityHourRepository $availabilityHourRepo, EProviderRepository $eProviderRepo)
    {
        $this->availabilityHourRepository = $availabilityHourRepo;
        $this->eProviderRepository = $eProviderRepo;
    }


    /**
     * Display a listing of the AvailabilityHour.
     * GET|HEAD /availabilityHours
     *
     * @param Request $request
     * @return JsonResponse
     */
    public function index(Request $request)
    {
        try {
            $this->availabilityHourRepository->pushCriteria(new RequestCriteria($request));
            $this->availabilityHourRepository->pushCriteria(new LimitOffsetCriteria($request));
        } catch (RepositoryException $e) {
            return $this->sendError($e->getMessage());
        }
        $availabilityHours = $this->availabilityHourRepository->all();

        return $this->sendResponse($availabilityHours->toArray(), 'Availability Hours retrieved successfully');
    }

    /**
     * Display the specified AvailabilityHour.
     * GET|HEAD /availabilityHours/{id}
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
        $calendar = [];
        $date = $request->input('date');
        if (!empty($date)) {
            $date = Carbon::createFromFormat('Y-m-d', $date);
            $calendar = $eProvider->weekCalendar($date);
        }

        return $this->sendResponse($calendar, 'Availability Hours retrieved successfully');

    }

     /**
     * Store a newly created AvailabilityHour in storage.
     *
     * @param CreateAvailabilityHourRequest $request
     *
     * @return Application|RedirectResponse|Redirector|Response
     */
    public function store(CreateAvailabilityHourRequest $request)
    {
        $input = $request->all();
        // $customFields = $this->customFieldRepository->findByField('custom_field_model', $this->availabilityHourRepository->model());
        try {
            foreach($input['day'] as $day){
                $input['day'] = $day;
            $availabilityHour = $this->availabilityHourRepository->create($input);
            // $availabilityHour->customFieldsValues()->createMany(getCustomFieldsValues($customFields, $request));
            }
        } catch (ValidationException $e) {
            return $this->sendError(array_values($e->errors()));
        } catch (Exception $e) {
            return $this->sendError($e->getMessage(), 200);
        }

        $availabilityHours = $this->availabilityHourRepository->where('e_provider_id',$input['e_provider_id']);

        return $this->sendResponse($availabilityHours->toArray(), __('lang.saved_successfully', ['operator' => __('lang.availability_hour')]));

    }
}
