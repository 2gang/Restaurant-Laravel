<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\MenuController;
use App\Http\Controllers\KindController;
use App\Http\Controllers\MajorController;
use App\Http\Controllers\CookController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('main');
});

Route::resource('menu', MenuController::class);
Route::resource('kind', KindController::class);
Route::resource('major', MajorController::class);
Route::resource('cook', CookController::class);

