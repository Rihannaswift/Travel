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
                订单类型: <select name="orderId" id="orderId">
                <option value="-1">请选择</option>
                <option value="1">酒店订单</option>
                <option value="2">机票订单</option>
                <option value="3">景点订单</option>
            </select>
            </div>
        </div>
        <div class="row cl">
            <div class="cl pd-5">
                <button type="button"
                        class="btn btn-success radius" id="" name="" onclick="queryByOrderId()">
                    <i class="Hui-iconfont">&#xe665;</i> 查询
                </button>
            </div>
        </div>
    </div>
    <table class="table table-border table-bordered table-bg" id="authorization">
        <!--动态表格，将页面加载到这块区域-->
    </table>

</div>
<script type="text/javascript" src="../../lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="../../lib/layer/1.9.3/layer.js"></script>
<script type="text/javascript" src="../../lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript" src="../../lib/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="../../js/H-ui.js"></script>
<script type="text/javascript" src="../../js/H-ui.admin.js"></script>
<script type="text/javascript">

    //通过订单类型id查询订单的详情
    function queryByOrderId(){
        var orderId = $("#orderId").val();
        //判断用户是否勾选了订单类型
        if(orderId == -1){
            layer.msg('请选择订单类型', {icon: 5},{time:2000});
            return;
        }
        //根据用户选择的订单类型进行不同的查询，酒店订单查询是1，机票订单查询是2，景点订单查询是3
        if(orderId == 1){//查询酒店订单
            alert("查询酒店订单");
            $("#authorization").load("order/queryHotelOrder");
        }else if(orderId == 2){//查询机票订单
            alert("查询机票订单");
            $("#authorization").load("order/queryPlaneOrder");
        }else{//查询景点订单
            alert("进来了页面...........")
            $("#authorization").load("order/queryScenicSpotOrder");
        }
    }


</script>
</body>
</html>
