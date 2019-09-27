<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <base href="${pageContext.request.contextPath}/"/>
    <link href="../../css/H-ui.min.css" rel="stylesheet" type="text/css"/>
    <link href="../../css/H-ui.admin.css" rel="stylesheet" type="text/css"/>
    <link href="../../css/style.css" rel="stylesheet" type="text/css"/>
    <link href="../../lib/Hui-iconfont/1.0.1/iconfont.css" rel="stylesheet" type="text/css"/>
    <title>Title</title>
</head>
<body id="userBody">
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 用户管理 <span
        class="c-gray en">&gt;</span> 用户列表 <a class="btn btn-success radius r mr-20"
                                              style="line-height:1.6em;margin-top:3px"
                                              href="javascript:location.replace(location.href);" title="刷新"><i
        class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="pd-20">
    <div class="text-c">
        <div class="row cl ">
            <div class="formControls col-3">
                用户名: <input type="text" class="input-text" style="width: 250px" id="username" value="${user.username}">
            </div>
            <div class="formControls col-4">
                手机： <input type="text" class="input-text" style="width: 250px" id="phonenumber" value="${user.phonenumber}">
            </div>
            <div class="formControls col-5">
                邮箱： <input type="text" class="input-text" style="width: 250px" id="email" value="${user.email}">
            </div>
        </div>
        <div class="row cl">
            <div class="cl pd-5">
                <button type="button"
                        class="btn btn-success radius" id="" name="" onclick="queryUserByCondition()">
                    <i class="Hui-iconfont">&#xe665;</i> 搜用户
                </button>
            </div>
        </div>
    </div>
    <div class="cl pd-5 bg-1 bk-gray mt-20">
        <!--sysUser/add-->
        <span class="l"><a href="javascript:;" onclick="batchDel()" class="btn btn-danger radius"><i
                class="Hui-iconfont">&#xe6e2;</i> 批量删除</a>
            <a href="javascript:;" onclick="admin_addUser('添加用户','user/showAddUser','800','600')"
               class="btn btn-primary radius"><i class="Hui-iconfont">&#xe600;</i> 添加用户</a></span>
        <span class="r">共有数据：<strong>${pageInfo.total}</strong> 条</span>
    </div>
    <form id="form">
        <table class="table table-border table-bordered table-bg">
            <thead>
            <tr>
                <th scope="col" colspan="9">用户列表</th>
            </tr>
            <tr class="text-c">
                <th width="25"><input type="checkbox" name="" value=""></th>
                <th width="40">ID</th>
                <th width="150">用户名</th>
                <th width="90">手机</th>
                <th width="150">邮箱</th>
                <th width="150">生日</th>
                <th width="130">地址</th>
                <th width="130">使用状态</th>
                <th width="100">操作</th>
            </tr>
            </thead>
            <tbody>

            <c:forEach items="${pageInfo.list}" var="tuser">
                <tr class="text-c">
                    <td><input type="checkbox" value="${tuser.id}" name="id" class="delBox"></td>
                    <td>${tuser.id}</td>
                    <td>${tuser.username}</td>
                    <td>${tuser.phonenumber}</td>
                    <td>${tuser.email}</td>
                    <td>
                        <fmt:formatDate value="${tuser.birthday}" pattern="yyyy-MM-dd"></fmt:formatDate>
                    </td>
                    <td>${tuser.address}</td>
                    <td>
                        <c:if test="${tuser.lockstate eq '1'}">已启用</c:if>
                        <c:if test="${tuser.lockstate eq '0'}">已禁用</c:if>
                    </td>

                    <td class="td-manage">
                        <a class="a1" style="text-decoration:none"
                           onClick="admin_stop(this,${tuser.id},${tuser.lockstate})" href="javascript:;"
                           title="停用"><i class="Hui-iconfont">&#xe631;</i></a>
                        <a title="编辑" href="javascript:;" onclick="admin_edit('管理员编辑','user/toUpdate','${tuser.id}','800','600')"
                           class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a>
                        <a title="删除" href="javascript:;" onclick="admin_del(this,${tuser.id})" class="ml-5"
                           style="text-decoration:none"><i class="Hui-iconfont">&#xe6e2;</i></a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
      <%--  <a href="sysUser/test">测试</a>--%>
    </form>
    <!--导入page.jsp静态页面-->
    <jsp:include page="../common/page.jsp">
        <jsp:param name="bodyId" value="userBody"/>
    </jsp:include>

</div>
<script type="text/javascript" src="../../lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="../../lib/layer/1.9.3/layer.js"></script>
<script type="text/javascript" src="../../lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript" src="../../lib/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="../../js/H-ui.js"></script>
<script type="text/javascript" src="../../js/H-ui.admin.js"></script>
<script type="text/javascript">

    //批量删除的方法
    function batchDel() {
        if ($(".delBox:checked").length == 0) {//没有勾选选框，不能进行批量删除
            layer.msg('请选择选框', {icon: 5}, {time: 2000});
        } else {//已选择，进行ajax删除，提交表单
            layer.confirm('确认要删除吗？', function (index) {
                $.ajax({
                    type: "post",
                    url: "user/batchDel",
                    data: $("#form").serialize(),
                    success: function (result) {
                        if (result == "1") {//删除成功
//                        alert("已经删除成功.....");
                            layer.msg('已删除!', {icon: 1, time: 1000});
                            location.reload();//刷新界面
                        }
                    }
                });
            });
        }
    }

    //通过名字模糊查询查询用户的相关信息
    function queryUserByCondition() {
        var username = $("#username").val();//将输入的用户名信息传过来
        var email = $("#email").val();
        var phonenumber = $("#phonenumber").val();
        alert("接收到的值是--用户名:"+username+",手机："+phonenumber+",邮箱:"+email);
//        $("#userBody").load("sysUser/pageByName",{"userName":userName});//看通过body的提交能否将页码给带过去
        $("#userBody").load("user/pageByCondition", {"username": username, "email": email, "phonenumber": phonenumber});
    }


    /*
        参数解释：
        title	标题
        url		请求的url
        id		需要操作的数据id
        w		弹出层宽度（缺省调默认值）
        h		弹出层高度（缺省调默认值）
    */
    /*管理员-增加*/
    function admin_addUser(title, url, w, h) {
//        alert(url);
        layer_show(title, url, w, h);
    }

    /*管理员-删除*/
    function admin_del(obj, id) {
        layer.confirm('确认要删除吗？', function (index) {
//            此处请求后台程序，下方是成功后的前台处理……
//            使用ajax进行删除
//            alert("进入删除的ajax界面");
            $.ajax({
                type: "post",
                url: "user/del",
                data: {"id": id},
                success: function (result) {
                    if (result == "1") {//删除成功
                        location.reload();//刷新
                        $(obj).parents("tr").remove();
                        layer.msg('已删除!', {icon: 6, time: 1000});
                    }else{
                        layer.msg('您没有删除的权限', {icon: 5, time: 1000});
                    }
                }
            });

        });
    }

    /*管理员-编辑*/
    function admin_edit(title, url, id, w, h) {
        var url = url+"?id="+id;
        layer_show(title, url, w, h);
    }

    /*管理员-停用*/
    function admin_stop(obj, id, lockstate) {
        if (lockstate == 1) {//本来是启用的
            layer.confirm('确认要停用吗？', function (index) {
                //此处请求后台程序，下方是成功后的前台处理……
//                alert("接收到的用户id是:"+id);
                $.ajax({
                    type: "post",
                    url: "user/use",
                    data: {"id": id, "lockstate": 0},
                    success: function (result) {
                        if (result == "1") {
                            location.reload();
                        }
                    }
                });
                layer.msg('已停用!', {icon: 5, time: 1000});
            });
        } else {
            layer.confirm('确认要启用吗？', function (index) {
                //此处请求后台程序，下方是成功后的前台处理……
//                alert("接收到的用户id是:"+id);
                $.ajax({
                    type: "post",
                    url: "user/use",
                    data: {"id": id, "lockstate": 1},
                    success: function (result) {
                        if (result == "1") {
                            location.reload();
                        }
                    }
                });

                layer.msg('已启用!', {icon: 6, time: 1000});
            });

        }

    }

    /*管理员-启用
    function admin_start(obj,id){
        layer.confirm('确认要启用吗？',function(index){
            //此处请求后台程序，下方是成功后的前台处理……
            alert("接收到的用户id是:"+id);
            $.ajax({
                type:"post",
                url:"sysUser/use",
                data:{"userId":id,"flag":"true"},
                success:function(result){
                    if(result == "1"){
                        alert("启用成功");
                        location.reload();
                    }
                }
            });

            $(obj).parents("tr").find(".td-manage").prepend('<a onClick="admin_stop(this,id)" href="javascript:;" title="停用" style="text-decoration:none"><i class="Hui-iconfont">&#xe631;</i></a>');
            $(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已启用</span>');
            $(obj).remove();
            layer.msg('已启用!', {icon: 6,time:1000});
        });
    }*/

</script>
</body>
</html>
