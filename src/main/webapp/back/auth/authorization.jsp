<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <base href="${pageContext.request.contextPath}/" />
    <link href="../../css/H-ui.min.css" rel="stylesheet" type="text/css" />
    <link href="../../css/H-ui.admin.css" rel="stylesheet" type="text/css" />
    <link href="../../css/style.css" rel="stylesheet" type="text/css" />
    <link href="../../lib/Hui-iconfont/1.0.1/iconfont.css" rel="stylesheet" type="text/css" />
    <title>Title</title>
</head>
<body id="userBody">
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 授权管理 <span class="c-gray en">&gt;</span> 权限列表 <a class="btn btn-success radius r mr-20" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="pd-20">
    <div class="text-c">
        <div class="row cl ">
            <div class="formControls col-6">
                角色: <select name="roleId" id="roleId">
                <option value="-1">请选择</option>
                <c:forEach items="${roleList}"  var="role">
                    <option value="${role.roleid}">${role.rolename}</option>
                </c:forEach>
            </select>
            </div>
            <div class="formControls col-6">
                类型：<select name="type" id="type">
                <option value="-1">请选择</option>
                <option value="1">用户</option>
                <option value="2">菜单</option>
            </select>
            </div>
        </div>
        <div class="row cl">
            <div class="cl pd-5">
                <button type="button"
                        class="btn btn-success radius" id="" name="" onclick="queryByRoleId()">
                    <i class="Hui-iconfont">&#xe665;</i> 查询
                </button>
            </div>
        </div>
    </div>
    <div class="cl pd-5 bg-1 bk-gray mt-20"> <span class="l"><a href="javascript:;" onclick="add_role_user('授权新用户','auth/queryNoAdminByRoleId','800','500')" class="btn btn-primary radius"><i class="Hui-iconfont">&#xe600;</i> 授权新用户</a>
        </span>
    </div>
    <table class="table table-border table-bordered table-bg" id="authorization">
        <!--动态表格，将页面加载到这块区域-->
    </table>


</div>
<script type="text/javascript" src="../../js/jquery-1.8.2.js"></script>
<script type="text/javascript" src="../../lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="../../lib/layer/1.9.3/layer.js"></script>
<script type="text/javascript" src="../../lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript" src="../../lib/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="../../js/H-ui.js"></script>
<script type="text/javascript" src="../../js/H-ui.admin.js"></script>
<script type="text/javascript">

    //授权新用户，查询此角色底下没有的用户信息，在layui弹出的窗口中展示数据
    function add_role_user(title,url,w,h){
        var roleId = $("#roleId").val();
        var type = $("#type").val();
        if(roleId == -1){//角色的非空判断
            layer.msg('请选择角色', {icon: 5},{time:2000});
            return;
        }
        if (type == -1){//类型的非空判断
            layer.msg('请选择类型', {icon: 5},{time:2000});
            return;
        }
        //非空判断完之后，对授权的类型进行判断
        if(type==1){//点击了用户
            layer_show(title,url+"?roleId="+roleId,w,h);
        }else{
//            alert("选择用户却进入了菜单类型");
            layer.msg('请选择用户类型', {icon: 5},{time:2000});
        }

    }

    //通过角色id查询用户/菜单的方法
    function queryByRoleId(){
        var roleId = $("#roleId").val();
        alert("选择的角色类型id是:"+roleId);
        var type = $("#type").val();
        //判断用户是否勾选了角色信息和类型信息,
        if(roleId == -1){
            layer.msg('请选择角色', {icon: 5},{time:2000});
            return;
        }
        if(type == -1){
            layer.msg('请选择类型', {icon: 5},{time:2000});
            return;
        }
        //根据用户选择的类型进行不同的查询，type=1，查询用户，type=2，查询菜单
        if(type == 1){//查询用户，查询的结果在table区域进行展示
            $("#authorization").load("auth/queryAuthorizationUesrByRoleId",{"roleId":roleId});
        }else{//查询菜单，查询的结果在table区域进行展示
            $("#authorization").load("auth/queryAuthorizationMenuByRoleId",{"roleId":roleId});
        }

    }

</script>
</body>
</html>

