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
        var nav= '09'
        var right= '01'
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
                <em><a href="member.jsp" class="amy">我的账户</a>
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
    <div class="Current">您当前的位置：<a href="#">首页</a> > 关于我们</div>

    <!--左-->
    <div class="Index_left">
        <div class="aboutInfo">
            <div style=" text-align:center; padding-bottom:20px;"><img src="images/about_pic.jpg" /></div>
            <p>广远景国际旅行社成立于1995年，是广州市旅游局批准成立的专业一类国际旅行社，本司一直致力于旅游行业开拓与发展，在同行业中一直保持着较好的信誉和口碑！</p>
            <p>本司是中国旅行社协会、广州地区旅行社行业协会会员 ；首批广州地区旅行社诚信单位 ；2004—2006年度广州地区十大最受欢迎旅行社；省工商局颁发的2006、2007年度守合同重诚信企业。</p>
            <p>专业品牌让您称心满意，多年来本公司以宾客至上，以旅客为轴心的服务宗旨受到海内外宾客及同行业的好评。本公司服务质量好，信誉第一，价格适宜。我们以"诚实"为宗旨，"创新"为理念，积极参与市场竞争，致力于开辟各地旅游资源，为广大消费这提供优质价惠的旅游服务，令旅客可以跟随我们"博览世界，享受人生"，欢迎各界人士来电、来函垂询。</p>
            <p>业务范围：旅游(入境游、国内游、广东游、广深珠游、自助游、自驾车游)、代办签证、预订酒店（特价国内、国际、港澳订房）、票务（国内机票、国际机票）、汽车租赁（5-55座）、商务会议（奖励旅游、会议安排、文体考察交流活动）服务等。</p>
            <p>此外我社与多间高校长期合作学生实习专线：华东地区（学科综合）野外实习写生，桂林地区野外实习写生，庐山地区专业野外实习，韶关地区野外实习，甘肃陕西野外考察实习，云南野外写生实习。</p>
        </div>


    </div>
    <!--右-->
    <div class="Index_right">
        <!---->
        <div class="Sidemenu">
            <h1><img src="images/about_title.jpg" /></h1>
            <dl>
                <dd><a id="right01" href="about.jsp">旅社</a></dd>
                <dd><a id="right02" href="#">品牌历史</a></dd>
                <dd><a id="right03" href="#">联系我们</a></dd>
                <dd><a id="right04" href="#">核心优势</a></dd>
                <dd><a id="right05" href="#">商家合作</a></dd>
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

