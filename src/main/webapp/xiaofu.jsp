<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>layDate快速使用</title>
    <script type="text/javascript" src="js/jquery-1.8.2.js"></script>
    <link rel="stylesheet" href="layui/css/layui.css" media="all">
    <script src="layui/layui.js"></script>
    <script type="text/javascript" language="javascript">
        layui.use('laydate', function(){
            var laydate = layui.laydate;
            //执行一个laydate实例
            laydate.render({
                elem: '#test1' //指定元素
            });
        });
    </script>
</head>
<body>
    <input type="text" class="layui-input" id="test1">
</body>
</html>