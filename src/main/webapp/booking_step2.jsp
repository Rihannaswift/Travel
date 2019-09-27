<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=7" />
    <meta name="Author" content="" />
    <title>我的虚拟世界店铺</title>
    <link href="css/css_whir.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="Scripts/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" language="javascript">
        var nav= '05'
        var right= '03'
    </script>

</head>

<body>
<!--头部-->
<div class="Header">
    <div class="Top">
        <div class="Top_one">
            <div class="Login">您好，欢迎光临。<a href="login.html" class="a1">登录</a><span> | </span><a href="register.html" class="a2">注册</a><em><a href="member_index.html" class="a3">用户名110</a> <a href="#" class="a4">退 出</a></em></div>
            <h1>
                <em><a href="orders.jsp">订单查询</a></em>|
                <em><a href="member.jsp" class="amy">我的账户</a>
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
    <div class="Current">您当前的位置：<a href="#">首页</a> > 预约验证</div>

    <div id="idstep02"></div>
    <div class="space20"></div>
    <!--左-->
    <div class="Index_left">

        <div class="step" style="height:500px; height:auto !important; min-height:500px;">
            <h5>线路出发日期、可收人数：</h5>

            <ul class="steplist">
                <li><a href="booking_step3.jsp"> 出发日期： <em>2013-02-11 星期一</em>可收人数：<em>> 9</em></a></li>
                <li><a href="#"> 出发日期： <em>2013-02-11 星期一</em>可收人数：<em>> 9</em></a></li>
                <li><a href="#"> 出发日期： <em>2013-02-11 星期一</em>可收人数：<em>> 9</em></a></li>
            </ul>


        </div>



    </div>
    <!--右-->
    <div class="Index_right">
        <!---->
        <div class="booK">
            <h2>您所选的团购是</h2>
            <h3>
                <a href="preferInfo.jsp"><img src="images/guonei_pic.jpg" /></a>
                <p><a href="preferInfo.jsp">【春节阳朔专线】白天出发"仅2期"！仅售558元！即可享受原价1525元的阳朔3天豪华游</a></p>
            </h3>
            <h4>出发日期：<strong>选择中</strong></h4>
        </div>

        <!---->
        <div class="space20"></div>
        <div class="booKtips">
            <h2>温馨提示</h2>
            <div class="main">

                1. 出游日期：2013年2月11日（大年初二）、2013年2月12日（大年初三）早上出发（仅2期）
                2. 咨询电话： 020-61138246（10条分线）（周一至周日，上班时间：上午9：00-下午18：00）；
                3. 预约资料：请填写姓名、性别、出团日期、人数和身份证号（办理个人旅游意外险），如不申明或实际参团人与预约时填写的姓名不一致，则视为自动放弃个人旅游意外伤害险；
                4. 预约后，提前4天以上（含4天）可申请取消出行，若临时（离出行日期2天以内）取消行程，我们将会扣除该团的实际损失费后，在扣除5%的手续费，剩下的钱会汇款到您所指定的账号上；
                5. 行程内时间为约数，以当天实际时间为准，黄金周期间人多，请尽早预约。此优惠不可与店内其他优惠同时享受。
                6. 此单1.2米以下不占床位350元/人（详情咨询商家），含车位及保险，如超高门票自理，1.2米以上按成人价收费。
                7. 集中上车点：7:30梅东路（地铁1、5号线杨箕站D/E出口，中国银行大门前）集合，8:30佛山南海广场对面公交车站（若南海上车点人数不足8人，需自行到广州上车），认"畅游阳朔"导游旗；
                8. 请一定要带上身份证,入住需要登记,如无身份证无法办理入住手续。
                9. 请用户准时候车，若未准时集中视为主动放弃并不退款，请谅解；
                10. 如人数不足40人旅行社会提前24小时电话通知取消或者推迟，届时客人有权选择改期或退款。
                11. 投诉监督热线：020-38934034 (接受游客对行程的投诉与监督，并将及时给予答复和解决方案)。
                12. 以上时间为出发大约时间，我司有权根据实际情况，在保证行程景点游览的前提下，有权对景点游览的先后顺序作合理的调整。
                13. 如遇塌方、大雪封山、塞车或航班延误等因素造成的行程延误或不能完成景点游览，不视为旅行社违约，按《广东省国内旅游组团合同》第三条第7款处理。
                14. 特别须知：如遇国家政策性调价或人力不可抗拒因素所产生的费用由客人自理。
                15. 建议双人出行，若出现单男单女，无人拼房，出发需补房差100元/晚，若3人挤一间标双房，酒店住宿不退款；

            </div>
        </div>
        <!---->
        <div class="space10"></div><!---->
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
