<?php

namespace App\Http\Controllers;

use App\Repositories\AvailabilityHourRepository;
use App\Criteria\Addresses\AddressesOfUserCriteria;
use App\Criteria\EProviders\EProvidersOfUserCriteria;
use App\Criteria\EProviderTypes\EnabledCriteria;
use App\Criteria\Users\EProvidersCustomersCriteria;
use App\Criteria\AvailabilityHours\AvailabilityHoursOfUserCriteria;
use App\Criteria\Galleries\GalleriesOfProviderCriteria;
use App\DataTables\EProviderDataTable;
use App\DataTables\RequestedEProviderDataTable;
use App\Events\EProviderChangedEvent;
use App\Http\Requests\CreateEProviderRequest;
use App\Http\Requests\UpdateEProviderRequest;
use App\Repositories\AddressRepository;
use App\Repositories\CustomFieldRepository;
use App\Repositories\EProviderRepository;
use App\Repositories\EProviderTypeRepository;
use App\Repositories\TaxRepository;
use App\Repositories\UploadRepository;
use App\Repositories\UserRepository;
use Exception;
use Flash;
use Illuminate\Contracts\Foundation\Application;
use Illuminate\Contracts\View\Factory;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Routing\Redirector;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Response;
use Illuminate\View\View;
use Prettus\Repository\Exceptions\RepositoryException;
use Prettus\Validator\Exceptions\ValidatorException;
use App\Http\Requests\CreateGalleryRequest;
use App\Notifications\ProviderAcceptance;
use App\Repositories\GalleryRepository;
use App\Repositories\CategoryRepository;
use Illuminate\Support\Facades\Notification;



class EProviderController extends Controller
{
     /** @var  EProviderRepository */
     private $availabilityHourRepository;

    /** @var  EProviderRepository */
    private $eProviderRepository;

    /**
     * @var CustomFieldRepository
     */
    private $customFieldRepository;

    /**
     * @var UploadRepository
     */
    private $uploadRepository;
    /**
     * @var EProviderTypeRepository
     */
    private $eProviderTypeRepository;
    /**
     * @var UserRepository
     */
    private $userRepository;
    /**
     * @var AddressRepository \,
     */
    private $addressRepository;
    /**
     * @var TaxRepository
     */
    private $taxRepository;
     /**
     * @var CategoryRepository
     */
    private $categoryRepository;
    private $galleryRepository;

    public function __construct(AvailabilityHourRepository $availabilityHourRepo,EProviderRepository $eProviderRepo, CustomFieldRepository $customFieldRepo, UploadRepository $uploadRepo
        , EProviderTypeRepository                   $eProviderTypeRepo
        , UserRepository                            $userRepo
        , AddressRepository                         $addressRepo
        , CategoryRepository                        $categoryRepo
        , TaxRepository                             $taxRepo
        , GalleryRepository                         $galleryRepo)
    {
        parent::__construct();
        $this->eProviderRepository = $eProviderRepo;
        $this->customFieldRepository = $customFieldRepo;
        $this->uploadRepository = $uploadRepo;
        $this->eProviderTypeRepository = $eProviderTypeRepo;
        $this->userRepository = $userRepo;
        $this->addressRepository = $addressRepo;
        $this->taxRepository = $taxRepo;
        $this->galleryRepository = $galleryRepo;
        $this->categoryRepository = $categoryRepo;
        $this->availabilityHourRepository = $availabilityHourRepo;


    }

    /**
     * Display a listing of the EProvider.
     *
     * @param EProviderDataTable $eProviderDataTable
     * @return mixed
     */
    public function index(EProviderDataTable $eProviderDataTable)
    {
        return $eProviderDataTable->render('e_providers.index');
    }

    /**
     * Display a listing of the EProvider.
     *
     * @param EProviderDataTable $eproviderDataTable
     * @return mixed
     */
    public function requestedEProviders(RequestedEProviderDataTable $requestedEProviderDataTable)
    {
        return $requestedEProviderDataTable->render('e_providers.requested');
    }

    /**
     * Show the form for creating a new EProvider.
     *
     * @return Application|Factory|Response|View
     */
    public function create()
    {
        $eProviderType = $this->eProviderTypeRepository->getByCriteria(new EnabledCriteria())->pluck('name', 'id');
        // $user = $this->userRepository->getByCriteria(new EProvidersCustomersCriteria())->pluck('name', 'id');
        $auth_user = auth()->user();
        $user = $auth_user->hasRole('provider') ? $auth_user->eProviders->first()->users->pluck('name', 'id') : $this->userRepository->getByCriteria(new EProvidersCustomersCriteria())->pluck('name', 'id');

        $address = $this->addressRepository->getByCriteria(new AddressesOfUserCriteria(auth()->id()))->pluck('address', 'id');
        $tax = $this->taxRepository->pluck('name', 'id');
        // $usersSelected = [];
        $usersSelected = $auth_user->hasRole('provider') ? $auth_user->eProviders->first()->users->pluck('id')->toArray() : [];
    //   dd($usersSelected);
        $addressesSelected = [];
        $taxesSelected = [];
        $languageSelected = [];
        $hasCustomField = in_array($this->eProviderRepository->model(), setting('custom_field_models', []));
        if ($hasCustomField) {
            $customFields = $this->customFieldRepository->findByField('custom_field_model', $this->eProviderRepository->model());
            $html = generateCustomField($customFields);
        }
        return view('e_providers.create')->with("customFields", isset($html) ? $html : false)
        ->with("eProviderType", $eProviderType)->with("user", $user)->with("usersSelected", $usersSelected)
        ->with("address", $address)->with("addressesSelected", $addressesSelected)->with("tax", $tax)
        ->with("taxesSelected", $taxesSelected)->with('languageSelected' , $languageSelected);
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
        // dd($request->spoken_languages);
        $input = $request->all();
        if (auth()->user()->hasRole(['provider', 'customer'])) {
            $input['users'] = [auth()->id()];
        }
        // dd($input['spoken_languages']);
        $customFields = $this->customFieldRepository->findByField('custom_field_model', $this->eProviderRepository->model());
        try {
        // dd($input['spoken_languages']);
            $arr = collect($request['spoken_languages']);
            $input['spoken_languages'] = $arr;
            $eProvider = $this->eProviderRepository->create($input);
            // dd($eProvider);
            $eProvider->customFieldsValues()->createMany(getCustomFieldsValues($customFields, $request));
            if (isset($input['image']) && $input['image'] && is_array($input['image'])) {
                foreach ($input['image'] as $fileUuid) {
                    $cacheUpload = $this->uploadRepository->getByUuid($fileUuid);
                    $mediaItem = $cacheUpload->getMedia('image')->first();
                    $mediaItem->copy($eProvider, 'image');
                }
            }
            event(new EProviderChangedEvent($eProvider, $eProvider));
        } catch (ValidatorException $e) {
            Flash::error($e->getMessage());
        }

        Flash::success(__('lang.saved_successfully', ['operator' => __('lang.e_provider')]));
        return redirect(route('eProviders.index'));
    }

    /**
     * Display the specified EProvider.
     *
     * @param int $id
     *
     * @return Application|RedirectResponse|Redirector|Response
     * @throws RepositoryException
     */
    public function show(int $id)
    {
        $this->eProviderRepository->pushCriteria(new EProvidersOfUserCriteria(auth()->id()));
        $eProvider = $this->eProviderRepository->findWithoutFail($id);

        if (empty($eProvider)) {
            Flash::error(__('lang.not_found', ['operator' => __('lang.e_provider')]));

            return redirect(route('eProviders.index'));
        }

        return view('e_providers.show')->with('eProvider', $eProvider);
    }

    /**
     * Show the form for editing the specified EProvider.
     *
     * @param int $id
     *
     * @return Application|RedirectResponse|Redirector|Response
     * @throws RepositoryException
     */
    public function edit(int $id){

       $this->eProviderRepository->pushCriteria(new EProvidersOfUserCriteria(auth()->id()));
       $eProvider = $this->eProviderRepository->findWithoutFail($id);
       if (empty($eProvider)) {
           Flash::error(__('lang.not_found', ['operator' => __('lang.e_provider')]));
           return redirect(route('eProviders.index'));
        }
        // return $eProvider;
        $eProviderType = $this->eProviderTypeRepository->getByCriteria(new EnabledCriteria())->pluck('name', 'id');
        $auth_user = auth()->user();
    
        $user = $auth_user->hasRole('provider') ? $auth_user->eProviders->first()->users->pluck('name', 'id') : $this->userRepository->getByCriteria(new EProvidersCustomersCriteria())->pluck('name', 'id');
       
        // $user = $this->userRepository->getByCriteria(new EProvidersCustomersCriteria())->pluck('name', 'id');
        $address = $this->addressRepository->getByCriteria(new AddressesOfUserCriteria(auth()->id()))->pluck('address', 'id');
        $tax = $this->taxRepository->pluck('name', 'id');
        $usersSelected = $eProvider->users()->pluck('users.id')->toArray();
        $addressesSelected = $eProvider->addresses()->pluck('addresses.id')->toArray();
        $taxesSelected = $eProvider->taxes()->pluck('taxes.id')->toArray();
        $availabilityHour = $this->availabilityHourRepository->findByField('e_provider_id', $id);
        $customFieldsValues = $eProvider->customFieldsValues()->with('customField')->get();
        $customFields = $this->customFieldRepository->findByField('custom_field_model', $this->eProviderRepository->model());
        $hasCustomField = in_array($this->eProviderRepository->model(), setting('custom_field_models', []));
        if ($hasCustomField) {
            $html = generateCustomField($customFields, $customFieldsValues);
        }

        $languageSelected = json_decode($eProvider->spoken_languages );
        // return $eProvider;
        
        return view('e_providers.edit')->with('eProvider', $eProvider)->with('availabilityHour', $availabilityHour)->with('languageSelected', $languageSelected)
         ->with("customFields", isset($html) ? $html : false)->with("eProviderType", $eProviderType)->with("user", $user)->with("usersSelected", $usersSelected)->with("address", $address)->with("addressesSelected", $addressesSelected)->with("tax", $tax)->with("taxesSelected", $taxesSelected);
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
        $this->eProviderRepository->pushCriteria(new EProvidersOfUserCriteria(auth()->id()));
        $oldEProvider = $this->eProviderRepository->findWithoutFail($id);
        //   return $id;
        if (empty($oldEProvider)) {
            Flash::error(__('lang.not_found', ['operator' => __('lang.e_provider')]));
            return redirect(route('eProviders.index'));
        }
        $input = $request->all();
        
        // dd($request['spoken_languages']);

        $customFields = $this->customFieldRepository->findByField('custom_field_model', $this->eProviderRepository->model());
        try {
            $input['users'] = isset($input['users']) ? $input['users'] : [];
            $input['addresses'] = isset($input['addresses']) ? $input['addresses'] : [];
            $input['taxes'] = isset($input['taxes']) ? $input['taxes'] : [];
            //  return  $input;
            $eProvider = $this->eProviderRepository->update($input, $id);
            
            // return $eProvider;
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
            event(new EProviderChangedEvent($eProvider, $oldEProvider));
        } catch (ValidatorException $e) {
            Flash::error($e->getMessage());
        }
        if($request->accepted && $request->accepted == 1 && $oldEProvider->accepted !=1){
            Notification::send( $eProvider->users, new ProviderAcceptance($eProvider->name));
        }
        Flash::success(__('lang.updated_successfully', ['operator' => __('lang.e_provider')]));
        // return $eProvider;

        return redirect(route('eProviders.index'));
    }

    /**
     * Remove the specified EProvider from storage.
     *
     * @param int $id
     *
     * @return Application|RedirectResponse|Redirector|Response
     * @throws RepositoryException
     */
    public function destroy(int $id)
    {
        if (config('installer.demo_app')) {
            Flash::warning('This is only demo app you can\'t change this section ');
            return redirect(route('eProviders.index'));
        }
        $this->eProviderRepository->pushCriteria(new EProvidersOfUserCriteria(auth()->id()));
        $eProvider = $this->eProviderRepository->findWithoutFail($id);

        if (empty($eProvider)) {
            Flash::error(__('lang.not_found', ['operator' => __('lang.e_provider')]));

            return redirect(route('eProviders.index'));
        }

        $this->eProviderRepository->delete($id);

        Flash::success(__('lang.deleted_successfully', ['operator' => __('lang.e_provider')]));

        return redirect(route('eProviders.index'));
    }

    /**
     * Remove Media of EProvider
     * @param Request $request
     */
    public function removeMedia(Request $request)
    {
        $input = $request->all();
        $eProvider = $this->eProviderRepository->findWithoutFail($input['id']);
        try {
            if ($eProvider->hasMedia($input['collection'])) {
                $eProvider->getFirstMedia($input['collection'])->delete();
            }
        } catch (Exception $e) {
            Log::error($e->getMessage());
        }
    }

   /**
    * edit Tabs
    */
    public function editGallery(int $id)
    {
        
        $eProvider = $this->eProviderRepository->pushCriteria(new EProvidersOfUserCriteria(auth()->id()))->findWithoutFail($id);
        if(empty($eProvider)){
            Flash::error(__('lang.not_found', ['operator' => __('lang.e_provider')]));
            return redirect(route('eProviders.index'));
        }
        $eProvider->load('galleries');
        $galleries= $eProvider->galleries;

    //     $this->galleryRepository->pushCriteria(new GalleriesOfProviderCriteria($id));
    //    $galleries = $this->galleryRepository->all();
    
        
        return view('galleries.noGallery')->with("eProvider", $eProvider)->with("galleries", $galleries);
    }


    public function editAward(int $id)
    {
    
        $eProvider = $this->eProviderRepository->pushCriteria(new EProvidersOfUserCriteria(auth()->id()))->findWithoutFail($id);
        if(empty($eProvider)){
            Flash::error(__('lang.not_found', ['operator' => __('lang.e_provider')]));
            return redirect(route('eProviders.index'));
        }
        $eProvider->load('awards');
         $awards= $eProvider->awards;
        return view('awards.noAward')->with("eProvider", $eProvider)->with("awards", $awards);
    }
    public function editHour(int $id)
    {
    
        $eProvider = $this->eProviderRepository->pushCriteria(new EProvidersOfUserCriteria(auth()->id()))->findWithoutFail($id);
        if(empty($eProvider)){
            Flash::error(__('lang.not_found', ['operator' => __('lang.e_provider')]));
            return redirect(route('eProviders.index'));
        }
        $availabilityhours= $eProvider->availabilityhours; 
        return view('availability_hours.noHours')->with("eProvider", $eProvider)->with('availabilityhours',$availabilityhours);
    }
    public function editExp(int $id)
    {
    
        $eProvider = $this->eProviderRepository->pushCriteria(new EProvidersOfUserCriteria(auth()->id()))->findWithoutFail($id);
        if(empty($eProvider)){
            Flash::error(__('lang.not_found', ['operator' => __('lang.e_provider')]));
            return redirect(route('eProviders.index'));
        }
        $eProvider->load('experiences');
         $experiences= $eProvider->experiences;
        return view('experiences.noExperiences')->with("eProvider", $eProvider)->with("experiences", $experiences);
    }

    public function editService(int $id)
    {
    
        $eProvider = $this->eProviderRepository->pushCriteria(new EProvidersOfUserCriteria(auth()->id()))->findWithoutFail($id);
        
        if(empty($eProvider)){
            Flash::error(__('lang.not_found', ['operator' => __('lang.e_provider')]));
            return redirect(route('eProviders.index'));
        }
        $eProvider->load('eServices');
        $eServices= $eProvider->eServices;
        $category = $this->categoryRepository->pluck('name', 'id');
        // $categoriesSelected = $eService->categories()->pluck('categories.id')->toArray();
        $categoriesSelected = [];

        // return 88;
        for($i=0;$i<count($eServices);$i++)
        {
            $categoriesSelected[$i]= $eServices[$i]->categories()->pluck('categories.id')->toArray();
        }
        return view('e_services.noeServices')->with("eProvider", $eProvider)->with("eServices", $eServices)->with("category", $category)->with("categoriesSelected", $categoriesSelected);
    }
   
}
