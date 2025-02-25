<?php

namespace App\Notifications;

use Illuminate\Bus\Queueable;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Notifications\Notification;

class ProviderAcceptance extends Notification
{
    use Queueable;

    private $providerName;
   

    /**
     * Create a new notification instance.
     *
     * @return void
     */
    public function __construct($providerName )
    {
        $this->providerName = $providerName;
    }

    /**
     * Get the notification's delivery channels.
     *
     * @param mixed $notifiable
     * @return array
     */
    public function via($notifiable)
    {
        return ['mail'];
    }

    /**
     * Get the mail representation of the notification.
     *
     * @param mixed $notifiable
     * @return MailMessage
     */
    public function toMail($notifiable)
    {
        return (new MailMessage)
        ->line('Congratulations, You can log in We Servio system and add your services.')
        ->markdown("notifications::accept_provider", ['provider_name' => $this->providerName])
        ->action('Login Now', route('login'));

    }

    /**
     * Get the array representation of the notification.
     *
     * @param mixed $notifiable
     * @return array
     */
    public function toArray($notifiable)
    {
        return [
            //
        ];
    }
}
