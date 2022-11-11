<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\AdminDashboardController;
use App\Http\Controllers\CategoryCOntroller;
use App\Http\Controllers\ProductController;

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

Route::get('/', [HomeController::class,'index'])->name('home');
Route::get('/product-details/{id}', [HomeController::class,'productDetails'])->name('product-details');
Route::post('/add-to-cart/{id}', [HomeController::class,'addToCart'])->name('add-to-cart');
Route::get('/show-cart', [HomeController::class,'showCart'])->name('show-cart');


Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified'
])->group(function () {
    Route::get('/dashboard', [AdminDashboardController::class,'index'])->name('dashboard')->middleware('is_admin');
    Route:: resource('categories',CategoryCOntroller::class);
    Route:: resource('products',ProductController::class);


});
Route::get('/redirect',[HomeController::class,'redirect']);

