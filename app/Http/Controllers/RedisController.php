<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redis;
use App\Model\admin\Study_info;


class RedisController extends Controller
{
    //
    public function testRedis()
    {
        Redis::set('name', 'guwenjie');
        $values = Redis::get('name');
        //输出："guwenjie"
        //加一个小例子比如网站首页某个人员或者某条新闻日访问量特别高，可以存储进redis，减轻内存压力
        $userinfo = Study_info::all();
        Redis::set('user_key',$userinfo);
        if(Redis::exists('user_key')){
            $values = Redis::get('user_key');
        }else{
            $values = Study_info::all();//此处为了测试你可以将id=1200改为另一个id
        }
        $mkv = array(
            'usr:0001' => 'First user',
            'usr:0002' => 'Second user',
            'usr:0003' => 'Third user'
        );
        Redis::mset($mkv);  // 存储多个 key 对应的 value
        Redis::mget (array_keys( $mkv));  //获取多个key对应的value

        dump($values);

    }
}
