<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
    <title></title>
    <link rel="stylesheet" href="{{URL::asset("echarts/rgraph/amazeui.css")}}" />
    <link rel="stylesheet" href="{{URL::asset("echarts/rgraph/core.css")}}" />
    <link rel="stylesheet" href="{{URL::asset("echarts/rgraph/component.css")}}" />
    <style>
        .admin .b{
            width: 58%;
            height:600px;
            border-right: 1px solid #999;
        }
        .content{
            margin-top: 10px;
            width: 40%;
        }
        .am-u-md-4{
            width: 100%;
        }
        .fl{
            float: left;
        }
        .b .am-u-md-8{
            width: 99%;
        }
        .c{
            width: 97%;
            height: 640px;
            margin: 10px;
        }
    </style>
    <!-- <link rel="stylesheet" type="text/css" id="cssfile" href="assets/themes/default/css/main.css" /> -->
    <script type="text/javascript" src="{{URL::asset("echarts/js/jquery.js")}}"></script>
    <!--<script src="http://echarts.baidu.com/build/dist/echarts.js"></script>-->

    <script type="text/javascript">
    </script>
</head>

<body>
<div class="admin">
    <!--  <div class="am-g">-->
    <!-- ============================================================== -->
    <!-- Start right Content here -->
    <div class="content-page">
        <!-- Start content -->
        <div class="b fl content">
            <div class="c" id="main"></div>
            <div class="am-g">
                <div class="am-u-md-8">
                    <div class="card-box">
                        <h4 class="header-title m-t-0 m-b-30">最近更新文件</h4>
                        <div id="tab_updata" class="am-scrollable-horizontal am-text-ms" style="font-family: '微软雅黑';">
                            <table class="am-table   am-text-nowrap">
                                <thead>
                                <tr>
                                    <th>序号</th>
                                    <th>设备SN码</th>
                                    <th>类型</th>
                                    <th>文件名</th>
                                    <th>代码</th>
                                    <th>信息</th>
                                    <th>更新时间</th>
                                </tr>
                                </thead>
                                <tbody>


                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="content fl">
            <div class="am-g">
                <!-- Row start -->
                <div class="am-u-md-4">
                    <div class="card-box">
                        <h4 class="header-title m-t-0">设备状态图</h4>
                        <div id="index-pie-1" style="height: 345px;height: 300px;"></div>
                    </div>
                </div>

                <div class="am-u-md-4">
                    <div class="card-box">
                        <h4 class="header-title m-t-0">设备警报图</h4>
                        <div id="index-bar-1" style="height: 345px;height: 300px;"></div>
                    </div>
                </div>

                <div class="am-u-md-4">
                    <div class="card-box">
                        <h4 class="header-title m-t-0">流量统计</h4>
                        <div id="index-line-1" style="height: 345px;height: 300px;"></div>
                    </div>
                </div>
                <!-- Row end -->
            </div>
        </div>
        <!-- end right Content here -->
        <!--</div>-->
    </div>
</div>
<script type="text/javascript" src="{{URL::asset("echarts/rgraph/echarts.min.js")}}"></script>
<script type="text/javascript" src="{{URL::asset("echarts/rgraph/indexChart.js")}}"></script>
<script>
    Offline();bar_chart();lately();distribution_map();

</script>
</body>
</html>