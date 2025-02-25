<?php
/*
 * File name: CreateEProviderRequest.php
 * Last modified: 2021.03.20 at 21:56:44
 * Author: SmarterVision - https://codecanyon.net/user/smartervision
 * Copyright (c) 2021
 */

namespace App\Http\Requests;

use App\Models\EProvider;
use Illuminate\Foundation\Http\FormRequest;

class CreateEProviderRequest extends FormRequest
{

    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules(): array
    {
        if(!auth()->user()->hasRole(['provider', 'customer'])){
            return EProvider::$rules + ['users'=>'required'];

        }
        return EProvider::$rules;
    }

    /**
     * @return array
     */
    public function validationData(): array
    {
        if (!auth()->user()->hasRole('admin') || auth()->user()->hasRole('super admin')) {
            $this->offsetUnset('accepted');
        }
        return parent::validationData();
    }

    function messages() {
        return [
            'users.required' => 'Employees field is required.'
        ];
    }
}
