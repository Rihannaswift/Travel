<%@ page isELIgnored="false"  %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    <script type="text/javascript" src="../../js/jquery-1.8.2.js"></script>
    <![endif]-->
    <link href="css/H-ui.min.css" rel="stylesheet" type="text/css" />
    <link href="css/H-ui.admin.css" rel="stylesheet" type="text/css" />
    <link href="lib/icheck/icheck.css" rel="stylesheet" type="text/css" />
    <link href="lib/Hui-iconfont/1.0.1/iconfont.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="layui/css/layui.css" media="all">
    <script src="layui/layui.js"></script>
    <script type="text/javascript">
        //弹出日期窗口的插件
        layui.use('laydate', function(){
            var laydate = layui.laydate;
            //执行一个laydate实例
            laydate.render({
                elem: '#btest'//指定元素
            });
        });
    </script>


    <!--[if IE 6]>
    <script type="text/javascript" src="http://lib.h-ui.net/DD_belatedPNG_0.0.8a-min.js" ></script>
    <script>DD_belatedPNG.fix('*');</script>
    <![endif]-->
    <title>编辑用户</title>
</head>
<body>
<div class="pd-20">
    <form action="user/backUpdate" method="post" class="form form-horizontal" id="form-admin-add">
        <input type="hidden" name="id" value="${tUser.id}">
        <div class="row cl">
            <label class="form-label col-3"><span class="c-red">*</span>用户名：</label>
            <div class="formControls col-5">
                <input type="text" class="input-text" value="${tUser.username}" placeholder="" id="user-name" name="username" datatype="s2-6" nullmsg="用户名不能为空" errormsg="用户名长度为2-6个字符">
            </div>
            <div class="col-4"> </div>
        </div>
        <div class="row cl">
            <label class="form-label col-3"><span class="c-red">*</span>密码：</label>




            <div class="formControls col-5">
                <input type="password" name="password" placeholder="密码" autocomplete="off" value="${tUser.password}" class="input-text" datatype="n6-12" nullmsg="密码不能为空" errormsg="密码长度6-12位数字">
            </div>
            <div class="col-4"> </div>
        </div>

        <div class="row cl">
            <label class="form-label col-3"><span class="c-red">*</span>性别：</label>
            <div class="formControls col-5 skin-minimal">
                <div class="radio-box">
                    <%--<c:if test="${user.sex eq '1'}">checked="checked"</c:if>--%>
                    <input type="radio" id="sex-1" name="sex" datatype="*" nullmsg="请选择性别！"  <c:if test="${tUser.sex eq '男'}">checked="checked"</c:if>  >
                    <label for="sex-1">男</label>
                </div>
                <div class="radio-box">
                    <input type="radio" id="sex-2" name="sex"  <c:if test="${tUser.sex eq '女'}">checked="checked"</c:if> >
                    <label for="sex-2">女</label>
                </div>
            </div>
            <div class="col-4"> </div>
        </div>

        <div class="row cl">
            <label class="form-label col-3"><span class="c-red">*</span>生日：</label>
            <div class="formControls col-5">
                <%--<fmt:formatDate value="${tUser.birthday}" pattern="yyyy-MM-dd"/>--%>
                <input type="text" class="layui-input input03" id="btest" name="birthday"  value="<fmt:formatDate value="${tUser.birthday}" pattern="yyyy-MM-dd"/>"   datatype="/^(\d{4})-(\d{2})-(\d{2})$/" nullmsg="日期不能为空" errormsg="日期格式不符合yyyy-MM-dd" />
            </div>
            <div class="col-4"> </div>
        </div>


        <div class="row cl">
            <label class="form-label col-3"><span class="c-red">*</span>手机：</label>
            <div class="formControls col-5">
                <input type="text" class="input-text" value="${tUser.phonenumber}" placeholder="" id="user-tel" name="phonenumber"  datatype="m" nullmsg="手机号码不能为空" errormsg="手机号码不符合格式">
            </div>
            <div class="col-4"> </div>
        </div>
        <div class="row cl">
            <label class="form-label col-3"><span class="c-red">*</span>邮箱：</label>
            <div class="formControls col-5">
                <input type="text" class="input-text" placeholder="@" name="email" id="email" datatype="e" nullmsg="邮箱号码不能为空" errormsg="邮箱号码不符合格式" value="${tUser.email}">
            </div>
            <div class="col-4"> </div>
        </div>

        <div class="row cl">
            <label class="form-label col-3">地址：</label>
            <div class="formControls col-5">
                <textarea class="text-box multi-line" id="address" name="address" datatype="*2-100" nullmsg="地址不能为空" errormsg="地址字符长度2位以上"  >${tUser.address}</textarea>
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

