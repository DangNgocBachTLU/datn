<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Auth;

class UserController extends Controller
{
    public function __construct(){

    }

    public function index()
    {
        $user = Auth::user();
        return view('account.profile', compact('user'));
    }

    public function edit()
    {
        $user = Auth::user();
        return view('account.edit', compact('user'));
    }

    public function update(Request $request)
    {
        // dd($request->all());
        $user = Auth::user();

        $user->update($request->only('name', 'phone', 'address', 'gender'));

        return redirect()->route('account.profile')->with('success', 'Cập nhật thông tin thành công!');
    }

}