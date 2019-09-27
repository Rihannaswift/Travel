<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=request.getContextPath()+"/"%>" />
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
    <script type="text/javascript" src="js/jquery-1.8.2.js"></script>
    <script type="text/javascript" src="http://res.wx.qq.com/open/js/jweixin-1.4.0.js"></script>
    <style type="text/css">
        html{height:100%}
        body{height:100%;margin:0px;padding:0px}
        #container{height:100%}
    </style>
</head>
<body>
<div id="container"></div>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=3.0&ak=vR9RBcpBALxr6dyX4a8eX4rZeOugKGpA"></script>
<script type="text/javascript">

    var map = new BMap.Map("container");
    var point = new BMap.Point(116.404, 39.915);
    map.centerAndZoom(point, 15);
    map.enableScrollWheelZoom(true);
    window.setTimeout(function(){
        map.panTo(new BMap.Point(114.064552, 22.548457));
    }, 2000);

</script>
</body>
</html>
