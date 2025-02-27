<?php
/*
 * File name: UserController.php
 * Last modified: 2021.07.12 at 00:20:51
 * Author: SmarterVision - https://codecanyon.net/user/smartervision
 * Copyright (c) 2021
 */

namespace App\Http\Controllers;

use App\DataTables\EProviderAdminDataTable;
use App\DataTables\UserDataTable;
use App\Events\UserRoleChangedEvent;
use App\Http\Requests\CreateUserRequest;
use App\Http\Requests\UpdateEProviderAdminRequest;
use App\Repositories\CustomFieldRepository;
use App\Repositories\RoleRepository;
use App\Repositories\UploadRepository;
use App\Repositories\UserRepository;
use Exception;
use Flash;
use Illuminate\Contracts\Foundation\Application;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Routing\Redirector;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Str;
use Prettus\Validator\Exceptions\ValidatorException;
use Carbon\Carbon;

class EProviderAdminController extends Controller
{
    /** @var  UserRepository */
    private $userRepository;
    /**
     * @var RoleRepository
     */
    private $roleRepository;

    private $uploadRepository;

    /**
     * @var CustomFieldRepository
     */
    private $customFieldRepository;

    public function __construct(
        UserRepository $userRepo,
        RoleRepository $roleRepo,
        UploadRepository $uploadRepo,
        CustomFieldRepository $customFieldRepo
    ) {
        parent::__construct();
        $this->userRepository = $userRepo;
        $this->roleRepository = $roleRepo;
        $this->uploadRepository = $uploadRepo;
        $this->customFieldRepository = $customFieldRepo;
    }

    /**
     * Display a listing of the EProvider admins.
     *
     * @param UserDataTable $userDataTable
     * @return Response
     */
    public function index(EProviderAdminDataTable $eproviderAdminDataTable)
    {
        return $eproviderAdminDataTable->render('e_provider_admins.index');
    }


   

    /**
     * Display a user profile.
     *
     * @param
     * @return Response
     */
    public function profile()
    {
        $user = $this->userRepository->findWithoutFail(auth()->id());
        unset($user->password);
        $customFields = false;
        $role = $this->roleRepository->pluck('name', 'name');
        $rolesSelected = $user->getRoleNames()->toArray();
        $customFieldsValues = $user->customFieldsValues()->with('customField')->get();
        // dd($customFieldsValues);
        $hasCustomField = in_array($this->userRepository->model(), setting('custom_field_models', []));
        if ($hasCustomField) {
            $customFields = $this->customFieldRepository->findByField('custom_field_model', $this->userRepository->model());
            $customFields = generateCustomField($customFields, $customFieldsValues);
        }
        return view('e_provider_admins.profile', compact(['user', 'role', 'rolesSelected', 'customFields', 'customFieldsValues']));
    }

    /**
     * Show the form for creating a new EProvider Admin.
     *
     * @return Response
     */
    public function create()
    {
        // $role = $this->roleRepository->pluck('name', 'name');

        // $rolesSelected = [];
        $hasCustomField = in_array($this->userRepository->model(), setting('custom_field_models', []));
        if ($hasCustomField) {
            $customFields = $this->customFieldRepository->findByField('custom_field_model', $this->userRepository->model());
            $html = generateCustomField($customFields);
        }

        return view('e_provider_admins.create')
            // ->with("role", $role)
            ->with("customFields", isset($html) ? $html : false);
            // ->with("rolesSelected", $rolesSelected);
    }

    /**
     * Store a newly created User in storage.
     *
     * @param CreateUserRequest $request
     *
     * @return Response
     */
    public function store(CreateUserRequest $request)
    {
        if (config('installer.demo_app')) {
            Flash::warning('This is only demo app you can\'t change this section ');
            return redirect(route('e_ProviderAdmins.index'));
        }

        $input = $request->all();
        $customFields = $this->customFieldRepository->findByField('custom_field_model', $this->userRepository->model());

        // $input['roles'] = isset($input['roles']) ? $input['roles'] : [];
        $input['roles'] = ['provider'];
        $input['password'] = Hash::make($input['password']);
        $input['api_token'] = Str::random(60);

        try {
            $user = $this->userRepository->create($input);
            $user->syncRoles($input['roles']);
            $user->customFieldsValues()->createMany(getCustomFieldsValues($customFields, $request));

            if (isset($input['avatar']) && $input['avatar']) {
                $cacheUpload = $this->uploadRepository->getByUuid($input['avatar']);
                $mediaItem = $cacheUpload->getMedia('avatar')->first();
                $mediaItem->copy($user, 'avatar');
            }
            event(new UserRoleChangedEvent($user));
        } catch (ValidatorException $e) {
            Flash::error($e->getMessage());
        }

        Flash::success('saved successfully.');

        return redirect(route('e_ProviderAdmins.index'));
    }

   

    /**
     * Show the form for editing the specified User.
     *
     * @param int $id
     *
     * @return Response
     */
    public function edit($id)
    {
        if (!auth()->user()->hasRole('admin') && $id != auth()->id()) {
            Flash::error('Permission denied');
            return redirect(route('e_ProviderAdmins.index'));
        }
        $user = $this->userRepository->findWithoutFail($id);
        unset($user->password);
        $html = false;
        $role = $this->roleRepository->pluck('name', 'name');
        $rolesSelected = $user->getRoleNames()->toArray();
        $customFieldsValues = $user->customFieldsValues()->with('customField')->get();
        $customFields = $this->customFieldRepository->findByField('custom_field_model', $this->userRepository->model());
        $hasCustomField = in_array($this->userRepository->model(), setting('custom_field_models', []));
        if ($hasCustomField) {
            $html = generateCustomField($customFields, $customFieldsValues);
        }

        $user->verified = $user->phone_verified_at ? 1 : 0;
        if (empty($user)) {
            Flash::error('User not found');

            return redirect(route('e_ProviderAdmins.index'));
        }
        return view('e_provider_admins.edit')
            ->with('user', $user)->with("role", $role)
            ->with("rolesSelected", $rolesSelected)
            ->with("customFields", $html);
    }

    /**
     * Update the specified User in storage.
     *
     * @param int $id
     * @param UpdateEProviderAdminRequest $request
     *
     * @return Application|RedirectResponse|Redirector|Response
     */
    public function update(int $id, UpdateEProviderAdminRequest $request)
    {
        if (config('installer.demo_app')) {
            Flash::warning('This is only demo app you can\'t change this section ');
            return redirect(route('e_ProviderAdmins.profile'));
        }
        if (!auth()->user()->hasRole('admin') && $id != auth()->id()) {
            Flash::error('Permission denied');
            return redirect(route('e_ProviderAdmins.profile'));
        }

        $user = $this->userRepository->findWithoutFail($id);


        if (empty($user)) {
            Flash::error(__('lang.not_found', ['operator' => __('lang.user')]));
            return redirect(route('e_ProviderAdmins.profile'));
        }
        $customFields = $this->customFieldRepository->findByField('custom_field_model', $this->userRepository->model());

        $input = $request->all();
        if (!auth()->user()->can('permissions.index')) {
            unset($input['roles']);
        } else {
            $input['roles'] = isset($input['roles']) ? $input['roles'] : [];
        }
        if (empty($input['password'])) {
            unset($input['password']);
        } else {
            $input['password'] = Hash::make($input['password']);
        }
        if ($user['phone_number'] != $input['phone_number']) {
            $input['phone_verified_at'] = null;
        }
        if ($input['verified'] && $input['verified'] == 1 ) {
            $input['phone_verified_at'] = Carbon::now();
        }else{
            $input['phone_verified_at'] = null;

        }

        try {
            $user = $this->userRepository->update($input, $id);
            if (empty($user)) {
                Flash::error('User not found');
                return redirect(route('e_ProviderAdmins.profile'));
            }
            if (isset($input['avatar']) && $input['avatar']) {
                $cacheUpload = $this->uploadRepository->getByUuid($input['avatar']);
                $mediaItem = $cacheUpload->getMedia('avatar')->first();
                $mediaItem->copy($user, 'avatar');
            }
            if (auth()->user()->can('permissions.index')) {
                $user->syncRoles($input['roles']);
            }
            foreach (getCustomFieldsValues($customFields, $request) as $value) {
                $user->customFieldsValues()
                    ->updateOrCreate(['custom_field_id' => $value['custom_field_id']], $value);
            }
        } catch (ValidatorException $e) {
            Flash::error($e->getMessage());
        }


        Flash::success('User updated successfully.');

        return redirect()->back();
    }

    /**
     * Remove the specified User from storage.
     *
     * @param int $id
     *
     * @return Response
     */
    public function destroy($id)
    {
        if (config('installer.demo_app')) {
            Flash::warning('This is only demo app you can\'t change this section ');
            return redirect(route('e_ProviderAdmins.index'));
        }
        $user = $this->userRepository->findWithoutFail($id);

        if (empty($user)) {
            Flash::error('User not found');

            return redirect(route('e_ProviderAdmins.index'));
        }

        $this->userRepository->delete($id);

        Flash::success('User deleted successfully.');

        return redirect(route('e_ProviderAdmins.index'));
    }

    /**
     * Remove Media of User
     * @param Request $request
     */
    public function removeMedia(Request $request)
    {
        if (config('installer.demo_app')) {
            Flash::warning('This is only demo app you can\'t change this section ');
        } else {
            if (auth()->user()->can('medias.delete')) {
                $input = $request->all();
                $user = $this->userRepository->findWithoutFail($input['id']);
                try {
                    if ($user->hasMedia($input['collection'])) {
                        $user->getFirstMedia($input['collection'])->delete();
                    }
                } catch (Exception $e) {
                    Log::error($e->getMessage());
                }
            }
        }
    }
}
