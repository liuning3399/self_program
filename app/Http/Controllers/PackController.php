<?php

namespace App\Http\Controllers;

use App\Jobs\ticketTest;
use Illuminate\Http\Request;
use DB;
use App\Model\admin\Study_info;

class PackController extends Controller
{
    //
    public function index(){
        //
        //dispatch( new ticketTest()->onConnection("redis"));
        //dispatch( new ticketTest()->delay());
        dispatch( new ticketTest());
        //echo phpinfo();
        echo "刘宁帅得不行";
        exit;
    }
    public function study()
    {
        $data=Study_info::all();
        return view("Test.study",compact('data'));
    }
    public function about()
    {
        return view("Test.about");
    }
}
