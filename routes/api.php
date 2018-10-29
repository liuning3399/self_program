<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/
Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
Route::get('test', function () {
    return 'hello world';
});
$api=app('Dingo\Api\Routing\Router');
APIRoute::version('v1',function($api){
    $api->group(['namespace'=>'App\Api\Controllers'],function ($api){
        $api->resource('agentFans','AgentFansController');
        $api->resource('weather','WeatherController');//天气API接口
    });
});
