<?php

namespace App\Api\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Dingo\Api\Routing\Helpers;


class WeatherController extends BaseController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    // 天气API接口稳定的确实没有，除非是天气官方提供的， 但是我观察了下，要是合作伙伴才有开放的可能。
    // 其他的，例如：百度 APIStore、一些同学在其他网站上抓包下来的接口，以及什么各种收费的 API，都没有稳定的。
    // 现在，我们网站收集了8个天气接口，采用微服务的方式提供出来，响应效率高，可以达到不限制次数。关键是免费的，而且会提供XML和JSON两种方式返回
    // 接口返回的天气指数数据很全面，如：温度、最高温度、最低温度、风、天气、空气质量指数。
    // 参数只有一个，就是city，city在传参的时候，支持的城市可以带上市、县、区之类，如：深圳市、顺德区、长沙市、长沙等等
    public function index()
    {
        $cityId = "101030100";
        $url ="http://t.weather.sojson.com/api/weather/city/".$cityId; 

        $curl = curl_init();
        //设置选项，包括URL
        curl_setopt($curl, CURLOPT_URL, $url);
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($curl, CURLOPT_HEADER, 0);

        //执行并获取HTML文档内容
        $data = curl_exec($curl);
        //释放curl句柄
        curl_close($curl);
        return $data;
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
