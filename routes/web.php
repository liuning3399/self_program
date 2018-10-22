<?php

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

//Route::get('/', function () {
//    return view('welcome');
//});
Route::get('/test2', 'Test\CunliangController@test2')->name('test2');

Route::get('/test', 'Test\CunliangController@test')->name('test');

Route::get('/pack', 'PackController@index');
//学习资料路由
Route::get('/study', 'PackController@study');
Route::get('/about', 'PackController@about');
//redis测试
Route::get('testRedis','RedisController@testRedis')->name('testRedis');
//博客
Route::get('/','Blogs\WelcomeController@index');


