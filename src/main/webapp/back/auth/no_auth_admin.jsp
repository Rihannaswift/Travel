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
<div class="pd-20">
    <div class="text-c">
        <div class="row cl ">
            <div class="formControls col-3">
                用户名: <input type="text" class="input-text" style="width: 250px" id="username" value="${username}">
            </div>
        </div>
        <div class="row cl">
            <div class="cl pd-5">
                <button type="button"
                        class="btn btn-success radius" id="" name="" onclick="queryUserByName(${roleId})">
                    <i class="Hui-iconfont">&#xe665;</i> 搜用户
                </button>
            </div>
        </div>
    </div>

    <div class="cl pd-5 bg-1 bk-gray mt-20">
        <span class="l"><a href="javascript:;" onclick="add(${roleId})" class="btn btn-primary radius">
            <i class="Hui-iconfont">&#xe600;</i> 批量添加</a> </span>
    </div>

    <form method="post" id="add_form">
        <table class="table table-border table-bordered table-bg">
            <<input type="hidden" name="roleId" value="${roleId}">
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
                <th width="130">性别</th>
                <th width="130">使用状态</th>
            </tr>
            </thead>
            <tbody>

            <c:forEach items="${pageInfo.list}" var="tAdmin">
                <tr class="text-c">
                    <td><input type="checkbox" value="${tAdmin.id}" name="id" class="delBox"></td>
                    <td>${tAdmin.id}</td>
                    <td>${tAdmin.username}</td>
                    <td>${tAdmin.phone}</td>
                    <td>${tAdmin.email}</td>
                    <td>
                        <fmt:formatDate value="${tAdmin.birthday}" pattern="yyyy-MM-dd"></fmt:formatDate>
                    </td>
                    <td>${tAdmin.sex}</td>
                    <td>
                        <c:if test="${tAdmin.flag eq '1'}">已启用</c:if>
                        <c:if test="${tAdmin.flag eq '0'}">已禁用</c:if>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </form>

    <!--导入page.jsp静态页面-->
    <jsp:include page="../common/page.jsp">
        <jsp:param name="bodyId" value="userBody"></jsp:param>
    </jsp:include>

</div>
<script type="text/javascript" src="../../js/jquery-1.8.2.js"></script>
<script type="text/javascript" src="../../lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="../../lib/layer/1.9.3/layer.js"></script>
<script type="text/javascript" src="../../lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript" src="../../lib/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="../../js/H-ui.js"></script>
<script type="text/javascript" src="../../js/H-ui.admin.js"></script>
<script type="text/javascript">

    /*第一种：表单序列化提交的方法
    //批量添加的方法
    function add() {
        if($(".cbox:checked").length==0){
            layer.msg('未勾选选框，请选择', {icon: 5},{time:2000});
            return;
        }
        //用户勾选了,ajax上传序列化数据
        $.post("auth/add",$("#add_form").serialize(),function (result) {
            if (result == "1"){
                location.reload();//刷新
            }
        });
    }*/

    /*第二种：老师讲授的传参数组的方法*/
    //批量添加的方法
    function add(roleId) {
        layer.confirm('确认要对该批用户进行批量授权吗？', function (index) {
            //先判断用户是否勾选复选框
            var cboxs = $(".delBox:checked");//得出已经是默认状态的勾选框
            if (cboxs.length == 0) {//未勾选
                layer.msg('请选择选框!', {icon: 5, time: 1000});
                return;
            }
            //用户已经勾选选框，现在遍历cbox的数组存值进一个数组;
            var ids = [];
            for (var i = 0; i < cboxs.length; i++) {
                //alert("已经勾选的选框的id值是:"+cboxs[i].value);
                ids.push(cboxs[i].value);//遍历已经勾选选框的数组，将用户id存到ids的数组中去
            }
            //接下来利用ajax来进行参数的传递,将参数传到role的线
            $.ajax({
                type: "get",
                url: "auth/batchAddAdminRole",
                data:"ids="+ids+"&roleId="+roleId,
                //data: {"ids": ids, "roleId": ${roleId}},
                // 此处不用json字符串，是因为ids是一个数组，如果用get，数据在请求体之外，可以用RequestParma来接收，但是如果用post，那么后台的
                //数据其实要加RequestBody，用来接收请求体中的数据
                success: function (result) {
                    //根据结果然后进行内容显示
                    if (result.flag) {//批量添加成功
                        layer.msg('批量授权成功!', {icon: 6, time: 1000});
                        location.reload();//刷新页面
                    }else{
                        layer.msg('批量授权失败!', {icon: 5, time: 1000});
                    }
                }
            });
        });
    }


    //通过名字模糊查询查询用户的相关信息
    function queryUserByName(roleId) {//通过当前角色id，用户姓名去查询数据
        var username = $("#username").val();//获得用户姓名
        $("#userBody").load("${url}", {"username": username, "roleId":roleId});//返回的数据在body中加载
    }


    /*
        参数解释：
        title	标题
        url		请求的url
        id		需要操作的数据id
        w		弹出层宽度（缺省调默认值）
        h		弹出层高度（缺省调默认值）
    */
</script>
</body>
</html>
