<?php
/*
 * File name: web.php
 * Last modified: 2021.11.02 at 13:04:47
 * Author: SmarterVision - https://codecanyon.net/user/smartervision
 * Copyright (c) 2021
 */

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::prefix('eprovider')->group(function () {
    Route::get('register', 'Eprovider\EProviderRegisterController@register');
    Route::post('handle-register', 'Eprovider\EProviderRegisterController@handleRegister');
});



Route::get('login/{service}', 'Auth\LoginController@redirectToProvider');
Route::get('login/{service}/callback', 'Auth\LoginController@handleProviderCallback');
Auth::routes();

Route::get('payments/failed', 'PayPalController@index')->name('payments.failed');
Route::get('payments/razorpay/checkout', 'RazorPayController@checkout');
Route::post('payments/razorpay/pay-success/{bookingId}', 'RazorPayController@paySuccess');
Route::get('payments/razorpay', 'RazorPayController@index');

Route::get('payments/stripe/checkout', 'StripeController@checkout');
Route::get('payments/stripe/pay-success/{bookingId}/{paymentMethodId}', 'StripeController@paySuccess');
Route::get('payments/stripe', 'StripeController@index');

Route::get('payments/paymongo/checkout', 'PayMongoController@checkout');
Route::get('payments/paymongo/processing/{bookingId}/{paymentMethodId}', 'PayMongoController@processing');
Route::get('payments/paymongo/success/{bookingId}/{paymentIntentId}', 'PayMongoController@success');
Route::get('payments/paymongo', 'PayMongoController@index');

Route::get('payments/stripe-fpx/checkout', 'StripeFPXController@checkout');
Route::get('payments/stripe-fpx/pay-success/{bookingId}', 'StripeFPXController@paySuccess');
Route::get('payments/stripe-fpx', 'StripeFPXController@index');

Route::get('payments/flutterwave/checkout', 'FlutterWaveController@checkout');
Route::get('payments/flutterwave/pay-success/{bookingId}/{transactionId}', 'FlutterWaveController@paySuccess');
Route::get('payments/flutterwave', 'FlutterWaveController@index');

Route::get('payments/paystack/checkout', 'PayStackController@checkout');
Route::get('payments/paystack/pay-success/{bookingId}/{reference}', 'PayStackController@paySuccess');
Route::get('payments/paystack', 'PayStackController@index');

Route::get('payments/paypal/express-checkout', 'PayPalController@getExpressCheckout')->name('paypal.express-checkout');
Route::get('payments/paypal/express-checkout-success', 'PayPalController@getExpressCheckoutSuccess');
Route::get('payments/paypal', 'PayPalController@index')->name('paypal.index');

Route::get('payments/wishmoney/checkout', 'WishMoneyController@checkout')->name('wishmoney.checkout');
Route::get('payments/wishmoney/pay-success', 'WishMoneyController@paySuccess');
Route::get('payments/wishmoney', 'WishMoneyController@index')->name('wishmoney.index');

Route::get('firebase/sw-js', 'AppSettingController@initFirebase');


Route::get('storage/app/public/{id}/{conversion}/{filename?}', 'UploadController@storage');
Route::middleware(['auth'])->group(function () {
    Route::get('logs', '\Rap2hpoutre\LaravelLogViewer\LogViewerController@index');
    Route::get('/', 'DashboardController@index')->name('dashboard');

    Route::post('uploads/store', 'UploadController@store')->name('medias.create');
    Route::get('users/profile', 'UserController@profile')->name('users.profile');
    Route::post('users/remove-media', 'UserController@removeMedia');
    Route::resource('users', 'UserController');
    Route::get('employees', 'UserController@getEmployees')->name('employees.index');
    Route::resource('customers', 'CustomerController');
    Route::resource('e_ProviderAdmins', 'EProviderAdminController');

    Route::get('dashboard', 'DashboardController@index')->name('dashboard');

    Route::group(['middleware' => ['permission:medias']], function () {
        Route::get('uploads/all/{collection?}', 'UploadController@all');
        Route::get('uploads/collectionsNames', 'UploadController@collectionsNames');
        Route::post('uploads/clear', 'UploadController@clear')->name('medias.delete');
        Route::get('medias', 'UploadController@index')->name('medias');
        Route::get('uploads/clear-all', 'UploadController@clearAll');
    });

    Route::group(['middleware' => ['permission:permissions.index']], function () {
        Route::get('permissions/role-has-permission', 'PermissionController@roleHasPermission');
        Route::get('permissions/refresh-permissions', 'PermissionController@refreshPermissions');
    });
    Route::group(['middleware' => ['permission:permissions.index']], function () {
        Route::post('permissions/give-permission-to-role', 'PermissionController@givePermissionToRole');
        Route::post('permissions/revoke-permission-to-role', 'PermissionController@revokePermissionToRole');
    });

    Route::group(['middleware' => ['permission:app-settings']], function () {
        Route::prefix('settings')->group(function () {
            Route::resource('permissions', 'PermissionController');
            Route::resource('roles', 'RoleController');
            Route::resource('customFields', 'CustomFieldController');
            Route::resource('currencies', 'CurrencyController')->except([
                'show'
            ]);
            Route::resource('taxes', 'TaxController')->except([
                'show'
            ]);
            Route::get('users/login-as-user/{id}', 'UserController@loginAsUser')->name('users.login-as-user');
            Route::patch('update', 'AppSettingController@update');
            Route::patch('translate', 'AppSettingController@translate');
            Route::get('sync-translation', 'AppSettingController@syncTranslation');
            Route::get('clear-cache', 'AppSettingController@clearCache');
            Route::get('check-update', 'AppSettingController@checkForUpdates');
            // disable special character and number in route params
            Route::get('/{type?}/{tab?}', 'AppSettingController@index')
                ->where('type', '[A-Za-z]*')->where('tab', '[A-Za-z]*')->name('app-settings');
        });
    });

    Route::resource('eProviderTypes', 'EProviderTypeController')->except([
        'show'
    ]);
    Route::post('eProviders/remove-media', 'EProviderController@removeMedia');
    Route::get('eProvider/edit-gallery/{eproviderid}', 'EProviderController@editGallery')->name('eProvider.edit-gallery');
    Route::get('eProvider/edit-award/{eproviderid}', 'EProviderController@editAward')->name('eProvider.edit-award');
    Route::get('eProvider/edit-exp/{eproviderid}', 'EProviderController@editExp')->name('eProvider.edit-exp');
    Route::get('eProvider/edit-hour/{eproviderid}', 'EProviderController@editHour')->name('eProvider.edit-hour');
    Route::get('eProvider/edit-service/{eproviderid}', 'EProviderController@editService')->name('eProvider.edit-service');

    Route::resource('eProviders', 'EProviderController')->except([
        'show'
    ]);

    Route::get('requestedEProviders', 'EProviderController@requestedEProviders')->name('requestedEProviders.index');

    Route::resource('addresses', 'AddressController')->except([
        'show'
    ]);
    Route::resource('awards', 'AwardController');
    Route::resource('experiences', 'ExperienceController');

    Route::resource('availabilityHours', 'AvailabilityHourController')->except([
        'show'
    ]);
    Route::post('eServices/remove-media', 'EServiceController@removeMedia');
    Route::resource('eServices', 'EServiceController')->except([
        'show'
    ]);
    Route::resource('faqCategories', 'FaqCategoryController')->except([
        'show'
    ]);
    Route::post('categories/remove-media', 'CategoryController@removeMedia');
    Route::resource('categories', 'CategoryController')->except([
        'show'
    ]);
    Route::resource('bookingStatuses', 'BookingStatusController')->except([
        'show',
    ]);
    Route::post('galleries/remove-media', 'GalleryController@removeMedia');
    Route::get('galleries/all', 'GalleryController@all');
    Route::resource('galleries', 'GalleryController')->except([
        'show'
    ]);
    Route::post('videos/remove-video', 'VideoController@removeVideo');
    Route::resource('videos', 'VideoController')->except([
        'show'
    ]);

    Route::resource('eServiceReviews', 'EServiceReviewController')->except([
        'show'
    ]);
    Route::resource('payments', 'PaymentController')->except([
        'create', 'store', 'edit', 'update', 'destroy'
    ]);
    Route::post('paymentMethods/remove-media', 'PaymentMethodController@removeMedia');
    Route::resource('paymentMethods', 'PaymentMethodController')->except([
        'show'
    ]);
    Route::resource('paymentStatuses', 'PaymentStatusController')->except([
        'show'
    ]);
    Route::resource('faqs', 'FaqController')->except([
        'show'
    ]);
    Route::resource('favorites', 'FavoriteController')->except([
        'show'
    ]);
    Route::resource('notifications', 'NotificationController')->except([
        'create', 'store', 'update', 'edit',
    ]);
    Route::resource('bookings', 'BookingController');

    Route::resource('earnings', 'EarningController')->except([
        'show', 'edit', 'update'
    ]);

    Route::get('eProviderPayouts/create/{id}', 'EProviderPayoutController@create')->name('eProviderPayouts.create');
    Route::resource('eProviderPayouts', 'EProviderPayoutController')->except([
        'show', 'edit', 'update', 'create'
    ]);
    Route::resource('optionGroups', 'OptionGroupController')->except([
        'show'
    ]);
    Route::post('options/remove-media', 'OptionController@removeMedia');
    Route::resource('options', 'OptionController')->except([
        'show'
    ]);
    Route::resource('coupons', 'CouponController')->except([
        'show'
    ]);
    Route::post('slides/remove-media', 'SlideController@removeMedia');
    Route::resource('slides', 'SlideController')->except([
        'show'
    ]);
    Route::resource('customPages', 'CustomPageController');

    Route::resource('wallets', 'WalletController')->except([
        'show'
    ]);
    Route::resource('walletTransactions', 'WalletTransactionController')->except([
        'show', 'edit', 'update', 'destroy'
    ]);
});
