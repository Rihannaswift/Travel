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
    <script type="text/javascript">
        var scroller  = null;
        var scrollbar = null;
        window.onload = function () {
            scroller  = new jsScroller(document.getElementById("Scroller-1"), 500, 120);
            scrollbar = new jsScrollbar (document.getElementById("Scrollbar-Container"), scroller, false);
        }
    </script>
    <script type="text/javascript" src="Scripts/jsScroller.js"></script>
    <script type="text/javascript" src="Scripts/jsScrollbar.js"></script>
    <script type="text/javascript" language="javascript">
        var nav= '02'
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
    <div class="Current">您当前的位置：<a href="#">首页</a> > 国内线路</div>

    <!--左-->
    <div class="Index_left">

        <div class="domesticInfo">
            <h5>【直通车】金叶子温泉直通车一天 （一月份）</h5>
            <div class="AAA">
                <div class="pic"><img src="images/guonei_d_pic.jpg" /></div>
                <div class="main">
                    <table  cellpadding="0" cellspacing="0"  border="0" width="100%">
                        <tr>
                            <th width="87">出团日期</th><th width="73">标准</th><th width="68">成人价</th><th width="73">儿童价</th><th width="90">可收人数</th><th width="109">操作</th></tr></table>
                    <!---->
                    <div class="AllRoll">
                        <div id="Scrollbar-Container">
                            <div class="Scrollbar-Track">
                                <span class="Scrollbar-Handle"></span>
                            </div>
                        </div>
                        <div id="Scroller-1">
                            <div class="Scroller-Container">
                                <!--start-->
                                <table  cellpadding="0" cellspacing="0"  border="0" width="100%">
                                    <tr><td width="97">1月1日 周二 </td><td width="83">不含餐 </td><td width="58"><font>￥158</font></td><td width="73"><font>￥158</font></td><td width="90"><font> > 9</font></td><td width="84"><a href="booking_step3.jsp" class="buy"></a></td></tr>
                                    <tr><td width="97">2月1日 周二 </td><td width="83">不含餐 </td><td width="58"><font>￥158</font></td><td width="73"><font>￥158</font></td><td width="90"><font> > 9</font></td><td width="84"><a href="booking_step3.jsp" class="buy"></a></td></tr>
                                    <tr><td width="97">3月1日 周二 </td><td width="83">不含餐 </td><td width="58"><font>￥158</font></td><td width="73"><font>￥158</font></td><td width="90"><font> > 9</font></td><td width="84"><a href="booking_step3.jsp" class="buy"></a></td></tr>
                                    <tr><td width="97">4月1日 周二 </td><td width="83">不含餐 </td><td width="58"><font>￥158</font></td><td width="73"><font>￥158</font></td><td width="90"><font> > 9</font></td><td width="84"><a href="booking_step3.jsp" class="buy"></a></td></tr>

                                </table>
                                <!--end-->
                            </div>
                        </div>
                    </div>
                    <!---->
                    <h4><input type="button" class="print" /></h4>
                </div>
            </div>
            <!---->
            <div class="space10"></div>
            <!---->
            <div class="share">
                <!-- JiaThis Button BEGIN -->
                <div class="bshare-custom">
                    <span>分享到：</span>
                    <a class="bshare-qzone" title="分享到QQ空间"></a>
                    <a class="bshare-sinaminiblog" title="分享到新浪微博"></a>
                    <a class="bshare-renren" title="分享到人人网"></a>
                    <a class="bshare-qqmb" title="分享到腾讯微博"></a>
                    <a class="bshare-douban" title="分享到豆瓣"></a>
                    <a class="bshare-neteasemb" title="分享到网易微博"></a>
                    <a class=bshare-kaixin001 title="分享到开心网"></a>
                    <a class="bshare-qqxiaoyou" title="分享到朋友网"></a>
                    <a class="bshare-more bshare-more-icon more-style-addthis" title="更多平台"></a>
                    <span class="BSHARE_COUNT bshare-share-count">0</span></div>
                <script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/buttonLite.js#style=-1&amp;uuid=&amp;pophcol=3&amp;lang=zh"></script>

                <script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/bshareC0.js"></script>
                <!-- JiaThis Button END -->

            </div>

        </div>
        <!---->
        <div class="space10"></div>
        <!---->
        <div class="Tab2">
            <div id="AutoTable2">
                <h2><span><b>线路详情</b></span><span><font>景点介绍</font></span></h2>
                <div name="AutoContent">
                    <!--线路详情-->
                    <div class="Info">
                        <!--活动时间-->
                        <h3 class="d01">活动时间</h3>
                        <div class="mainInfo">天天出发</div>
                        <!--行程特色-->
                        <h3 class="d02">行程特色</h3>
                        <div class="mainInfo">
                            <ul class="xcts">
                                <li>前往乘车时间：09：00正佳广场西门开车→约10：20抵达白水寨、锦绣香江温泉城→约10：30抵达金叶
                                    子温泉度假酒店 </li>

                                <li>返程时间：16：30金叶子温泉度假酒店→ 约16：40白水寨景区大门口→16:50锦绣香江温泉城门口上车
                                    返程广州。回程终点站：正佳广场西门。 </li>

                                <li>出发前一天晚上，会有专门的工作人员将当天直通车的车牌号及上车地点、时间以短信的形式通知到客
                                    人。</li>
                            </ul>


                        </div>
                        <!--行程安排-->
                        <h3 class="d03">行程安排</h3>
                        <div class="mainInfo">
                            <h6><span>第一天</span>广州（大约1.5小时）金叶子温泉 </h6>
                            <p>早上于地点集中出发，后前往【金叶子温泉】：拥有广东省内海拔最高的温泉，温泉池区拥有 36 个大小
                                不同的温泉泡池，高山温泉水源来自深藏的地热温泉，水温高达 40 摄氏度 ，色泽透明，是极软的弱碱
                                性温泉，温泉中富含偏硅酸、纳、氟、硫磺、锌、铜、钙、镁等对人体健康有益的微量元素，是保健、
                                治疗、美容型温泉矿泉水的最佳泉水。下午于指定时间集中返回广州，结束愉快行程！</p>
                            <h6><span>第二天</span>广州（大约1.5小时）金叶子温泉 </h6>
                            <p>早上于地点集中出发，后前往【金叶子温泉】：拥有广东省内海拔最高的温泉，温泉池区拥有 36 个大小
                                不同的温泉泡池，高山温泉水源来自深藏的地热温泉，水温高达 40 摄氏度 ，色泽透明，是极软的弱碱
                                性温泉，温泉中富含偏硅酸、纳、氟、硫磺、锌、铜、钙、镁等对人体健康有益的微量元素，是保健、
                                治疗、美容型温泉矿泉水的最佳泉水。下午于指定时间集中返回广州，结束愉快行程！</p>
                        </div>
                        <table width="100%" cellpadding="0" cellspacing="0" border="0">
                            <tr>
                                <td width="50%" valign="top">
                                    <!--费用包含-->
                                    <h3 class="d04">费用包含</h3>
                                    <ul class="mpbh">
                                        <li>门票：景点第一大门票。 </li>
                                        <li>车：空调旅游车接送游玩。</li>
                                        <li>小孩：只占车位。（1.1米以上按成人操作，1.1米以下有成人陪同不占车位免费）</li>
                                        <li>保险：旅行社责任险（建议客人在前台报名时购买个人旅游意外险）。</li>
                                    </ul>
                                </td>
                                <td width="50%" valign="top">
                                    <!--费用不包含-->
                                    <h3 class="d05">费用不包含</h3>
                                    <ul class="mpbh">
                                        <li>门票：景点第一大门票。 </li>
                                        <li>车：空调旅游车接送游玩。</li>
                                        <li>小孩：只占车位。（1.1米以上按成人操作，1.1米以下有成人陪同不占车位免费）</li>
                                        <li>保险：旅行社责任险（建议客人在前台报名时购买个人旅游意外险）。</li>
                                    </ul>
                                </td>
                            </tr>
                        </table>
                        <div class="mainInfo">
                        </div>
                        <!--温馨提示-->
                        <h3 class="d06">温馨提示</h3>
                        <div class="mainInfo" style="border-bottom:0;">
                            <ul class="wxts">
                                <li>门票：景点第一大门票。 </li>
                                <li>车：空调旅游车接送游玩。</li>
                                <li>小孩：只占车位。（1.1米以上按成人操作，1.1米以下有成人陪同不占车位免费）</li>
                                <li>保险：旅行社责任险（建议客人在前台报名时购买个人旅游意外险）。</li>
                            </ul>
                        </div>
                    </div>
                    <!--景点介绍-->
                    <div class="Info">

                    </div>


                </div>
            </div>
        </div>

    </div>
    <!--右-->
    <div class="Index_right">
        <ul style="height:272px;">
            <li>
                <p>
                    <a href="#">
                        <img src="images/rpic01.jpg" />
                        <span>还剩11天8小时15分4.8秒</span>
                        <font>仅118元，原价188元从化超五星级崴格诗温泉庄园...</font>
                    </a>
                </p>
                <div class="Discount">
                    原价：188<br />
                    折扣：6.28
                </div>
                <h1>￥118</h1>
                <div class="BUY">
                    <span>108</span>人抢购
                    <a href="#"><img src="images/buyicon.jpg" /></a>
                </div>
            </li>
        </ul>
        <!---->
        <div class="space10"></div>
        <!---->
        <div class="GZYJ">
            <h2>关注我们</h2>
            <a href="#" class="a1">新浪微博</a>
            <a href="#" class="a2">腾讯微博</a>
            <a href="#" class="a3">豆瓣小组</a>
            <a href="#" class="a4">开心主页</a>
            <a href="#" class="a5">新浪客服微博</a>
        </div><!---->
        <div class="space10"></div>
        <!---->
        <div class="ad03"><img src="images/ad_r03.jpg" /></div>
        <!---->
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
<script type="text/javascript">
    var height=jQuery(".Scroller-Container").height();
    if(height<=120)
    {
        jQuery(".Scrollbar-Track").css("background","none");
    }
</script>
<script type="text/javascript" src="Scripts/tab.js"></script>
<script type="text/javascript">
    AutoTables("AutoTable2");
</script>
</body>
</html>
