<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <base href="<%=request.getContextPath()+"/"%>" />
    <meta charset="utf-8">
    <title>upload模块快速使用</title>
    <link rel="stylesheet" href="../../layui/css/layui.css" media="all">
</head>
<body>

<form method="post" action="/bookScenic/test" enctype="multipart/form-data">

    <button type="button" class="layui-btn" id="test1">
        <i class="layui-icon">&#xe67c;</i>上传图片
    </button>

    <input type="submit" value="提交" />

</form>

<script src="../../layui/layui.js"></script>
<script>
    layui.use('upload', function(){
        var upload = layui.upload;

        //执行实例
        var uploadInst = upload.render({
            elem: '#test1' //绑定元素
            ,url: '/upload/' //上传接口
            ,done: function(res){
                //上传完毕回调
            }
            ,error: function(){
                //请求异常回调
            }
        });
    });


</script>
</body>
</html>
