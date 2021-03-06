<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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


    <!--layui的头部标签-->
    <script type="text/javascript" src="js/jquery-1.8.2.js"></script>
    <link rel="stylesheet" href="layui/css/layui.css" media="all">
    <script src="layui/layui.js"></script>
    <link href="css/valid.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="js/Validform_v5.3.2.js"></script>
    <script type="text/javascript" language="javascript">
        var m= '01';
        //弹出日期窗口的插件
        layui.use('laydate', function(){
            var laydate = layui.laydate;
            //执行一个laydate实例
            laydate.render({
                elem: '#btest'//指定元素
            });
        });
        $(function () {
            $("#form").Validform({
                tiptype:3,
                showAllError:true
            });
        });


    </script>

</head>

<body>
<!--头部-->
<div class="Header">
    <div class="Top">
        <div class="Top_one">
            <div class="Login">您好，欢迎光临。<a href="login.jsp" class="a1">登录</a><span> | </span><a href="register.jsp" class="a2">注册</a><em><a href="member_index.jsp" class="a3">用户名110</a> <a href="#" class="a4">退 出</a></em></div>
            <h1>
                <em><a href="orders.jsp">订单查询</a></em>|
                <em><a href="member_index.jsp" class="amy">我的账户</a>
                    <div class="amylist">我的账户</div></em>|
                <em><a href="#">在线留言</a>|<a href="#">收藏</a></em>|
                <em><a href="sitemap.jsp" class="amy">网站导航</a></em>
            </h1>

        </div>

        <div class="area"></div>
        <div class="Menu">
            <ul>
                <li class="menu01"><a id="nav01" href="index.jsp"><em>首页</em></a></li>
                <li class="menu02"><a id="nav02" href="domestic_index.jsp"><em>国内线路</em></a></li>
                <li class="menu03"><a id="nav03" href="#"><em>境外线路</em></a></li>
                <li class="menu04"><a id="nav04" href="topic.jsp"><em>专题</em></a></li>
                <li class="menu05"><a id="nav05" href="prefer_today.jsp"><em>特惠路线</em></a></li>
                <li class="menu06"><a id="nav06" href="attract.jsp"><em>景点推荐</em></a></li>
                <li class="menu07"><a id="nav07" href="hotel.jsp"><em>机票酒店</em></a></li>
                <li class="menu08"><a id="nav08" href="news.jsp"><em>旅游资讯</em></a></li>
                <li class="menu09"><a id="nav09" href="about.jsp"><em>关于我们</em></a></li>
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
    <div class="Current">您当前的位置：<a href="#">首页</a> > 会员中心</div>

    <!--左-->
    <div class="Index_left">
        <div class="mod3">
            <div class="title">
                <h1 class="hide_word">
                    用户登陆</h1>
            </div>
            <form  method="post" action="user/update" id="form" >

                <input type="hidden" name="id" value="${frontUser.id}"/>

                <table class="table1">
                    <tr>
                        <td class="td1">
                            <span class="required">*</span><label for="realname">姓名</label>：
                        </td>
                        <td class="td2">
                            <input type="text" class="realname" name="realname" value="${frontUser.realname}" datatype="*2-6" nullmsg="用户名不能为空" errormsg="用户名长度为2-6个字符" />
                        </td>
                        <td class="td3">
                            <span class="input_tips name">（请填写真实姓名）</span>
                        </td>
                    </tr>
                    <tr>
                        <td class="td1">
                            <span class="required">*</span><label for="sex">性别</label>：
                        </td>

                        <td>
                            <label>

                                <input type="radio" name="sex" value="男" id="RadioGroup1_0" <c:if test="${frontUser.sex eq '男'}">checked="checked"</c:if> />
                                男</label>
                            <label>
                                <input type="radio" name="sex" value="女" id="RadioGroup1_1" <c:if test="${frontUser.sex eq '女'}">checked="checked"</c:if> />
                                女</label>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td class="td1">
                            <span class="required">*</span><label for="idtype">证件类型</label>：
                        </td>
                        <td>

                            <select class="long" name="idtype">
                                <option value="身份证">身份证</option>
                            </select>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td class="td1">
                            <span class="required">*</span><label for="idnumber">证件号码</label>：
                        </td>
                        <td>
                            <input type="text" class="idnumber" name="idnumber" value="${frontUser.idnumber}" datatype="/^[1-9]\d{5}(18|19|([23]\d))\d{2}((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$/" nullmsg="身份证号码不能为空" errormsg="身份证号码格式错误" />
                        </td>
                        <td>
                            <span class="field-validation-valid" data-valmsg-for="IdentityNumber" data-valmsg-replace="true"></span>
                        </td>
                    </tr>
                    <tr>
                        <td class="td1">
                            <span class="required">*</span><label for="bir">出生日期</label>：
                        </td>
                        <td>
                            <input type="text" class="layui-input input03" id="btest"  name="birthday" value="<fmt:formatDate value="${frontUser.birthday}" pattern="yyyy-MM-dd"/>" datatype="/^(\d{4})-(\d{2})-(\d{2})$/" nullmsg="日期不能为空" errormsg="日期格式不符合yyyy-MM-dd" />
                        </td>
                        <td>
                        </td>
                    </tr>

                    <tr class="binding">
                        <td class="td1">
                            <label for="email">电子邮箱</label>：
                        </td>
                        <td>
                            <input type="text" class="email" name="email" value="${frontUser.email}" datatype="e" nullmsg="邮箱不能为空" errormsg="邮箱号码格式错误"  />
                        </td>
                        <td>
                            <a href="/account/security" class="blank">如须更改绑定的邮箱，请点击此处</a>
                        </td>
                    </tr>
                    <tr class="no_bind">
                        <td class="td1">
                            <label for="phonenumber">手机号码</label>：
                        </td>
                        <td>
                            <input type="text" class="phonenumber" name="phonenumber" value="${frontUser.phonenumber}" datatype="m" nullmsg="手机号码不能为空" errormsg="手机号码格式错误"   />
                        </td>
                        <td>
                            <a href="#" class="blank">立即绑定</a>
                            <span class="input_tips">（绑定手机有利于账户安全，取回密码更方便）</span>
                        </td>
                    </tr>
                    <tr>
                        <td class="td1">
                            <label for="post">邮政编码</label>：
                        </td>
                        <td>
                            <input type="text" class="post" name="post" value="${frontUser.post}" datatype="p" nullmsg="邮编不能为空" errormsg="邮编号码格式错误" />
                        </td>
                        <td>
                            <span class="field-validation-valid" data-valmsg-for="ZipCode" data-valmsg-replace="true"></span>
                        </td>
                    </tr>
                    <tr>
                        <td class="td1 v_top">
                            <label for="address">通讯地址</label>：
                        </td>
                        <td colspan="2">
                            <textarea class="text-box multi-line" id="address" name="address" datatype="*2-100" nullmsg="地址不能为空" errormsg="地址字符长度2位以上"  >${frontUser.address}</textarea>
                            <span class="field-validation-valid" data-valmsg-for="Address" data-valmsg-replace="true"></span>
                        </td>
                    </tr>

                    <tr>
                        <td class="td1">
                        </td>
                        <td colspan="2">
                            <input type="submit" id="subtn" value="保存修改" />
                        </td>
                    </tr>
                </table>
            </form>
        </div>


    </div>
    <!--右-->
    <div class="Index_right">
        <!---->
        <div class="Sidemenu">
            <h1><img src="images/member_title.jpg" /></h1>
            <div class="membermenu">
                <p><a class="open" id="right01" href="member.jsp">我的信息</a>
                <div class="memberdiv">
                    <a id="m01" href="member.jsp">个人资料</a>
                    <a id="m02" href="password.jsp">修改密码</a>
                    <a id="m03" href="#">常用地址</a>
                </div>
                <p><a class="open" id="right02" href="#">我的订单</a>
                <div class="memberdiv">
                    <a id="m04" href="#">旅游订单</a>
                    <a id="m05" href="orders.jsp">团购订单</a>
                </div>
            </div>
            <!--选中菜单-->
            <script language="javascript" type="text/javascript">
                try{
                    document.getElementById("m" + m).className= "aron";
                }catch(ex){}
            </script>
            <!--选中菜单-->
            <script language="javascript" type="text/javascript">
                $(".open").toggle(
                    function () {
                        $(this).parent().next().hide();
                        $(this).addClass("close");
                    },
                    function () {
                        $(this).parent().next().show();
                        $(this).removeClass("close");
                    }
                );

            </script>

        </div><!---->
    </div>

</div>
<!--内容end-->
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
                    <a href="help.jsp">常见问题</a>
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
                    <a href="about.jsp">远景旅社</a>
                    <a href="#">联系我们</a>
                    <a href="#">核心优势</a>
                    <a href="#">商家合作</a>
                </p>
            </dd>
        </dl>
    </div>
    <div class="space20"></div>
    <h5><a href="#">流量统计</a> | <a href="sitemap.jsp">网站地图</a> | <a href="#">法律申明</a> | <a href="links.jsp">友情链接</a> | <a href="#">在线客服</a> | <a href="help.jsp">帮助中心</a></h5>
    <h4>版权所有 ? 2012-2018 我的虚拟世界店铺<br />技术支持：?旅游许可证号：L-GD00000?网站备案号：粤ICP备00000000号</h4>
</div><!--底部信息 end-->

</body>
</html>
