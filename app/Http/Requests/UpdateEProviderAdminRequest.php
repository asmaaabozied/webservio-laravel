<?php
namespace App\Http\Requests;

use App\Models\User;
use Illuminate\Contracts\Validation\Validator;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\ValidationException;
use InfyOm\Generator\Utils\ResponseUtil;

class UpdateEProviderAdminRequest extends FormRequest
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
        if ($this->has('device_token')) {
            return ['device_token' => 'required|max:255'];
        }
        User::$rules['email'] = 'required|max:255|email|unique:users,email,' . $this->route('e_ProviderAdmin');
        User::$rules['phone_number'] = 'required|max:255|unique:users,phone_number,' . $this->route('e_ProviderAdmin');
        User::$rules['password'] = 'nullable';
        return User::$rules;
    }

    /**
     * Handle a failed validation attempt.
     *
     * @param Validator $validator
     * @return void
     *
     * @throws ValidationException
     */
    protected function failedValidation(Validator $validator)
    {
        if ($this->isJson()) {
            $errors = array_values($validator->errors()->getMessages());
            $errorsResponse = ResponseUtil::makeError($errors);
            throw new ValidationException($validator, response()->json($errorsResponse));
        } else {
            throw (new ValidationException($validator))
                ->errorBag($this->errorBag)
                ->redirectTo($this->getRedirectUrl());
        }

    }
}
