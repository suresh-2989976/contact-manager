<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\AuthController;

// Route::get('/', function () {
//     return view('welcome');
// });
Route::get('/', [AuthController::class, 'showLoginForm'])->name('user.login');
Route::post('/login', [AuthController::class, 'login'])->name('login');
Route::get('/logout', [AuthController::class, 'logout'])->name('logout');
Route::resource('contacts', ContactController::class);
Route::post('/contacts/import', [ContactController::class, 'import'])->name('contacts.import');