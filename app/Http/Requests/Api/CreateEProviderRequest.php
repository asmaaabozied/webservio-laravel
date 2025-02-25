<?php
/*
 * File name: UpdateUserRequest.php
 * Last modified: 2021.11.07 at 11:59:29
 * Author: SmarterVision - https://codecanyon.net/user/smartervision
 * Copyright (c) 2021
 */

namespace App\Http\Requests\Api;

use Illuminate\Contracts\Validation\Validator;
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
        return [
            'name' => 'required|max:127',
            'userId' => 'required|exists:users,id',
            'phone_number' => 'max:50',
            'mobile_number' => 'max:50',
            'availability_range' => 'required|max:9999999,99|min:0',
            // 'day' => 'required|max:16',
            // 'start_at' => 'required|date_format:H\:i',
            // 'end_at' => 'required|date_format:H\:i|after:start_at',
            'data' => 'max:255',
        ];
    }
}
