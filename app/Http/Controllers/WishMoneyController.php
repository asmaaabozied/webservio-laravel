<?php
/*
 * File name: WishMoneyController.php
 * Last modified: 2021.02.19 at 21:16:19
 * Author: SmarterVision - https://codecanyon.net/user/smartervision
 * Copyright (c) 2021
 */

namespace App\Http\Controllers;

use Exception;
use Flash;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Routing\Redirector;
use Srmklive\PayPal\Services\ExpressCheckout;

class WishMoneyController extends ParentBookingController
{
    /**
     * @var ExpressCheckout
     */
    protected $provider;

    public function __init()
    {
       // $this->provider = new ExpressCheckout();

    }

    public function index()
    {
        return view('home');
    }

    /**
     * @param Request $request
     *
     * @return RedirectResponse|Redirector
     */
    public function checkout(Request $request)
    {
		
			
       $this->booking = $this->bookingRepository->findWithoutFail($request->get('booking_id'));
        if (empty($this->booking)) {
            Flash::error("Error processing wishmoney payment for your booking");
            return redirect(route('payments.failed'));
        }
       // return $this->booking;
         $data=$this->getCheckoutData();
         
        return view('payment_methods.wish_money')
        ->with( 'booking' , $this->booking)
        ->with('price',$data['total']);
	
    }

    /**
     * Set cart data for processing payment on PayPal.
     *
     *
     * @return array
     */
    private function getCheckoutData(): array
    {
        $data = [];
        $data['items'][] = [
            'name' => $this->booking->e_service->name,
            'price' => round($this->booking->getTotal(), 2),
            'qty' => 1,
        ];
        $data['total'] = round($this->booking->getTotal(), 2);
        $data['return_url'] = url("payments/wishmoney/pay-success?booking_id={$this->booking->id}");
        $data['cancel_url'] = url('payments/wishmoney');
        $data['invoice_id'] = $this->booking->id . '_' . date("Y_m_d_h_i_sa");
        $data['invoice_description'] = $this->booking->hint;
        return $data;
    }

    /**
     * Process payment on Whish Money.
     *
     * @param Request $request
     *
     * @return RedirectResponse
     * @throws Exception
     */
    public function paySuccess(Request $request): RedirectResponse
    {
       return 'hi';
    }
}
