<?php

namespace App\Notifications;

use App\Models\User;
use Illuminate\Bus\Queueable;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Notifications\Notification;

class CustomerRegistration extends Notification
{
    use Queueable;

     /**
     * @var User
     */
    private $user;
    private $user_name;

    /**
     * Create a new notification instance.
     *
     * @return void
     */
    public function __construct(User $user ,$user_name)
    {
        $this->user = $user;
        $this->user_name = $user_name;


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
        ->line('Welcom to We Servio.')
        ->markdown("notifications::register", ['user' => $this->user ,'superAdmin' => $this->user_name]);

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
