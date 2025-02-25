<?php

namespace App\Notifications;

use App\Models\User;
use Illuminate\Bus\Queueable;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Notifications\Notification;

class NewRegistration extends Notification
{
    use Queueable;

     /**
     * @var User
     */
    private $user;
    private $superAdmin;

    /**
     * Create a new notification instance.
     *
     * @return void
     */
    public function __construct(User $user ,$superAdmin)
    {
        $this->user = $user;
        $this->superAdmin = $superAdmin;


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
        ->line('New Registration from user '.$this->user->name)
        ->markdown("notifications::register", ['user' => $this->user ,'superAdmin' => $this->superAdmin]);

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
