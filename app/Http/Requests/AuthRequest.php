<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AuthRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */

    public function rules(): array
    {
        $routeName = $this->route()->getName();
        if($routeName === 'auth.login'){
            return [
                'username' => 'required|regex:/^[a-zA-Z0-9]*$/',
                'password' => 'required',
            ];
        }
        if($routeName === 'auth.register'){
            return [
                'name' => 'required',
                'email' => 'required|email|unique:users,email',
                'username' => 'required|regex:/^[a-zA-Z0-9]*$/',
                'password' => 'required',
                'terms' => 'required',
            ];
        }
    }
     public function messages(): array
    {
        return [
            'name.required' => 'Bạn chưa nhận tên',
            'email.required' => 'Bạn chưa nhập địa chỉ email',
            'email.email' => 'Đại chỉ email không hợp lệ',
            'email.unique' => 'Địa chỉ email đã được sử dụng',
            'username.required' => 'Bạn chưa nhập tài khoản.',
            'username.regex' => 'Tài khoản không được chứa khoảng trắng hoặc dấu.',
            'username.unique' => 'Tài khoản đã tồn tại',
            'password.required' => 'Bạn chưa nhập mật khẩu.',
            'terms.required' => 'Bạn phải đồng ý với các điều khoản và chính sách.',
        ];
    }
}
