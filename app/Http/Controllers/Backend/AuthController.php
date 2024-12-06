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

    public function login(AuthRequest $request)
    {
        $username = $request->input('username');
        $password = $request->input('password');
        
        // Tìm người dùng với username phân biệt hoa và thường
        $user = User::whereRaw('BINARY username = ?', [$username])->first();

        if ($user && Hash::check($password, $user->password)) {
            Auth::login($user);
            $request->session()->regenerate();
            return redirect()->route('homepage.index')->with('success', 'Đăng nhập thành công');
        }

        return redirect()->route('auth.loginform')->with('error', 'Tài khoản hoặc mật khẩu không chính xác');
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

        return redirect()->route('auth.loginform')->with('success', 'Đăng ký thành công');
    }

    public function logout()
    {
        Auth::logout();
        return redirect()->route('homepage.index');
    }
}