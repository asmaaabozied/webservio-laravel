<?php

namespace App\Mail;

use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use App\Models\Booking; // Replace with your Booking model

class BookingDetails extends Mailable
{
    use SerializesModels;

    public $booking;

    /**
     * Create a new message instance.
     *
     * @param $booking
     * @return void
     */
    public function __construct($booking)
    {
        $this->booking = $booking;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
            return $this->from('','We Servio')->view('mails.BookingDetailsMail');
    }
}
