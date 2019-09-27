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
    <link rel="stylesheet" href="../../lib/zTree/v3/css/zTreeStyle/zTreeStyle.css" type="text/css">
    <title>Title</title>
</head>
<body id="userBody">
<div class="pd-20">
    <table class="table table-border table-bordered table-bg">
        <!--展示树的容器-->
        <div class="zTreeDemoBackground left">
            <ul id="treeDemo" class="ztree"></ul>
        </div>
    </table>
    <input type="button" class="btn btn-primary radius" value="授权新菜单" id="menu">
    <%--<input type="button" class="btn btn-primary radius" value="批量回收权限" id="del">--%>


</div>
<script type="text/javascript" src="../../lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="../../lib/layer/1.9.3/layer.js"></script>
<script type="text/javascript" src="../../lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript" src="../../lib/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="../../js/H-ui.js"></script>
<script type="text/javascript" src="../../js/H-ui.admin.js"></script>
<script type="text/javascript" src="../../lib/zTree/v3/js/jquery.ztree.core-3.5.js"></script>
<script type="text/javascript" src="../../lib/zTree/v3/js/jquery.ztree.excheck-3.5.js"></script>
<script type="text/javascript">
    $(function(){
        //授权新菜单的单击事件
        $("#menu").click(function(){
            //得出勾选的节点对象
            var treeObj = $.fn.zTree.getZTreeObj("treeDemo");
            var nodes = treeObj.getCheckedNodes(true);//nodes是已经勾选复选框的节点对象数组
            var ids = [];
            for(var i = 0;i<nodes.length;i++){
//                alert("已经勾选的框的菜单id是:"+nodes[i].menuId);
                ids.push(nodes[i].menuId);
            }
            //使用ajax技术来传值
            $.ajax({
                type:"get",
                url:"auth/authMenu",
                data:"ids="+ids+"&roleId="+${roleId},
                success:function (result) {
                    if (result.flag){//授权新菜单成功
                        layer.msg('授权成功', {icon: 6},{time:2000});
                    }else{//授权新菜单失败
                        layer.msg('授权失败', {icon: 5},{time:2000});
                    }
                }
            });
        });



        var setting = {
            check: {
                enable: true
            },
            data: {
                key: {
                    name: "menuName"
                },
                simpleData: {
                    enable: true,
                    idKey: "menuId",
                    pIdKey: "menuParentId",
                }
            }
        };
        console.log(${SysMenuVOList})
        //接收后台返回的SysMenuVO对象的集合对象，为json字符串
        var zNodes = ${SysMenuVOList};
        $(document).ready(function(){
            $.fn.zTree.init($("#treeDemo"), setting, zNodes);
        });
    });



    /*
    var zNodes =[
        { id:1, pId:0, name:"随意勾选 1", open:true},
        { id:11, pId:1, name:"随意勾选 1-1", open:true},
        { id:111, pId:11, name:"随意勾选 1-1-1"},
        { id:112, pId:11, name:"随意勾选 1-1-2"},
        { id:12, pId:1, name:"随意勾选 1-2", open:true},
        { id:121, pId:12, name:"随意勾选 1-2-1"},
        { id:122, pId:12, name:"随意勾选 1-2-2"},
        { id:2, pId:0, name:"随意勾选 2", checked:true, open:true},
        { id:21, pId:2, name:"随意勾选 2-1"},
        { id:22, pId:2, name:"随意勾选 2-2", open:true},
        { id:221, pId:22, name:"随意勾选 2-2-1", checked:true},
        { id:222, pId:22, name:"随意勾选 2-2-2"},
        { id:23, pId:2, name:"随意勾选 2-3"}
    ];*/

</script>
</body>
</html>
