<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <base <%=request.getContextPath()+"/"%>/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=7" />
    <meta name="Author" content="" />
    <title>我的虚拟世界店铺</title>
    <link href="css/css_whir.css" rel="stylesheet" type="text/css" />
<%--    <script type="text/javascript" src="Scripts/jquery-1.4.2.min.js"></script>--%>
    <link rel="stylesheet" type="text/css" href="/css/valid.css" />
    <script type="text/javascript" src="/js/jquery-1.8.2.js"></script>
    <script type="text/javascript" src="/js/Validform_v5.3.2.js"></script>
    <script type="text/javascript">
        //控制表单提交
        $(function(){
            $("#form").Validform({
                tiptype:3,
                showAllError:true,
                datatype:{
                    "agreement":function(gets,obj,curform,regxp){
                        var check = $("#check").get(0).checked;
                        if(check == false){//没有勾选
                            return false;
                        }
                    }
                }
            });
        })
        
        //验证码刷新的方法，javaScript
        function flush() {
//            alert("都进来了");
            var captcha = document.getElementById("captcha");
            captcha.src = "Vcode/code?t="+new Date().getTime();
        }
        

    </script>

</head>

<body>
<!--头部-->
<div class="Header">
    <div class="Top">
        <div class="Top_one">
            <div class="Login">您好，欢迎光临。<a href="login.jsp" class="a1">登录</a><span> | </span><a href="register.jsp" class="a2">注册</a><em><a href="member_index.jsp" class="a3">用户名110</a> <a href="#" class="a4">退 出</a></em></div>
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
    <div class="space20"></div>

    <div class="mod2">
        <div class="title">
            <div> 已经注册，现在就
                <a href="login.jsp">登录</a></div>
            <h1 class="hide_word">
                用户注册</h1>
            <span>或<a href="login.jsp">登陆</a></span>
        </div>

        <form  id="form" action="/user/regist" method="post">
        <table cellpadding="0" cellspacing="0" border="0">
            <tr class="content">
                <th>
                    用户名：
                </th>
                <td>
                    <input type="text" maxlength="30" name="username" class="input username" datatype="s2-6" nullmsg="用户名不能为空" errormsg="用户名长度为2-6个字符" ajaxurl="/user/checkRegisterUser">
                </td>
                <td>
                </td>
            </tr>
            <tr class="content">
                <th>
                    密&emsp;码：
                </th>
                <td>
                    <input type="password" maxlength="30" name="password" class="input password" datatype="n6-12" nullmsg="密码不能为空" errormsg="密码长度6-12位数字">
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <th>
                    再次输入密码：
                </th>
                <td>
                    <input type="password" maxlength="30" name="Password2" class="input password2" datatype="*"  recheck="password" nullmsg="密码不能为空" errormsg="两次输入的密码不一致">
                </td>
                <td>
                </td>
            </tr>

            <tr class="content hidden">
                <th>
                    手机号码：
                </th>
                <td>
                    <input type="text" maxlength="14" name="phonenumber" class="input mobile" datatype="m" nullmsg="手机号码不能为空" errormsg="手机号码不符合格式" >
                </td>
                <td>
                </td>
            </tr>
            <tr class="hidden">
                <th>
                    电子邮箱：
                </th>
                <td>
                    <input type="text" maxlength="30" name="email" class="input email"  datatype="e" nullmsg="邮箱号码不能为空" errormsg="邮箱号码不符合格式" >
                </td>
                <td>
                </td>
            </tr>

            <tr class="content">
                <th>
                    验证码：
                </th>
                <td>
                    <input type="text" maxlength="4" name="captcha"  class="code"><img alt="" src="/Vcode/code" id="captcha" class="code_pic"> <span class="change_code" onclick="flush()">看不清？<a tabindex="-1" class="change_code" href="#" onclick="flush()">换一张</a></span>
                </td>
                <td>

                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    <input type="checkbox" id="check" checked="checked" class="checkbox"  datatype="agreement" >我已阅读并同意<a href="#">《远景网服务协议》</a>
                </td>
                <td>
                </td>
            </tr>
            <tr class="content">
                <th>
                </th>
                <td>
                   <%-- <input type="submit" value="" class="submit">--%>
                    <input type="submit" value="" class="submit"/>
                </td>
                <td>
                </td>
            </tr>
        </table>
        </form>

        <div class="tips2">
            <h2>
                温馨提示：</h2>
            <p>
                1、请输入您的远景网用户名及密码进行登录；</p>
            <p>
                2、如果还未注册成为远景网用户，请使用您常用的电子邮箱或手机号码进行注册，帐号激活成功后即可开始享受远景网带给您的最便捷的旅游服务。</p>
        </div>
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
    <h4>版权所有 © 2012-2018 我的虚拟世界店铺<br />技术支持： 旅游许可证号：L-GD00000 网站备案号：粤ICP备00000000号</h4>
</div><!--底部信息 end-->

</body>
</html>
