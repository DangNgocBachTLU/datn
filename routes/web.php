<?php

use Illuminate\Support\Facades\Route;
use \App\Http\Controllers\Backend\AuthController;
use \App\Http\Controllers\Backend\HomepageController;
use \App\Http\Controllers\Backend\UserController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/', [HomepageController::class,'index'])->name('homepage.index');

Route::get('loginform', [AuthController::class, 'loginform'])->name('auth.loginform');
Route::post('login', [AuthController::class, 'login'])->name('auth.login');

Route::get('registerform', [AuthController::class, 'registerform'])->name('auth.registerform');
Route::post('register', [AuthController::class, 'register'])->name('auth.register');

Route::post('logout', [AuthController::class, 'logout'])->name('auth.logout');

Route::get('profile', [UserController::class, 'profile'])->name('account.profile');
Route::get('edit', [UserController::class, 'edit'])->name('account.edit');
Route::put('update', [UserController::class, 'update'])->name('account.update');
