<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/', 'Frontend\\BookController@index')->name('home');
Route::get('/category/{category}', 'Frontend\\CategoryController@index')->name('category.index');
Route::get('/book/{book}', 'Frontend\\BookController@show')->name('book.show');
Route::post('/book/{book}/borrow', 'Frontend\\BookController@borrow')->name('book.borrow')->middleware('auth', 'verified');
Route::post('/book/search', 'Frontend\\BookController@search')->name('book.search');

Auth::routes(['verify' => true]);

Route::get('/borrowed', 'Frontend\\BookController@borrowed')->name('borrowed')->middleware('auth', 'verified');
