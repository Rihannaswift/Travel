<%--
  Created by IntelliJ IDEA.
  User: hc
  Date: 2019/9/17
  Time: 9:01
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
<!--[if IE 6]>
<script type="text/javascript" src="http://lib.h-ui.net/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->

    <title>Title</title>
</head>
<body>
<div class="pd-20">
    <form action="backHotel/backUpdate" method="post" class="form form-horizontal" id="form-admin-add">
        <input type="hidden" name="id"  value="${tHotel.id}"/>

        <div class="row cl">
            <label class="form-label col-3"><span class="c-red">*</span>酒店名称：</label>
            <div class="formControls col-5"><!--placeholder-->
                <input type="text" class="input-text"   id="hotel-name" name="hotelname" datatype="s6-16" nullmsg="酒店名不能为空" errormsg="酒店名长度6-16位字符"  value="${tHotel.hotelname}">
            </div>
            <div class="col-4"> </div>
        </div>
        <div class="row cl">
            <label class="form-label col-3"><span class="c-red">*</span>酒店地址：</label>
            <div class="formControls col-5">
                <input type="text" name="hoteladdress"  autocomplete="off"  class="input-text" datatype="s6-16" nullmsg="酒店地址不能为空" errormsg="酒店地址长度6-16位字符"  value="${tHotel.hoteladdress}">
            </div>
            <div class="col-4"> </div>
        </div>

        <div class="row cl">
            <label class="form-label col-3"><span class="c-red">*</span>所在地域：</label>
            <div class="formControls col-5">
                <input type="text" name="cityname"  autocomplete="off"  class="input-text" datatype="s2-16"  nullmsg="所在城市不能为空" errormsg="城市为2-16位字符"  value="${tHotel.cityname}">
            </div>
            <div class="col-4"> </div>
        </div>

        <%--        <div class="row cl">
                    <label class="form-label col-3"><span class="c-red">*</span>手机号码：</label>
                    <div class="formControls col-5">
                        <input type="text" class="input-text" value="" placeholder="" id="user-tel" name="phonenumber"  datatype="m" nullmsg="手机号码不能为空" errormsg="手机号码不符合格式">
                    </div>
                    <div class="col-4"> </div>
                </div>
                <div class="row cl">
                    <label class="form-label col-3"><span class="c-red">*</span>邮箱：</label>
                    <div class="formControls col-5">
                        <input type="text" class="input-text" placeholder="@" name="email" id="email" datatype="e" nullmsg="邮箱号码不能为空" errormsg="邮箱号码不符合格式">
                    </div>
                    <div class="col-4"> </div>
                </div>--%>
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
