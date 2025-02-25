<?php

namespace App\Mail;

use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use App\Models\Booking; // Replace with your Booking model

class BookingConfirmation extends Mailable
{
    use SerializesModels;

    public $booking;

    /**
     * Create a new message instance.
     *
     * @param Booking $booking
     * @return void
     */
    public function __construct(Booking $booking)
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
        // Define email subject, view, and data
        return $this->subject('Booking Confirmation')
            ->view('emails.booking_confirmation')
            ->with([
                'booking' => $this->booking,
            ]);
    }
}
