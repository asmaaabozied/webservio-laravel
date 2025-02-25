<?php
/*
 * File name: UserAPIController.php
 * Last modified: 2022.01.18 at 23:52:40
 * Author: SmarterVision - https://codecanyon.net/user/smartervision
 * Copyright (c) 2022
 */

namespace App\Http\Controllers\API\EProvider;

use App\Http\Controllers\Controller;
use App\Http\Requests\UpdateUserRequest;
use App\Models\User;
use App\Notifications\CustomerRegistration;
use App\Notifications\NewProviderRegistration;
use App\Repositories\CustomFieldRepository;
use App\Repositories\RoleRepository;
use App\Repositories\UploadRepository;
use App\Repositories\UserRepository;
use App\Repositories\EProviderRepository;
use App\Repositories\EProviderTypeRepository;
use Exception;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Password;
use Illuminate\Support\Str;
use Illuminate\Validation\ValidationException;
use App\Notifications\NewRegistration;
use Illuminate\Support\Facades\Notification;
use Illuminate\Support\Facades\DB;

class UserAPIController extends Controller
{
    /**
     * @var UserRepository
     */
    private $userRepository;

    private $uploadRepository;
    private $roleRepository;
    private $customFieldRepository;
    private $eProviderRepository;
    private $eProviderTypeRepository;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct(UserRepository $userRepository, UploadRepository $uploadRepository, RoleRepository $roleRepository, CustomFieldRepository $customFieldRepo, EProviderRepository $eProviderRepository, EProviderTypeRepository $eProviderTypeRepository)
    {
        $this->userRepository = $userRepository;
        $this->uploadRepository = $uploadRepository;
        $this->roleRepository = $roleRepository;
        $this->customFieldRepository = $customFieldRepo;
        $this->eProviderRepository = $eProviderRepository;
        $this->eProviderTypeRepository = $eProviderTypeRepository;

    }

    public function listEproviderTypes()
    {
        $eProviderTypes = $this->eProviderTypeRepository->all();
        return $this->sendResponse($eProviderTypes, 'Provider types retrieved successfully');

    }

    function login(Request $request)
    {
        try {
            $this->validate($request, [
                'email' => 'required|email',
                'password' => 'required',
            ]);
            if (auth()->attempt(['email' => $request->input('email'), 'password' => $request->input('password')])) {
                // Authentication passed...
                $user = auth()->user();
                if (!$user->hasRole('provider')) {
                    return $this->sendError(__('auth.account_not_accepted'), 200);
                }
                $user->device_token = $request->input('device_token', '');
                $user->save();
                // dd(($user->eProviders->first()) );
                $user->accepted = isset($user->eProviders) ? ( $user->eProviders()->first() ? $user->eProviders()->first()->accepted : false) : false;
                return $this->sendResponse($user, 'User retrieved successfully');
            } else {
                return $this->sendError(__('auth.failed'), 200);
            }
        } catch (ValidationException $e) {
            return $this->sendError(array_values($e->errors()));
        } catch (Exception $e) {
            return $this->sendError($e->getMessage(), 200);
        }
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param array $data
     * @return
     */
    function register(Request $request)
    {

        try {
             DB::beginTransaction();
            $this->validate($request, User::$rules);
            //assign provider data in users tabel 
           
            $user = new User;
            $user->name = $request->input('name');
            $user->email = $request->input('email');
            $user->phone_number = $request->input('phone_number');
            $user->phone_verified_at = $request->input('phone_verified_at');
            $user->device_token = $request->input('device_token', '');
            $user->password = Hash::make($request->input('password'));
            $user->api_token = Str::random(60);
            $user->save();
            $user->assignRole('provider');

            //assign provider data in eProviders tabel as provider 
            $input = $request->all();
            $input['users'] = [$user->id];
            $input['mobile_number'] = $request->phone_number;
            $input['e_provider_type_id'] = $request->typeId;

           
            // dd($input);
            $eProvider = $this->eProviderRepository->create($input);

            $customFields = $this->customFieldRepository->findByField('custom_field_model', $this->eProviderRepository->model());
            $eProvider->customFieldsValues()->createMany(getCustomFieldsValues($customFields, $request));
            DB::commit();

            // Send welcom email to user
            Notification::send($user, new NewProviderRegistration($user));

            // Send email with user details to provider
             $super_admin = $this->userRepository->whereHas('roles', function ($query) {
                return $query->where('name', 'provider');
            })->first();

             Notification::send($super_admin, new NewRegistration($user, $super_admin->name));
            
        } catch (ValidationException $e) {
            DB::rollBack();
            return $this->sendError(array_values($e->errors()));
        } catch (Exception $e) {
            DB::rollBack();
            return $this->sendError($e->getMessage(), 200);
        }


        return $this->sendResponse([$user,$eProvider], 'User retrieved successfully');
    }

    function logout(Request $request)
    {
        $user = $this->userRepository->findByField('api_token', $request->input('api_token'))->first();
        if (!$user) {
            return $this->sendError('User not found', 200);
        }
        try {
            auth()->logout();
        } catch (Exception $e) {
            $this->sendError($e->getMessage(), 200);
        }
        return $this->sendResponse($user['name'], 'User logout successfully');
    }

    function user(Request $request)
    {
        $user = $this->userRepository->findByField('api_token', $request->input('api_token'))->first();

        if (!$user) {
            return $this->sendError('User not found', 200);
        }

        return $this->sendResponse($user, 'User retrieved successfully');
    }

    function settings(Request $request)
    {      //  return $this->sendResponse('hi', 'Settings retrieved successfully');
        $settings = setting()->all();
        $settings = array_intersect_key(
            $settings,
            [
                'default_tax' => '',
                'default_currency' => '',
                'default_currency_decimal_digits' => '',
                'app_name' => '',
                'provider_app_name' => '',
                'currency_right' => '',
                'enable_paypal' => '',
                'enable_stripe' => '',
                'enable_razorpay' => '',
                'main_color' => '',
                'main_dark_color' => '',
                'second_color' => '',
                'second_dark_color' => '',
                'accent_color' => '',
                'accent_dark_color' => '',
                'scaffold_dark_color' => '',
                'scaffold_color' => '',
                'google_maps_key' => '',
                'fcm_key' => '',
                'mobile_language' => '',
                'app_version' => '',
                'enable_version' => '',
                'distance_unit' => '',
                'default_theme' => '',
                'default_country_code' => ''
            ]
        );

        if (!$settings) {
            return $this->sendError('Settings not found', 200);
        }

        return $this->sendResponse($settings, 'Settings retrieved successfully');
    }

    /**
     * Update the specified User in storage.
     *
     * @param int $id
     * @param UpdateUserRequest $request
     *
     */
    public function update(int $id, UpdateUserRequest $request): JsonResponse
    {
        $user = $this->userRepository->findWithoutFail($id);
        if (empty($user)) {
            return $this->sendError('User not found');
        }
        $input = $request->except(['api_token']);
        try {
            if ($request->has('device_token')) {
                $user = $this->userRepository->update($request->only('device_token'), $id);
            } else {
                $customFields = $this->customFieldRepository->findByField('custom_field_model', $this->userRepository->model());
                if (isset($input['password'])) {
                    $input['password'] = Hash::make($request->input('password'));
                }
                if (isset($input['avatar']) && $input['avatar']) {
                    $cacheUpload = $this->uploadRepository->getByUuid($input['avatar']);
                    $mediaItem = $cacheUpload->getMedia('avatar')->first();
                    if ($user->hasMedia('avatar')) {
                        $user->getFirstMedia('avatar')->delete();
                    }
                    $mediaItem->copy($user, 'avatar');
                }
                $user = $this->userRepository->update($input, $id);

                foreach (getCustomFieldsValues($customFields, $request) as $value) {
                    $user->customFieldsValues()
                        ->updateOrCreate(['custom_field_id' => $value['custom_field_id']], $value);
                }
            }
        } catch (Exception $e) {
            return $this->sendError($e->getMessage(), 200);
        }

        return $this->sendResponse($user, __('lang.updated_successfully', ['operator' => __('lang.user')]));
    }

    function sendResetLinkEmail(Request $request): JsonResponse
    {
        try {
            $this->validate($request, ['email' => 'required|email|exists:users']);
            $response = Password::broker()->sendResetLink(
                $request->only('email')
            );
            if ($response == Password::RESET_LINK_SENT) {
                return $this->sendResponse(true, 'Reset link was sent successfully');
            } else {
                return $this->sendError('ُError Reset link not sent');
            }
        } catch (ValidationException $e) {
            return $this->sendError($e->getMessage());
        }
        /*
        catch (Exception $e) {
            return $this->sendError("Email not configured in your admin panel settings");
        }
        */
    }
}
