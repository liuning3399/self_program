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
        <?php for($i=0;$i<15;$i++){?>
            <div class="blogs" data-scroll-reveal="enter bottom over 1s" >
            <h3 class="blogtitle"><a href="#" target="_blank">程序员所用到的网站或工具</a></h3>
            <span class="blogpic"><a href="#" title="" target="_blank"><img src="#" style="height: 120px;" alt=""></a></span>
            <p class="blogtext">程序员所用到的网站或工具</p>
            <div class="bloginfo">
                <ul>
                    <li class="author"><a>追梦人</a></li>
                                        <li class="lmname"><a href="#">其他</a></li>
                                        <li class="timer">2018-10-18</li>
                    <li class="view"><span>34</span> </li>
                    <li class="comment">0</li>
                </ul>
            </div>
        </div>
        <?php }?>
            <!-- <div class="blogs" data-scroll-reveal="enter bottom over 1s" >
            <h3 class="blogtitle"><a href="https://blog.df5g.com/article/31" target="_blank">dockerfile定制redis镜像</a></h3>
            <span class="blogpic"><a href="https://blog.df5g.com/article/31" title="" target="_blank"><img src="https://upload.wikimedia.org/wikipedia/en/thumb/6/6b/Redis_Logo.svg/400px-Redis_Logo.svg.png" style="height: 120px;" alt=""></a></span>
            <p class="blogtext">利用docker,实现共享配置文件主从复制 </p>
            <div class="bloginfo">
                <ul>
                    <li class="author"><a>孤岛渔夫</a></li>
                                        <li class="lmname"><a href="https://blog.df5g.com/category/7">性能优化</a></li>
                                        <li class="timer">2018-10-16</li>
                    <li class="view"><span>64</span> </li>
                    <li class="comment">0</li>
                </ul>
            </div>
        </div>
            <div class="blogs" data-scroll-reveal="enter bottom over 1s" >
            <h3 class="blogtitle"><a href="https://blog.df5g.com/article/30" target="_blank">职责链模式</a></h3>
            <span class="blogpic"><a href="https://blog.df5g.com/article/30" title="" target="_blank"><img src="https://img.mukewang.com/590d85ab0001212210670560.png" style="height: 120px;" alt=""></a></span>
            <p class="blogtext">职责链模式理解,请求层与负责处理层分开,降低耦合. </p>
            <div class="bloginfo">
                <ul>
                    <li class="author"><a>孤岛渔夫</a></li>
                                        <li class="lmname"><a href="https://blog.df5g.com/category/7">性能优化</a></li>
                                        <li class="timer">2018-10-14</li>
                    <li class="view"><span>15</span> </li>
                    <li class="comment">0</li>
                </ul>
            </div>
        </div>
            <div class="blogs" data-scroll-reveal="enter bottom over 1s" >
            <h3 class="blogtitle"><a href="https://blog.df5g.com/article/29" target="_blank">观察者模式</a></h3>
            <span class="blogpic"><a href="https://blog.df5g.com/article/29" title="" target="_blank"><img src="https://mmbiz.qpic.cn/mmbiz_jpg/wZ8jfcVwf7LicrfJeNQS5o4Phicu9ric1icMuiamVXcG3X7icdGt8KBCLg24IiaU1AUxwUqreEe1qKicX5olpF5rTbNWwA/640?wx_fmt=jpeg" style="height: 120px;" alt=""></a></span>
            <p class="blogtext">观察者模式理解,重要的是思想 </p>
            <div class="bloginfo">
                <ul>
                    <li class="author"><a>孤岛渔夫</a></li>
                                        <li class="lmname"><a href="https://blog.df5g.com/category/7">性能优化</a></li>
                                        <li class="timer">2018-10-13</li>
                    <li class="view"><span>21</span> </li>
                    <li class="comment">0</li>
                </ul>
            </div>
        </div>
            <div class="blogs" data-scroll-reveal="enter bottom over 1s" >
            <h3 class="blogtitle"><a href="https://blog.df5g.com/article/28" target="_blank">工厂模式</a></h3>
            <span class="blogpic"><a href="https://blog.df5g.com/article/28" title="" target="_blank"><img src="http://ojxp1924f.bkt.clouddn.com/1501237779.png" style="height: 120px;" alt=""></a></span>
            <p class="blogtext">工厂模式的理解与运用 </p>
            <div class="bloginfo">
                <ul>
                    <li class="author"><a>孤岛渔夫</a></li>
                                        <li class="lmname"><a href="https://blog.df5g.com/category/7">性能优化</a></li>
                                        <li class="timer">2018-10-13</li>
                    <li class="view"><span>17</span> </li>
                    <li class="comment">0</li>
                </ul>
            </div>
        </div>
            <div class="blogs" data-scroll-reveal="enter bottom over 1s" >
            <h3 class="blogtitle"><a href="https://blog.df5g.com/article/27" target="_blank">单例模式</a></h3>
            <span class="blogpic"><a href="https://blog.df5g.com/article/27" title="" target="_blank"><img src="https://ryderchan.github.io/img/designPattern_sigleten.jpg" style="height: 120px;" alt=""></a></span>
            <p class="blogtext">理解单例模式的设计思想 </p>
            <div class="bloginfo">
                <ul>
                    <li class="author"><a>孤岛渔夫</a></li>
                                        <li class="lmname"><a href="https://blog.df5g.com/category/7">性能优化</a></li>
                                        <li class="timer">2018-10-13</li>
                    <li class="view"><span>12</span> </li>
                    <li class="comment">0</li>
                </ul>
            </div>
        </div>
            <div class="blogs" data-scroll-reveal="enter bottom over 1s" >
            <h3 class="blogtitle"><a href="https://blog.df5g.com/article/26" target="_blank">23种设计模式</a></h3>
            <span class="blogpic"><a href="https://blog.df5g.com/article/26" title="" target="_blank"><img src="https://img.qq52o.me/wp-content/uploads/2017/11/2017111205014853.png" style="height: 120px;" alt=""></a></span>
            <p class="blogtext">23种设计模式简介 </p>
            <div class="bloginfo">
                <ul>
                    <li class="author"><a>孤岛渔夫</a></li>
                                        <li class="lmname"><a href="https://blog.df5g.com/category/7">性能优化</a></li>
                                        <li class="timer">2018-10-13</li>
                    <li class="view"><span>16</span> </li>
                    <li class="comment">0</li>
                </ul>
            </div>
        </div>
            <div class="blogs" data-scroll-reveal="enter bottom over 1s" >
            <h3 class="blogtitle"><a href="https://blog.df5g.com/article/25" target="_blank">docker基础命令及centos安装</a></h3>
            <span class="blogpic"><a href="https://blog.df5g.com/article/25" title="" target="_blank"><img src="https://www.docker.com/sites/default/files/vertical.png" style="height: 120px;" alt=""></a></span>
            <p class="blogtext">docker常用命令和安装指定ip创建网络等 </p>
            <div class="bloginfo">
                <ul>
                    <li class="author"><a>孤岛渔夫</a></li>
                                        <li class="lmname"><a href="https://blog.df5g.com/category/7">性能优化</a></li>
                                        <li class="timer">2018-10-11</li>
                    <li class="view"><span>66</span> </li>
                    <li class="comment">0</li>
                </ul>
            </div>
        </div>
            <div class="blogs" data-scroll-reveal="enter bottom over 1s" >
            <h3 class="blogtitle"><a href="https://blog.df5g.com/article/24" target="_blank">PHP内功之排序__2.堆排序</a></h3>
            <span class="blogpic"><a href="https://blog.df5g.com/article/24" title="" target="_blank"><img src="https://upload-images.jianshu.io/upload_images/426671-49274263fe0bd96b.gif?imageMogr2/auto-orient/strip" style="height: 120px;" alt=""></a></span>
            <p class="blogtext">堆排序(完全二叉树),有最大堆,最小堆. </p>
            <div class="bloginfo">
                <ul>
                    <li class="author"><a>孤岛渔夫</a></li>
                                        <li class="lmname"><a href="https://blog.df5g.com/category/1">PHP</a></li>
                                        <li class="timer">2018-10-09</li>
                    <li class="view"><span>15</span> </li>
                    <li class="comment">0</li>
                </ul>
            </div>
        </div>
            <div class="blogs" data-scroll-reveal="enter bottom over 1s" >
            <h3 class="blogtitle"><a href="https://blog.df5g.com/article/23" target="_blank">PHP内功之排序__1.冒泡排序</a></h3>
            <span class="blogpic"><a href="https://blog.df5g.com/article/23" title="" target="_blank"><img src="https://mjd507.github.io/images/Algorithm/BubbleSort.png" style="height: 120px;" alt=""></a></span>
            <p class="blogtext">冒泡排序温故,加深理解 </p>
            <div class="bloginfo">
                <ul>
                    <li class="author"><a>孤岛渔夫</a></li>
                                        <li class="lmname"><a href="https://blog.df5g.com/category/1">PHP</a></li>
                                        <li class="timer">2018-10-09</li>
                    <li class="view"><span>12</span> </li>
                    <li class="comment">0</li>
                </ul>
            </div>
        </div>
            <div class="blogs" data-scroll-reveal="enter bottom over 1s" >
            <h3 class="blogtitle"><a href="https://blog.df5g.com/article/22" target="_blank">非同一局域网下的设备通信</a></h3>
            <span class="blogpic"><a href="https://blog.df5g.com/article/22" title="" target="_blank"><img src="https://images.clipartlogo.com/files/istock/previews/9304/93041253-vintage-laptop-emblem-badge-or-label-with-fun-slogan.jpg" style="height: 120px;" alt=""></a></span>
            <p class="blogtext">了解设备通信原理,想想如何实现远程连接 </p>
            <div class="bloginfo">
                <ul>
                    <li class="author"><a>孤岛渔夫</a></li>
                                        <li class="lmname"><a href="https://blog.df5g.com/category/3">其他</a></li>
                                        <li class="timer">2018-09-30</li>
                    <li class="view"><span>12</span> </li>
                    <li class="comment">0</li>
                </ul>
            </div>
        </div>
            <div class="blogs" data-scroll-reveal="enter bottom over 1s" >
            <h3 class="blogtitle"><a href="https://blog.df5g.com/article/21" target="_blank">分析网站登录日志,查找可疑攻击者</a></h3>
            <span class="blogpic"><a href="https://blog.df5g.com/article/21" title="" target="_blank"><img src="https://www.centrinity.com/wp-content/uploads/2017/08/ddos.png" style="height: 120px;" alt=""></a></span>
            <p class="blogtext">限制无聊人士针对网站,暴力破解 </p>
            <div class="bloginfo">
                <ul>
                    <li class="author"><a>孤岛渔夫</a></li>
                                        <li class="lmname"><a href="https://blog.df5g.com/category/1">PHP</a></li>
                                        <li class="timer">2018-09-21</li>
                    <li class="view"><span>31</span> </li>
                    <li class="comment">0</li>
                </ul>
            </div>
        </div>
            <div class="blogs" data-scroll-reveal="enter bottom over 1s" >
            <h3 class="blogtitle"><a href="https://blog.df5g.com/article/20" target="_blank">Centos7 安装VNC,gnome桌面实现远程连接</a></h3>
            <span class="blogpic"><a href="https://blog.df5g.com/article/20" title="" target="_blank"><img src="https://static.realvnc.com/static/257111001/img/logos/realvnc.svg" style="height: 120px;" alt=""></a></span>
            <p class="blogtext">Centos7 安装VNC,gnome桌面实现远程连接 </p>
            <div class="bloginfo">
                <ul>
                    <li class="author"><a>孤岛渔夫</a></li>
                                        <li class="lmname"><a href="https://blog.df5g.com/category/2">LINUX</a></li>
                                        <li class="timer">2018-09-18</li>
                    <li class="view"><span>24</span> </li>
                    <li class="comment">0</li>
                </ul>
            </div>
        </div>
            <div class="blogs" data-scroll-reveal="enter bottom over 1s" >
            <h3 class="blogtitle"><a href="https://blog.df5g.com/article/19" target="_blank">Swift即时文档</a></h3>
            <span class="blogpic"><a href="https://blog.df5g.com/article/19" title="" target="_blank"><img src="https://user-images.githubusercontent.com/8315971/29005200-7ab86be4-7a9b-11e7-9a8d-e13e8b9988c9.png" style="height: 120px;" alt=""></a></span>
            <p class="blogtext">文档 </p>
            <div class="bloginfo">
                <ul>
                    <li class="author"><a>孤岛渔夫</a></li>
                                        <li class="lmname"><a href="https://blog.df5g.com/category/6">iOS-Swift</a></li>
                                        <li class="timer">2018-09-05</li>
                    <li class="view"><span>48</span> </li>
                    <li class="comment">0</li>
                </ul>
            </div>
        </div>
        
            <div class="blogs" data-scroll-reveal="enter bottom over 1s" >
            <h3 class="blogtitle"><a href="https://blog.df5g.com/article/18" target="_blank">小程序ssl域名配置,缺少中间证书检测</a></h3>
            <span class="blogpic"><a href="https://blog.df5g.com/article/18" title="" target="_blank"><img src="https://www.instantssl.com/images/ev-ssl/https-ev-ssl.png" style="height: 120px;" alt=""></a></span>
            <p class="blogtext">小程序ssl域名配置,缺少中间证书检测 </p>
            <div class="bloginfo">
                <ul>
                    <li class="author"><a>孤岛渔夫</a></li>
                                        <li class="lmname"><a href="https://blog.df5g.com/category/1">PHP</a></li>
                                        <li class="timer">2018-08-30</li>
                    <li class="view"><span>75</span> </li>
                    <li class="comment">0</li>
                </ul>
            </div> 
        </div>
        -->
        <ul class="pagination"><li class="disabled"><span>&laquo;</span></li> <li class="active"><span>1</span></li><li><a href="#">2</a></li> <li><a href="#" rel="next">&raquo;</a></li></ul>
    </div>
    <div class="sidebar">
        <div class="tuijian">
    
        <h2 class="hometitle">点击排行</h2>
    <ul class="sidenews">
                               <!--  <li> <i><img src="https://www.daixiaorui.com/Public/uploads/201408/14090533299856.jpg" style="width:100%;"></i>
            <p><a href="https://blog.df5g.com/article/6" target="_blank">一个简单而又漂亮的404页面源码...</a></p>
            <span>2018-07-25</span> </li>
                        <li> <i><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/b/b0/NewTux.svg/100px-NewTux.svg.png" style="width:100%;"></i>
            <p><a href="https://blog.df5g.com/article/2" target="_blank">Contos7简易防火墙搭配...</a></p>
            <span>2018-07-24</span> </li>
                        <li> <i><img src="https://dn-linuxcn.qbox.me/data/attachment/album/201807/23/143741g3v54ph5nrqvs34s.jpg.thumb.jpg" style="width:100%;"></i>
            <p><a href="https://blog.df5g.com/article/3" target="_blank">配置linux临时交换分区...</a></p>
            <span>2018-07-24</span> </li>
                        <li> <i><img src="https://getcomposer.org/img/logo-composer-transparent3.png" style="width:100%;"></i>
            <p><a href="https://blog.df5g.com/article/4" target="_blank">composer安装和常用命令...</a></p>
            <span>2018-07-24</span> </li>
                        <li> <i><img src="https://www.w3.org/html/logo/downloads/HTML5_Logo_64.png" style="width:100%;"></i>
            <p><a href="https://blog.df5g.com/article/7" target="_blank">HTML placeholder兼容IE...</a></p>
            <span>2018-07-31</span> </li> -->
                        </ul>
</div>
        <div class="cloud">
    <h2 class="hometitle">标签云</h2>
    <ul>
                                                    <!-- <a href="https://blog.df5g.com/tag/8" target="_blank">404</a>
                            <a href="https://blog.df5g.com/tag/15" target="_blank">brew</a>
                            <a href="https://blog.df5g.com/tag/28" target="_blank">Centos7</a>
                            <a href="https://blog.df5g.com/tag/11" target="_blank">class</a>
                            <a href="https://blog.df5g.com/tag/18" target="_blank">click</a>
                            <a href="https://blog.df5g.com/tag/6" target="_blank">composer</a>
                            <a href="https://blog.df5g.com/tag/19" target="_blank">crontab</a>
                            <a href="https://blog.df5g.com/tag/31" target="_blank">docker</a>
                            <a href="https://blog.df5g.com/tag/22" target="_blank">GeeTest</a>
                            <a href="https://blog.df5g.com/tag/12" target="_blank">git</a>
                            <a href="https://blog.df5g.com/tag/7" target="_blank">GitHub</a>
                            <a href="https://blog.df5g.com/tag/29" target="_blank">gnome</a>
                            <a href="https://blog.df5g.com/tag/9" target="_blank">html</a>
                            <a href="https://blog.df5g.com/tag/30" target="_blank">ip</a>
                            <a href="https://blog.df5g.com/tag/1" target="_blank">iptables</a>
                            <a href="https://blog.df5g.com/tag/10" target="_blank">js</a>
                            <a href="https://blog.df5g.com/tag/13" target="_blank">laravel</a>
                            <a href="https://blog.df5g.com/tag/4" target="_blank">linux</a>
                            <a href="https://blog.df5g.com/tag/16" target="_blank">nginx</a>
                            <a href="https://blog.df5g.com/tag/24" target="_blank">phpstorm</a>
                            <a href="https://blog.df5g.com/tag/21" target="_blank">putty</a>
                            <a href="https://blog.df5g.com/tag/17" target="_blank">redis</a>
                            <a href="https://blog.df5g.com/tag/32" target="_blank">sentinel</a>
                            <a href="https://blog.df5g.com/tag/2" target="_blank">sftp</a>
                            <a href="https://blog.df5g.com/tag/20" target="_blank">shell</a>
                            <a href="https://blog.df5g.com/tag/25" target="_blank">ssl</a>
                            <a href="https://blog.df5g.com/tag/5" target="_blank">swap</a>
                            <a href="https://blog.df5g.com/tag/26" target="_blank">Swift</a>
                            <a href="https://blog.df5g.com/tag/27" target="_blank">VNC</a>
                            <a href="https://blog.df5g.com/tag/23" target="_blank">vue</a>
                            <a href="https://blog.df5g.com/tag/3" target="_blank">yum</a>
                            <a href="https://blog.df5g.com/tag/14" target="_blank">第三方</a> -->
                        </ul>
</div>
        <div class="links">
    <h2 class="hometitle">友情链接</h2>
        <ul>
        
                                  <!--   <li><a href="https://www.ruoxiaozh.com/blog" target="_blank">ellison</a></li>
                            <li><a href="https://bayaojiu.com/" target="_blank">幺久博客</a></li> -->
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
                    <a href="#" target="_blank">赣ICP备16067858号-1</a>
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

