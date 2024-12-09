<?php

use Illuminate\Support\Facades\Route;
use \App\Http\Controllers\Backend\AuthController;
use \App\Http\Controllers\Backend\HomepageController;
use \App\Http\Controllers\Backend\UserController;
use \App\Http\Controllers\Backend\TestController;
use \App\Http\Controllers\Backend\AdminController;
use \App\Http\Controllers\Backend\QuestionController;

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

//User
Route::get('/', [HomepageController::class,'index'])->name('user.homepage.index');

Route::get('login/form/', [AuthController::class, 'loginform'])->name('user.auth.loginform');
Route::post('login/', [AuthController::class, 'login'])->name('user.auth.login');

Route::get('register/form/', [AuthController::class, 'registerform'])->name('user.auth.registerform');
Route::post('register/', [AuthController::class, 'register'])->name('user.auth.register');

Route::post('logout/', [AuthController::class, 'logout'])->name('user.auth.logout');

Route::get('profile/', [UserController::class, 'index'])->name('user.account.profile');
Route::get('edit/{id}', [UserController::class, 'edit'])->name('user.account.edit');
Route::put('update/', [UserController::class, 'update'])->name('user.account.update');

Route::get('list/', [TestController::class, 'index'])->name('user.test.list');
Route::get('practice/{id}/', [TestController::class, 'show'])->name('user.test.practice');
Route::post('submit/{id}', [TestController::class, 'submit'])->name('user.test.submit');
Route::get('history/', [TestController::class, 'history'])->name('user.test.history');
Route::get('search/', [TestController::class, 'search'])->name('user.test.search');

//Admin
Route::get('admin/', [AdminController::class, 'index'])->name('admin.index');
Route::post('admin/login/', [AdminController::class, 'login'])->name('admin.login');
Route::get('dashboard/', [AdminController::class, 'dashboard'])->name('admin.dashboard');

Route::get('user/list/', [UserController::class,'show'])->name('admin.user.list');

Route::get('question/list/', [QuestionController::class,'index'])->name('admin.question.list');
Route::get('question/create/', [QuestionController::class, 'create'])->name('admin.question.create');
Route::post('question/store/', [QuestionController::class, 'store'])->name('admin.question.store');
Route::get('question/edit/{id}/', [QuestionController::class, 'edit'])->name('admin.question.edit');
Route::put('question/update/{id}', [QuestionController::class, 'update'])->name('admin.question.update');
Route::delete('question/delete/{id}', [QuestionController::class, 'destroy'])->name('admin.question.delete');

Route::get('test/list/', [TestController::class,'index'])->name('admin.test.list');
Route::get('test/create/', [TestController::class, 'create'])->name('admin.test.create');