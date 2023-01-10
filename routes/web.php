<?php

use App\Models\Listing;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ListingController;

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

//All Listings
Route::get('/', [ListingController::class, 'index'])->name('home');


//Show Create Form
Route::get('listings/create', [ListingController::class, 'create']);

//Store Listing Data
Route::post('listings', [ListingController::class, 'store']);

//Single Listing (this route must be at the end of the list of routes)
Route::get('listings/{listing}', [ListingController::class, 'show']);
