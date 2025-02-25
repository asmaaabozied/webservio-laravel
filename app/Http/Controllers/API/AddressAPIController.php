<?php
/*
 * File name: AddressAPIController.php
 * Last modified: 2021.02.18 at 12:08:19
 * Author: SmarterVision - https://codecanyon.net/user/smartervision
 * Copyright (c) 2021
 */

namespace App\Http\Controllers\API;


use App\Http\Controllers\Controller;
use App\Models\Address;
use App\Repositories\AddressRepository;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use InfyOm\Generator\Criteria\LimitOffsetCriteria;
use Prettus\Repository\Criteria\RequestCriteria;
use Prettus\Repository\Exceptions\RepositoryException;
use App\Criteria\Addresses\AddressesOfUserCriteria;
use App\Repositories\CustomFieldRepository;
use Illuminate\Support\Facades\Auth;
use App\Http\Requests\CreateAddressRequest;
use App\Http\Requests\UpdateAddressRequest;
use Exception;


/**
 * Class AddressController
 * @package App\Http\Controllers\API
 */
class AddressAPIController extends Controller
{
    /** @var  AddressRepository */
    private $addressRepository;
    
    /**
     * @var CustomFieldRepository
     */
    private $customFieldRepository;

    public function __construct(AddressRepository $addressRepo, CustomFieldRepository $customFieldRepo)
    {
        $this->addressRepository = $addressRepo;
         $this->customFieldRepository = $customFieldRepo;
    }

    /**
     * Display a listing of the Address.
     * GET|HEAD /addresses
     *
     * @param Request $request
     * @return JsonResponse
     */
    public function index(Request $request): JsonResponse
    {
        try {
            $this->addressRepository->pushCriteria(new RequestCriteria($request));
            $this->addressRepository->pushCriteria(new LimitOffsetCriteria($request));
            $this->addressRepository->pushCriteria(new AddressesOfUserCriteria(auth()->id()));
        } catch (RepositoryException $e) {
            return $this->sendError($e->getMessage());
        }
        $addresses = $this->addressRepository->all();
        $this->filterCollection($request, $addresses);
        if ($addresses->count() > 0) {
            return $this->sendResponse($addresses->toArray(), __('lang.saved_successfully', ['operator' => __('lang.address')]));
        }
        return $this->sendError('You have not added any addresss yet.');
    }

    /**
     * Display the specified Address.
     * GET|HEAD /addresses/{id}
     *
     * @param int $id
     *
     * @return JsonResponse
     */
    public function show($id)
    {
        /** @var Address $address */
        if (!empty($this->addressRepository)) {
            $address = $this->addressRepository->findWithoutFail($id);
        }

        if (empty($address)) {
            return $this->sendError('Address not found');
        }

        return $this->sendResponse($address->toArray(), 'Address retrieved successfully');
    }

     /**
     * Store a newly created Address in storage.
     *
     * @param Request $request
     *
     * @return JsonResponse
     */
    public function store(CreateAddressRequest $request): JsonResponse
    {
        try {
            $input = $request->all();
            $input['user_id'] = Auth::id();
            $address = $this->addressRepository->create($input);
           
        } catch (Exception $e) {
            return $this->sendError($e->getMessage());
        }

        return $this->sendResponse($address->toArray(), __('lang.saved_successfully', ['operator' => __('lang.address')]));
    }
    
    /**
     * Update the specified Address in storage.
     *
     * @param int $id
     * @param UpdateAddressRequest $request
     *
     * @return Application|RedirectResponse|Redirector|Response
     * @throws RepositoryException
     */
    public function update(int $id, UpdateAddressRequest $request)
    {
        $this->addressRepository->pushCriteria(new AddressesOfUserCriteria(auth()->id()));
        $address = $this->addressRepository->findWithoutFail($id);

        if (empty($address)) {
            return $this->sendError('Address not found');
        }
        $input = $request->all();
        $input['user_id'] = $address->user->id;
        $customFields = $this->customFieldRepository->findByField('custom_field_model', $this->addressRepository->model());
        try {
            $address = $this->addressRepository->update($input, $id);

            foreach (getCustomFieldsValues($customFields, $request) as $value) {
                $address->customFieldsValues()
                    ->updateOrCreate(['custom_field_id' => $value['custom_field_id']], $value);
            }
        } catch (ValidatorException $e) {
             return $this->sendError($e->getMessage());
        }

         return $this->sendResponse($address->toArray(), __('lang.updated_successfully', ['operator' => __('lang.address')]));
    }

    
    
     /**
     * Remove the specified Address from storage.
     *
     * @param int $id
     *
     * @return JsonResponse
     * @throws RepositoryException
     */
    public function destroy(int $id)
    {
        try {
           $this->addressRepository->pushCriteria(new AddressesOfUserCriteria(auth()->id()));
        $address = $this->addressRepository->findWithoutFail($id);
         if (empty($address)) {
            return $this->sendError('Address not found');
        }

        $this->addressRepository->delete($id);
            return $this->sendResponse([], __('lang.deleted_successfully', ['operator' => __('lang.address')]));
        } catch (Exception $e) {
            return $this->sendError($e->getMessage());
        }

    }
}
