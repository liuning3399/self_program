<?php

namespace App\Api\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Dingo\Api\Routing\Helpers;
use App\Model\admin\User;

class AgentFansController extends BaseController
{
    public  function  index(){
        $data=User::all();
        return  $data;
    }
}
