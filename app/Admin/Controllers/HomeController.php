<?php

namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\Dashboard;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Column;
use Encore\Admin\Layout\Content;
use Encore\Admin\Layout\Row;

class HomeController extends Controller
{
    public function index()
    {
        return Admin::content(function (Content $content) {

            $content->header('配置环境');
            $content->description('系统所需要的配置');

            $content->row(Dashboard::title());

            $content->row(function (Row $row) {

                $row->column(4, function (Column $column) {
                    $column->append(Dashboard::environment());
                });

                $row->column(4, function (Column $column) {
                    $column->append(Dashboard::extensions());
                });

                $row->column(4, function (Column $column) {
                    $column->append(Dashboard::dependencies());
                });
            });
        });
    }
//    public function numberCount()
//    {
//        $days = request('days', 7);
//
//        $range = Carbon::today()->subDays($days);
//        // \DB::enableQueryLog();
//        $stats = Customer::where('created_at', '>=', $range)
//            ->groupBy('date')
//            ->orderBy('date', 'DESC')
//            ->get([
//                \DB::raw('Date(created_at) as date'),
//                \DB::raw('sum(CASE WHEN customer_type = 1 THEN 1 ELSE 0 END) AS customer'),
//                \DB::raw('sum(CASE WHEN customer_type = 2 THEN 1 ELSE 0 END) AS teacher'),
//            ])
//            ->toJSON();
//        return view('admin.numberCount', compact('stats', 'data'));
//    }
}
