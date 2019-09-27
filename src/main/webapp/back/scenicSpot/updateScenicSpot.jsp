<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <base href="${pageContext.request.contextPath}/" />
    <meta charset="utf-8">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <!--[if lt IE 9]>
    <script type="text/javascript" src="lib/html5.js"></script>
    <script type="text/javascript" src="lib/respond.min.js"></script>
    <script type="text/javascript" src="lib/PIE_IE678.js"></script>
    <![endif]-->
    <link href="css/H-ui.min.css" rel="stylesheet" type="text/css" />
    <link href="css/H-ui.admin.css" rel="stylesheet" type="text/css" />
    <link href="lib/icheck/icheck.css" rel="stylesheet" type="text/css" />
    <link href="lib/Hui-iconfont/1.0.1/iconfont.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../../js/jquery-1.8.2.js"></script>
    <!--[if IE 6]>
    <script type="text/javascript" src="http://lib.h-ui.net/DD_belatedPNG_0.0.8a-min.js" ></script>
    <script>DD_belatedPNG.fix('*');</script>
    <![endif]-->
    <title>添加景点</title>
</head>
<body>
<div class="pd-20">
    <form action="bookScenic/update" method="post" class="form form-horizontal" id="form-admin-add" enctype="multipart/form-data">
        <input type="hidden" name="id" value="${tScenic.id}" />

        <div class="row cl">
            <label class="form-label col-3"><span class="c-red">*</span>景点名称：</label>
            <div class="formControls col-5">
                <input type="text" class="input-text" value="${tScenic.title}" placeholder="" id="user-name" name="title" datatype="s2-10" nullmsg="景点名称不能为空" errormsg="景点名称长度为2-10个字符" >
            </div>
            <div class="col-4"> </div>
        </div>
        <div class="row cl">
            <label class="form-label col-3"><span class="c-red">*</span>景点图片：</label>
            <div class="formControls col-5">
                <input type="file" name="file" autocomplete="off" value="${tScenic.image}">
            </div>
            <div class="col-4"> </div>
        </div>

        <div class="row cl">
            <label class="form-label col-3"><span class="c-red">*</span>景点价格(￥)：</label>
            <div class="formControls col-5">
                <input type="text" class="input-text" name="price" datatype="/^[+]{0,1}(\d+)$|^[+]{0,1}(\d+\.\d+)$/" nullmsg="请输入景点价格" errormsg="价格大于0元"  value="${tScenic.price}" />
            </div>
            <div class="col-4"> </div>
        </div>

        <div class="row cl">
            <label class="form-label col-3"><span class="c-red">*</span>景点描述：</label>
            <div class="formControls col-5">
                <textarea class="text-box multi-line" id="address" name="scenic" datatype="*2-400" nullmsg="景点描述不能为空" errormsg="景点描述字符长度2位以上"  >${tScenic.scenic}</textarea>
                <span class="field-validation-valid" data-valmsg-for="Address" data-valmsg-replace="true"></span>
            </div>
            <div class="col-4"> </div>
        </div>

        <div class="row cl">
            <div class="col-9 col-offset-3">
                <input class="btn btn-primary radius" type="submit" value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
            </div>
        </div>
    </form>
</div>
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="lib/icheck/jquery.icheck.min.js"></script>
<script type="text/javascript" src="lib/Validform/5.3.2/Validform.min.js"></script>
<script type="text/javascript" src="lib/layer/1.9.3/layer.js"></script>
<script type="text/javascript" src="js/H-ui.js"></script>
<script type="text/javascript" src="js/H-ui.admin.js"></script>
<script type="text/javascript">
    $(function(){
        $('.skin-minimal input').iCheck({
            checkboxClass: 'icheckbox-blue',
            radioClass: 'iradio-blue',
            increaseArea: '20%'
        });

        $("#form-admin-add").Validform({
            tiptype:2,
            callback:function(form){
                debugger
                form[0].submit();
                var index = parent.layer.getFrameIndex(window.name);
                parent.$('.btn-refresh').click();
                parent.layer.close(index);
            }
        });
    });
</script>
</body>
</html>
