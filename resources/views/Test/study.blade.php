@foreach($data as $vo)
    <div style="float: left;width: 500px;">地址：<a href="{{$vo->netaddr}}">{{$vo->netaddr}}</a></div>
    <div style="float: left;margin-left: 50px;width:100px;">密码：{{$vo->passwords}}</div>
    <div style="float: left;margin-left: 50px;">{{$vo->remark}}</div><br>
@endforeach