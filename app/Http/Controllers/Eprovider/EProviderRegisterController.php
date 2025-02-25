<?php

namespace App\Http\Controllers\Eprovider;

use App\Http\Controllers\Controller;
use App\Models\EProvider;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\DB;
use App\Repositories\CustomFieldRepository;
use App\Repositories\RoleRepository;
use App\Repositories\EProviderRepository;
use App\Repositories\UserRepository;
use App\Repositories\EProviderTypeRepository;
use App\Criteria\EProviderTypes\EnabledCriteria;
use App\Notifications\NewProviderRegistration;
use App\Notifications\NewRegistration;
use Illuminate\Support\Facades\Notification;
use Flash;
use Illuminate\Support\Facades\Redirect;


class EProviderRegisterController extends Controller
{
    private $userRepository;
    private $eProviderRepository;
    private $roleRepository;
    private $customFieldRepository;
    private $eProviderTypeRepository;

    public function __construct(UserRepository $userRepository, EProviderRepository $eProviderRepository, RoleRepository $roleRepository, CustomFieldRepository $customFieldRepo, EProviderTypeRepository $eProviderTypeRepository)
    {
        $this->userRepository = $userRepository;
        $this->eProviderRepository = $eProviderRepository;
        $this->roleRepository = $roleRepository;
        $this->customFieldRepository = $customFieldRepo;
        $this->eProviderTypeRepository = $eProviderTypeRepository;
    }

    public function register()
    {
        // $eProviderTypes = $this->eProviderTypeRepository->getByCriteria(new EnabledCriteria())->pluck('name', 'id');
        $eProviderTypes = $this->eProviderTypeRepository->all()->pluck('name', 'id');
        return view('web.eprovider.register', compact('eProviderTypes'));
    }

    public function handleRegister(Request $request)
    {
        // dd($request->all());
        DB::beginTransaction();

        try {

            $this->validate($request, User::$rules);
            //assign provider data in users tabel as customer 
            $user = new User;
            $user->name = $request->input('name');
            $user->email = $request->input('email');
            $user->phone_number = $request->input('phone_number');
            $user->password = Hash::make($request->input('password'));
            $user->save();

            $user->assignRole('provider');

            $customFields = $this->customFieldRepository->findByField('custom_field_model', $this->userRepository->model());

            foreach (getCustomFieldsValues($customFields, $request) as $value) {
                $user->customFieldsValues()
                    ->updateOrCreate(['custom_field_id' => $value['custom_field_id']], $value);
            }
            //assign provider data in eProviders tabel as provider 
            $input = $request->all();
            $input['users'] = [$user->id];
            $input['spoken_languages'] = json_encode($request->spoken_languages);
            $input['mobile_number'] = $request->phone_number;
            // dd($input);
            $eProvider = $this->eProviderRepository->create($input);

            $customFields = $this->customFieldRepository->findByField('custom_field_model', $this->eProviderRepository->model());
            $eProvider->customFieldsValues()->createMany(getCustomFieldsValues($customFields, $request));

            DB::commit();

            // Send email with user registration details to super admin
            $super_admin = $this->userRepository->whereHas('roles', function ($query) {
                return $query->where('name', 'super admin');
            })->first();
            Notification::send($super_admin, new NewRegistration($user, $super_admin->name));

            // Send email to provider with your registration info
            Notification::send($user, new NewProviderRegistration($user));
            
        } catch (ValidationException $e) {
            DB::rollback();
            Flash::error($e->getMessage());
        } catch (Exception $e) {
            DB::rollback();
            Flash::error($e->getMessage());
        }

        return redirect(route('login'));
    }
}
