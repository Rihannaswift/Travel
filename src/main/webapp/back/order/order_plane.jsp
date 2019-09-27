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
    <div class="cl pd-5 bg-1 bk-gray mt-20">
        <!--sysUser/add-->
        <span class="l"><a href="javascript:;" onclick="batchDel()" class="btn btn-danger radius"><i
                class="Hui-iconfont">&#xe6e2;</i> 批量删除</a></span>
    </div>

    <table class="table table-border table-bordered table-bg">
        <thead>
        <tr>
            <th scope="col" colspan="9">机票订单列表</th>
        </tr>
        <tr class="text-c">
            <th width="25"><input type="checkbox" name="" value=""></th>
            <th width="40">ID</th>
            <th width="150">预定方式</th>
            <th width="90">出发城市</th>
            <th width="150">到达城市</th>
            <th width="130">出发日期</th>
            <th width="150">航空公司</th>
            <th width="150">舱位</th>
            <th width="130">姓名</th>
            <th width="130">联系电话</th>
            <th width="100">操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${pageInfo.list}" var="tPlaneorder">

            <tr class="text-c">
                <td><input type="checkbox" value="${tPlaneorder.id}" name="" class="delBox" ></td>
                <td>${tPlaneorder.id}</td>
                <td>${tPlaneorder.booking}</td>
                <td>${tPlaneorder.departurecity}</td>
                <td>${tPlaneorder.arrivalcity}</td>
                <td>
                    <fmt:formatDate value="${tPlaneorder.departuretime}" pattern="yyyy-MM-dd"></fmt:formatDate>
                </td>
                <td>${tPlaneorder.airlinecompany}</td>
                <td>${tPlaneorder.shipspace}</td>
                <td>${tPlaneorder.realname}</td>
                <td>${tPlaneorder.phonenumber}</td>
                <td class="td-manage">
                    <a title="删除" href="javascript:;" onclick="admin_del(this,${tPlaneorder.id})"  class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6e2;</i></a></td>
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

    //单个删除的方法
    function admin_del(obj,id) {
        layer.confirm('确认要删除吗？', function (index) {
            //进行删除,ajax
            $.ajax({
                type:"get",
                url:"order/delPlaneOrder",
                data:{"id":id},
                success:function (result) {
                    if(result.flag){//删除成功
                        $(obj).parents("tr").remove();
                        layer.msg('已删除',{icon:6,time:1000});
                    }else{
                        layer.msg('您没有删除的权限',{icon:5,time:1000});
                    }
                }
            });

        });
    }

    //批量删除的方法
    function batchDel() {
        var checkBox = $(".delBox:checked");
        if (checkBox.length==0){//未选择选框
            layer.msg('请勾选选框',{icon:5,time:1000});
        }else {
            layer.confirm('确认要删除吗？', function (index) {
                var ids = [];
                //将checkBox中id赋予到ids数组中
                for(var i =0;i<checkBox.length;i++){
                    ids.push(checkBox[i].value);
                }
                //发送ajax请求进行批量删除
                $.ajax({
                    type:"get",
                    url:"order/batchDelPlaneOrder",
                    data:"ids="+ids,
                    success:function (result) {
                        if (result.flag){//删除成功
                            layer.msg('已删除',{icon:6,time:1000});
                            //遍历checkBox
                            $(".delBox:checked").each(function () {
                                $(this).parents("tr").remove();//移除tr
                            });
                        }else{//删除失败
                            layer.msg('您没有删除的权限',{icon:5,time:1000});
                        }
                    }
                });
            });
        }
    }

</script>
</body>
</html>

