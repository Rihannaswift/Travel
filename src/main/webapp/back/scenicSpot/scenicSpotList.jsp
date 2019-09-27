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
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 景点管理 <span
        class="c-gray en">&gt;</span> 景点列表 <a class="btn btn-success radius r mr-20"
                                              style="line-height:1.6em;margin-top:3px"
                                              href="javascript:location.replace(location.href);" title="刷新"><i
        class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="pd-20">
    <div class="text-c">
        <div class="row cl ">
            <div class="formControls col-3">
                景点名称: <input type="text" class="input-text" style="width: 250px" id="title" value="${title}">
            </div>
        </div>
        <div class="row cl">
            <div class="cl pd-5">
                <button type="button"
                        class="btn btn-success radius" id="" name="" onclick="queryUserByCondition()">
                    <i class="Hui-iconfont">&#xe665;</i> 搜景点
                </button>
            </div>
        </div>
    </div>
    <div class="cl pd-5 bg-1 bk-gray mt-20">
        <!--sysUser/add-->
        <span class="l"><a href="javascript:;" onclick="batchDel()" class="btn btn-danger radius"><i
                class="Hui-iconfont">&#xe6e2;</i> 批量删除</a>
            <a href="javascript:;" onclick="admin_addUser('添加用户','bookScenic/addScenicSpot','800','600')"
               class="btn btn-primary radius"><i class="Hui-iconfont">&#xe600;</i> 添加景点</a></span>
        <span class="r">共有数据：<strong>${pageInfo.total}</strong> 条</span>
    </div>
    <form id="form">
        <table class="table table-border table-bordered table-bg">
            <thead>
            <tr>
                <th scope="col" colspan="9">景点列表</th>
            </tr>
            <tr class="text-c">
                <th width="25"><input type="checkbox" name="" value=""></th>
                <th width="40">ID</th>
                <th width="150">景点图片</th>
                <th width="90">景点名称</th>
                <th width="150">景点价格（元）</th>
                <th width="150">景点描述</th>
                <th width="100">操作</th>
            </tr>
            </thead>
            <tbody>

            <c:forEach items="${pageInfo.list}" var="tScenic">
                <tr class="text-c">
                    <td><input type="checkbox" value="${tScenic.id}" name="id" class="delBox"></td>
                    <td>${tScenic.id}</td>
                    <td>
                        <img src="../../${tScenic.image}" alt="图片加载失败">
                    </td>
                    <td>${tScenic.title}</td>
                    <td>${tScenic.price}</td>
                    <td>${tScenic.scenic}</td>
                    <td class="td-manage">
                        <a title="编辑" href="javascript:;" onclick="admin_edit('管理员编辑','bookScenic/toUpdate','${tScenic.id}','800','600')"
                           class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a>
                        <a title="删除" href="javascript:;" onclick="admin_del(this,${tScenic.id})" class="ml-5"
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
                    url: "bookScenic/batchDel",
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
        var title = $("#title").val();//将输入的用户名信息传过来
        alert("接收到景点查询的关键字是:"+title);
        $("#userBody").load("bookScenic/pageByCondition", {"title": title});
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
            $.ajax({
                type: "post",
                url: "bookScenic/del",
                data: {"id": id},
                success: function (result) {
                    if (result == "1") {//删除成功
                       /* location.reload();//刷新*/
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
</script>
</body>
</html>
