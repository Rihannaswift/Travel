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
<div class="pd-20">
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
            <th width="130">性别</th>
            <th width="130">使用状态</th>
            <th width="100">操作</th>
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
                <td class="td-manage">
                    <a title="删除" href="javascript:;" onclick="admin_del(this,${tAdmin.id},${roleId})"  class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6e2;</i></a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <!--导入page.jsp静态页面-->
    <jsp:include page="../common/page.jsp" >
        <jsp:param name="bodyId" value="authorization" />
    </jsp:include>

</div>
<script type="text/javascript" src="../../lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="../../lib/layer/1.9.3/layer.js"></script>
<script type="text/javascript" src="../../lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript" src="../../lib/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="../../js/H-ui.js"></script>
<script type="text/javascript" src="../../js/H-ui.admin.js"></script>
<script type="text/javascript">

    function admin_del(obj,id,roleId){
        layer.confirm('确认要解除授权关系吗？',function(index){
            alert("接收要删除的用户id:"+id+",角色id"+roleId);
            $.ajax({
                type:"get",
                url:"auth/delAuthAdmin",
                data:{"id":id,"roleId":roleId},
                success:function(result){
                    if(result.flag){//删除成功
                        layer.msg('授权关系解除成功!',{icon:6,time:2000});
                        $(obj).parents("tr").remove();//删除这一行
                        // location.reload();//刷新
                    }else{
                        layer.msg('授权关系解除失败!',{icon:5,time:2000});
                    }
                }
            });

        });
    }


</script>
</body>
</html>
