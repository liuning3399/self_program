<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="ECharts">
    <meta name="author" content="kener.linfeng@gmail.com">
    <title>ECharts · Example</title>

    <link rel="shortcut icon" href="../asset/ico/favicon.png">

    <link href="{{URL::asset('echarts/css/font-awesome.min.css')}}" rel="stylesheet">
    <link href="../asset/css/bootstrap.css" rel="stylesheet">
    <link href="../asset/css/carousel.css" rel="stylesheet">
    <link href="../asset/css/echartsHome.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <script src="./www/js/echarts.js"></script>
    <script src="../asset/js/codemirror.js"></script>
    <script src="../asset/js/javascript.js"></script>

    <link href="../asset/css/codemirror.css" rel="stylesheet">
    <link href="../asset/css/monokai.css" rel="stylesheet">
</head>

<body>
<!-- Fixed navbar -->
<div class="navbar navbar-default navbar-fixed-top" role="navigation" id="head"></div>


<div class="container-fluid">
    <div class="row-fluid example">
        <div id="sidebar-code" class="col-md-4">
            <div class="well sidebar-nav">
                <div class="nav-header"><a href="#" onclick="autoResize()" class="glyphicon glyphicon-resize-full" id ="icon-resize" ></a>option</div>
                <textarea id="code" name="code">
option = {
    title : {
        text: '世界人口总量',
        subtext: '数据来自网络'
    },
    tooltip : {
        trigger: 'axis'
    },
    legend: {
        data:['2011年', '2012年']
    },
    toolbox: {
        show : true,
        feature : {
            mark : {show: true},
            dataView : {show: true, readOnly: false},
            magicType: {show: true, type: ['line', 'bar']},
            restore : {show: true},
            saveAsImage : {show: true}
        }
    },
    calculable : true,
    xAxis : [
        {
            type : 'value',
            boundaryGap : [0, 0.01]
        }
    ],
    yAxis : [
        {
            type : 'category',
            data : ['巴西','印尼','美国','印度','中国','世界人口(万)']
        }
    ],
    series : [
        {
            name:'2011年',
            type:'bar',
            data:[18203, 23489, 29034, 104970, 131744, 630230]
        },
        {
            name:'2012年',
            type:'bar',
            data:[19325, 23438, 31000, 121594, 134141, 681807]
        }
    ]
};
                    </textarea>
            </div><!--/.well -->
        </div><!--/span-->
        <div id="graphic" class="col-md-8">
            <div id="main" class="main"></div>
            <div>
                <button type="button" class="btn btn-sm btn-success" onclick="refresh(true)">刷 新</button>
                <span class="text-primary">切换主题</span>
                <select id="theme-select"></select>

                <span id='wrong-message' style="color:red"></span>
            </div>
        </div><!--/span-->
    </div><!--/row-->

</div><!--/.fluid-container-->

<footer id="footer"></footer>
<!-- Le javascript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="../asset/js/jquery.min.js"></script>
<script type="text/javascript" src="../asset/js/echartsHome.js"></script>
<script src="../asset/js/bootstrap.min.js"></script>
<script src="../asset/js/echartsExample.js"></script>
</body>
</html>
