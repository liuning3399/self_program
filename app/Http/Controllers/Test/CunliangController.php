<?php

namespace App\Http\Controllers\Test;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests;
use Charts;

class CunliangController extends Controller
{
    public function test2()
    {
//        $chart = Charts::create('line', 'highcharts')
//            ->setView('custom.line.chart.view') // Use this if you want to use your own template
//            ->setTitle('My nice chart')
//            ->setLabels(['First', 'Second', 'Third'])
//            ->setValues([5,10,20])
//            ->setDimensions(1000,500)
//            ->setResponsive(false);

        return view('Test.test3');
    }
    public function test()
    {
        return view("Test.test");
    }
}
