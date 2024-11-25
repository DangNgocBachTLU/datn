<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests\AuthRequest;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\Models\User;

class AuthController extends Controller
{
    public function __construct(){

    }

    public function loginform(){
        return view('auth.login');
    }

    public function registerform(){
        return view('auth.register');
    }

    public function login(AuthRequest $request){
        $credentials = [
            'username' => $request->input('username'),
            'password' => $request->input('password'),
        ];
        if (Auth::attempt($credentials)) {
            // $request->session()->regenerate();
 
            // return redirect()->intended('dashboard');
            return redirect()->route('homepage.index')->with('success','Đăng nhập thành công');
        }
        else
            return redirect()->route('auth.loginform')->with('error','Tài khoản hoặc mật khẩu không chính xác');
    }

    public function register(AuthRequest $request)
    {
        $validated = $request->validated();

        $user = User::create([
            'name' => $validated['name'],
            'email' => $validated['email'],
            'username' => $validated['username'],
            'password' => Hash::make($validated['password']),
        ]);

        return redirect()->route('auth.loginform')->with('error', 'Đăng ký thành công thành công');
    }

    public function logout()
    {
        Auth::logout();
        return redirect()->route('homepage.index');
    }
}