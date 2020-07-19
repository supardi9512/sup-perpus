<?php

Route::get('/', 'HomeController@index')->name('dashboard');

Route::get('/category/data', 'DataController@categories')->name('category.data');
Route::get('/book/data', 'DataController@books')->name('book.data');
Route::get('/borrow/data', 'DataController@borrows')->name('borrow.data');
Route::get('/user/data', 'DataController@users')->name('user.data');

Route::resource('category', 'CategoryController');
Route::resource('book', 'BookController');

Route::get('borrow', 'BorrowController@index')->name('borrow.index');
Route::put('borrow/{borrowHistory}/return', 'BorrowController@returnBook')->name('borrow.return');

Route::resource('user', 'UserController');
