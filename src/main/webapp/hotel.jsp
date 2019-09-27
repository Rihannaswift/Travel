<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <base href="<%=request.getContextPath()+"/"%>"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=7" />
    <meta name="Author" content="" />
    <title>我的虚拟世界店铺</title>
    <link href="css/css_whir.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="Scripts/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="js/jquery-1.8.2.js"></script>
    <script type="text/javascript" src="js/Validform_v5.3.2_min.js"></script>
    <link rel="stylesheet" href="css/valid.css" media="all">
    <link rel="stylesheet" href="layui/css/layui.css" media="all">
    <script type="text/javascript" src="layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" language="javascript">
        var nav= '07'
        var right= '02'
        layui.use('laydate', function(){
            var laydate = layui.laydate;

            //执行一个laydate实例
            laydate.render({
                elem: '#test1'//指定元素

            });
            //执行一个laydate实例
            laydate.render({
                elem: '#test2'//指定元素

            });
        });

        $(function () {
            $("#subtn").click(function () {
                $("#form").submit();
            });

            $("#form").Validform({//给form表单取个id吧
                tiptype : 3,//1,2,3呈现不同效果，可以自行尝试，当然3是最好
                showAllError : true,
                //全部显示错误提示，默认就行
                datatype:{
                    "z2-4": /^[\u4E00-\u9FA5\uf900-\ufa2d]{2,4}$/,
                }
            });

        });


    </script>

</head>

<body>
<!--头部-->
<div class="Header">
    <div class="Top">
        <div class="Top_one">
            <div class="Login">您好，欢迎光临。<a href="login.html" class="a1">登录</a><span> | </span><a href="register.html" class="a2">注册</a><em><a href="member_index.html" class="a3">用户名110</a> <a href="#" class="a4">退 出</a></em></div>
            <h1>
                <em><a href="orders.html">订单查询</a></em>|
                <em><a href="member.html" class="amy">我的账户</a>
                    <div class="amylist">我的账户</div></em>|
                <em><a href="#">在线留言</a>|<a href="#">收藏</a></em>|
                <em><a href="sitemap.html" class="amy">网站导航</a></em>
            </h1>

        </div>

        <div class="area"></div>
        <div class="Menu">
            <ul>
                <li class="menu01"><a id="nav01" href="index.html"><em>首页</em></a></li>
                <li class="menu02"><a id="nav02" href="domestic_index.html"><em>国内线路</em></a></li>
                <li class="menu03"><a id="nav03" href="#"><em>境外线路</em></a></li>
                <li class="menu04"><a id="nav04" href="topic.html"><em>专题</em></a></li>
                <li class="menu05"><a id="nav05" href="prefer_today.html"><em>特惠路线</em></a></li>
                <li class="menu06"><a id="nav06" href="attract.html"><em>景点推荐</em></a></li>
                <li class="menu07"><a id="nav07" href="hotel.html"><em>机票酒店</em></a></li>
                <li class="menu08"><a id="nav08" href="news.html"><em>旅游资讯</em></a></li>
                <li class="menu09"><a id="nav09" href="about.html"><em>关于我们</em></a></li>
            </ul>
        </div>
        <div class="Hot">
            <div class="Search">
                <div class="selectlist">
                    <select id="select" style="display:none" name="select">
                        <option value="1" selected="selected">线路</option>
                        <option value="2">国内线路</option>
                        <option value="3">境内线路</option>
                        <option value="4">特惠线路</option>
                    </select>
                </div>
                <script src="Scripts/jQselect.js" type="text/javascript"></script>
                <script type="text/javascript">
                    $(document).ready(function() {
                        $("#select").selectbox();
                    });
                </script>
                <!---->
                <div class="Inputbtn">
                    <input type="text" class="input" value="请输入目的地名称或线路名称" onfocus="this.value=''"><input type="button" class="btn" onClick="location.href='search.html'" onfocus="this.blur()">
                </div>
                <!---->
            </div>
            <div class="Hotword"><span>热搜：</span><a href="#">成都旅游</a><a href="#">旅游城市</a><a href="#">鼓浪屿三亚旅游景点排行榜 </a></div>
            <!-- JiaThis Button BEGIN -->
            <div class="jiathis_style">
                <span>分享到：</span>
                <a class="jiathis_button_qzone"></a>
                <a class="jiathis_button_tsina"></a>
                <a class="jiathis_button_tqq"></a>
                <a class="jiathis_button_renren"></a>
                <a class="jiathis_button_kaixin001"></a>
                <a href="http://www.jiathis.com/share" class="jiathis jiathis_txt jtico jtico_jiathis" target="_blank"></a>
                <a class="jiathis_counter_style"></a>
            </div>
            <script type="text/javascript" src="http://v3.jiathis.com/code/jia.js?uid=1350527610574236" charset="utf-8"></script>
            <!-- JiaThis Button END -->
        </div>
    </div>
</div>
<!--选中菜单-->
<script language="javascript" type="text/javascript">
    try{
        document.getElementById("nav" + nav).className= "acur";
    }catch(ex){}
</script>
<!--选中菜单-->

<!--[if IE 6]>
<script type="text/javascript" src="Scripts/DD_belatedPNG.js" ></script>
<script type="text/javascript">
    DD_belatedPNG.fix('.tippic,.tips,.newsIcon,.Menu');
</script>
<![endif]--><!--头部 end-->
<!--内容-->
<div class="Content">
    <div class="Current">您当前的位置：<a href="#">首页</a> > 机票酒店</div>

    <!--左-->
    <div class="Index_left">
        <div class="space20"></div>
        <div class="Hotelbook">
            <h1>酒店推荐</h1>
            <div class="space10"></div>
            <form action="/order/hotelOrder" method="post" id="form">
                <table cellpadding="0" cellspacing="0" border="0" width="100%" class="table1">
                    <tr><td align="right">入住城市：</td><td colspan="3"><input type="text" class="input04" name="cityname" datatype="z2-4" nullmsg="城市名不能为空！" errormsg="请正确填写城市名" placeholder="城市名称"/></td></tr>
                    <tr><td align="right">入住日期：</td><td><input type="text" class="layui-input input03" name="checkindate" id="test1" datatype="/^((?!0000)[0-9]{4}-((0[1-9]|1[0-2])-(0[1-9]|1[0-9]|2[0-8])|(0[13-9]|1[0-2])-(29|30)|(0[13578]|1[02])-31)|([0-9]{2}(0[48]|[2468][048]|[13579][26])|(0[48]|[2468][048]|[13579][26])00)-02-29)$/" nullmsg="日期不能为空！" errormsg="请正确填写日期" placeholder="入住日期"/></td>
                        <td align="right">退房日期：</td><td><input type="text" class="layui-input input03" name="checkoutdate" id="test2" datatype="/^((?!0000)[0-9]{4}-((0[1-9]|1[0-2])-(0[1-9]|1[0-9]|2[0-8])|(0[13-9]|1[0-2])-(29|30)|(0[13578]|1[02])-31)|([0-9]{2}(0[48]|[2468][048]|[13579][26])|(0[48]|[2468][048]|[13579][26])00)-02-29)$/" nullmsg="日期不能为空！" errormsg="请正确填写日期" placeholder="退房日期"></td></tr>
                    <tr><td align="right">酒店位置：</td><td><input type="text" class="input01" name="hoteladdress" datatype="s2-20" nullmsg="酒店位置不能为空！" errormsg="请正确填写酒店位置" placeholder="酒店位置"/></td>
                        <td width="100" align="right">酒店名称：</td><td><input type="text" class="input01" name="hotelname" datatype="s2-20" nullmsg="酒店名称不能为空！" errormsg="请正确填写酒店名称" placeholder="城市名称"/></td></tr>
                    <tr><td align="right">姓    名：</td><td><input type="text" class="input01" name="realname" datatype="z2-4" nullmsg="姓名不能为空！" errormsg="请正确填写姓名" placeholder="姓名"/></td>
                        <td width="100" align="right">联系电话：</td><td><input type="text" class="input01" name="phonenumber" datatype="m" nullmsg="联系电话不能为空！" errormsg="请正确填写联系电话" placeholder="联系电话"/></td></tr>
                    <tr><td align="right">电子邮箱：</td><td colspan="3"><input type="text" class="input01" name="email" datatype="e" nullmsg="电子邮箱不能为空！" errormsg="请正确填写电子邮箱" placeholder="电子邮箱"/></td></tr>
                    <tr><td align="right">联系地址：</td><td colspan="3"><input type="text" class="input02" name="address" datatype="s2-50" nullmsg="联系地址不能为空！" errormsg="请正确填写联系地址" placeholder="联系地址"/></td></tr>
                    <tr><td align="right" valign="top">备   注：</td><td colspan="3"><textarea name="remarks" placeholder="有其它需求请写明备注"></textarea></td></tr>
                    <tr><td></td><td colspan="3"><input type="button" class="btn" id="subtn" /></td></tr>
                </table>
            </form>
        </div>


    </div>
    <!--右-->
    <div class="Index_right">
        <!---->
        <div class="Sidemenu">
            <h1><img src="images/title_jipiao.jpg" /></h1>
            <dl>
                <dd><a id="right01" href="plane.jsp">机票预订</a></dd>
                <dd><a id="right02" href="hotel.jsp">酒店推荐</a></dd>
            </dl>
            <!--选中菜单-->
            <script language="javascript" type="text/javascript">
                try{
                    document.getElementById("right" + right).className= "aon";
                }catch(ex){}
            </script>
            <!--选中菜单-->
        </div><!---->
    </div>

</div>
<!--内容end-->
<div class="clear"></div>
<div class="space20"></div>
<!--底部信息-->
<div class="Bottom">
    <div class="space20"></div>
    <div class="BottomInfo">
        <dl>
            <dt>
                <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=123456789&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:123456789:41" alt="点击这里给我发消息" title="点击这里给我发消息"></a><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=123456789&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:123456789:41" alt="点击这里给我发消息" title="点击这里给我发消息"></a>
            </dt>
            <dd>
                <img src="images/pic_xszd.jpg" />
                <p>
                    <a href="help.html">常见问题</a>
                    <a href="#">如何注册</a>
                    <a href="#">订购流程</a>
                    <a href="#">付款流程</a>
                </p>
            </dd>
            <dd>
                <img src="images/pic_zffs.jpg" />
                <p>
                    <a href="#">支付宝支付</a>
                    <a href="#">银行付款</a>
                    <a href="#">门市支付</a>
                    <a href="#">上门服务</a>
                </p>
            </dd>
            <dd class="end">
                <img src="images/pic_gywm.jpg" />
                <p>
                    <a href="about.html">远景旅社</a>
                    <a href="#">联系我们</a>
                    <a href="#">核心优势</a>
                    <a href="#">商家合作</a>
                </p>
            </dd>
        </dl>
    </div>
    <div class="space20"></div>
    <h5><a href="#">流量统计</a> | <a href="sitemap.html">网站地图</a> | <a href="#">法律申明</a> | <a href="links.html">友情链接</a> | <a href="#">在线客服</a> | <a href="help.html">帮助中心</a></h5>
    <h4>版权所有 © 2012-2018 我的虚拟世界店铺<br />技术支持： 旅游许可证号：L-GD00000 网站备案号：粤ICP备00000000号</h4>
</div><!--底部信息 end-->

</body>
</html>
