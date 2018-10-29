<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>追梦人的博客</title>
    <meta name="keywords" content="追梦人,博客,个人博客" />
    <meta name="description" content="学习总结" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
    <link rel="shortcut icon" href="#">

    <link href="{{URL::asset('blog/css/base.css')}}" rel="stylesheet">
    <link href="{{URL::asset('blog/css/index_new.css')}}" rel="stylesheet">
    <link href="{{URL::asset('blog/css/m-new.css')}}" rel="stylesheet">
    <link href="{{URL::asset('blog/css/people.css')}}" rel="stylesheet">
    <style>
    .pagination{display:inline-block;padding-left:0;margin:20px 0;border-radius:4px}.pagination>li{display:inline}.pagination>li>a,.pagination>li>span{position:relative;float:left;padding:6px 12px;margin-left:-1px;line-height:1.42857143;color:#337ab7;text-decoration:none;background-color:#fff;border:1px solid #ddd}.pagination>li:first-child>a,.pagination>li:first-child>span{margin-left:0;border-top-left-radius:4px;border-bottom-left-radius:4px}.pagination>li:last-child>a,.pagination>li:last-child>span{border-top-right-radius:4px;border-bottom-right-radius:4px}.pagination>li>a:focus,.pagination>li>a:hover,.pagination>li>span:focus,.pagination>li>span:hover{z-index:2;color:#23527c;background-color:#eee;border-color:#ddd}.pagination>.active>a,.pagination>.active>a:focus,.pagination>.active>a:hover,.pagination>.active>span,.pagination>.active>span:focus,.pagination>.active>span:hover{z-index:3;color:#fff;cursor:default;background-color:#337ab7;border-color:#337ab7}.pagination>.disabled>a,.pagination>.disabled>a:focus,.pagination>.disabled>a:hover,.pagination>.disabled>span,.pagination>.disabled>span:focus,.pagination>.disabled>span:hover{color:#777;cursor:not-allowed;background-color:#fff;border-color:#ddd}.pagination-lg>li>a,.pagination-lg>li>span{padding:10px 16px;font-size:18px;line-height:1.3333333}.pagination-lg>li:first-child>a,.pagination-lg>li:first-child>span{border-top-left-radius:6px;border-bottom-left-radius:6px}.pagination-lg>li:last-child>a,.pagination-lg>li:last-child>span{border-top-right-radius:6px;border-bottom-right-radius:6px}.pagination-sm>li>a,.pagination-sm>li>span{padding:5px 10px;font-size:12px;line-height:1.5}.pagination-sm>li:first-child>a,.pagination-sm>li:first-child>span{border-top-left-radius:3px;border-bottom-left-radius:3px}.pagination-sm>li:last-child>a,.pagination-sm>li:last-child>span{border-top-right-radius:3px;border-bottom-right-radius:3px}.pager{padding-left:0;margin:20px 0;text-align:center;list-style:none}
</style>
    <style>
        #cnzz_stat_icon_1264398044{
            display: inline-block;
        }
        h2{
            margin-top: 0;
        }
    </style>
</head>
<body>

<header>
    <!--menu begin-->
    <div class="menu">
    <nav class="nav" id="topnav">
        <h1 class="logo"><a href="">追梦人的博客</a></h1>
                            <li><a href="">首页</a> </li>
                            <li><a href="">前端</a> </li>
                            <li><a href="">后端</a> </li>
                            <li><a href="">数据库</a> </li>
                            <li><a href="">运维</a> </li>
                            <li><a href="">服务器</a> </li>
                            <li><a href="">开源工具</a> </li>
                            <!--search begin-->
        <div id="search_bar" class="search_bar">
            <form  id="searchform" action="#" method="get" name="searchform">
                <input class="input" placeholder="想搜点什么呢..." type="text" name="keyword" id="keyboard">
                <input type="hidden" name="Submit" value="搜索" />
                <span class="search_ico"></span>
            </form>
        </div>
        <!--search end-->
    </nav>
</div>
<!--mnav begin-->
<div id="mnav">
    <h2><a href="#" class="mlogo">追梦人的博客</a><span class="navicon"></span></h2>
    <dl class="list_dl">
                            <dt class="list_dt"> <a href="#">首页</a> </dt>
                            <dt class="list_dt"> <a href="#">前端</a> </dt>
                            <dt class="list_dt"> <a href="#">后端</a> </dt>
                            <dt class="list_dt"> <a href="#">数据库</a> </dt>
                            <dt class="list_dt"> <a href="#">运维</a> </dt>
                            <dt class="list_dt"> <a href="#">服务器</a> </dt>
                            <dt class="list_dt"> <a href="#">开源工具</a> </dt>
                        </dl>
</div>
<!--mnav end-->    <!--menu end-->
</header>
<!-- Main jumbotron for a primary marketing message or call to action -->
<!--people-->
<div id="app"></div>
<script type="text/javascript">
    var isindex=true;var title="";var visitor="游客";
</script>
<!--end people-->
<article>
    <div class="blogsbox">
        @foreach($data as $vo)
            <div class="blogs" data-scroll-reveal="enter bottom over 1s" >
            <h3 class="blogtitle"><a href="/detail?id={{$vo->id}}" target="_blank">{{$vo->name}}</a></h3>
            <span class="blogpic"><a href="#" title="" target="_blank"><img src="{{$vo->images}}" style="height: 120px;" alt=""></a></span>
            <p class="blogtext">{{htmlspecialchars($vo->content)}}</p>
            <div class="bloginfo">
                <ul>
                    <li class="author"><a>{{$vo->userid}}</a></li>
                                        <li class="lmname"><a href="#">{{$vo->likes}}</a></li>
                                        <li class="timer">{{$vo->updated_at}}</li>
                    <li class="view"><span>{{$vo->views}}</span> </li>
                    <li class="comment">{{$vo->comments}}</li>
                </ul>
            </div>
        </div>
        @endforeach 
        {{ $data->links() }}
       
    </div>
    <div class="sidebar">
        <div class="tuijian">
    
        <h2 class="hometitle">点击排行</h2>
    <ul class="sidenews">
    @foreach($articles as $vo)
        <li> <i><img src="{{$vo->images}}" style="width:100%;"></i>
            <p><a href="{{$vo->name}}" target="_blank">{{$vo->name}}</a></p>
            <span>{{$vo->updated_at}}</span> <span>作者：{{$vo->userid}}</span></li>
   @endforeach
                        </ul>
</div>
        <div class="cloud">
    <h2 class="hometitle">标签云</h2>
    <ul>
    @foreach($label as $vo)
                       <a href="" target="_blank">{{$vo->label_name}}</a>
                       @endforeach    
                        </ul>
</div>
        <div class="links">
    <h2 class="hometitle">友情链接</h2>
        <ul>
            @foreach($links as $vo)
             <li><a href="{{$vo->friend_links}}" target="_blank"><img src="{{$vo->friend_link_logo}}" style="width: 300px;"/></a></li>
                           
                            @endforeach
                        </ul>
</div>
        <div class="guanzhu" id="float">
            <h2 class="hometitle">关注</h2>
    <ul>
              <!--   <li class="wx"><img style="width: 50%;margin: 0 auto;" src="https://blog.df5g.com/uploads/avatar/6825dcb220b7ef0e575b5d20c78a0427.jpg"></li>
        <li class="wx">
            <p style="font-size: 14px;color: #566573;" class="blogtext">&nbsp;小程序二维码⤵️⤵️⤵️</p>
            <img style="width: 70%;margin: 0 auto;" src="https://blog.df5g.com/uploads/avatar/1e2cd76e19ebb6bbc8dfd09bc9b82362.jpg">
        </li>
 -->
                 <li class="tencent"><a href="https://github.com/liuning3399" target="_blank"><span>GitHub</span>liuning3399</a></li>
                          <li class="qq"><a><span>QQ号</span>441380237</a></li>
            </ul>
</div>

    </div>
</article>
<footer>
    <p><b>©</b>  2015-2018 Powered by
        <a>追梦人的博客</a>
                    <a href="#" target="_blank">赣ICP备858号-1</a>
                &nbsp;
        <span style="display: inline-block;">
        <!-- <script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1274268318'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s13.cnzz.com/z_stat.php%3Fid%3D1274268318%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script> -->
        </span>
    </p>
</footer>
<a href="#" class="cd-top">Top</a>
<script src="{{URL::asset('blog/js/jQuery-2.2.0.min.js')}}"></script>
<script src="{{URL::asset('blog/js/bootstrap.min.js')}}" type="text/javascript"></script>
<script src="{{URL::asset('blog/js/jquery.easyfader.min.js')}}"></script>
<script src="{{URL::asset('blog/js/people.js')}}"></script>
<script src="{{URL::asset('blog/js/conn.js')}}"></script>
<script src="{{URL::asset('blog/js/nav.js')}}"></script>
<script src="{{URL::asset('blog/js/scrollReveal.js')}}"></script>
<!--[if lt IE 9]>
<script src="{{URL::asset('blog/js/jQuery-2.2.0.min.js')}}modernizr.js"></script>
<![endif]-->


<script>
    (function(){
        var bp = document.createElement('script');
        var curProtocol = window.location.protocol.split(':')[0];
        if (curProtocol === 'https') {
            bp.src = '{{URL::asset("blog/js/push_https.js")}}';
        }
        else {
            bp.src = '{{URL::asset("blog/js/push_http.js")}}';
        }
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(bp, s);
    })();
</script>

</body>
</html>

