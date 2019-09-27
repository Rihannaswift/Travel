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
        var nav= '04'
        var right="02"
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
    <div class="Current">您当前的位置：<a href="#">首页</a> > <a href="#">专题</a> > 山水主题</div>

    <!---->
    <div class="TopicBanner">
        <img src="images/about_pic.jpg" />
    </div>

    <div class="space20"></div>

    <!--左-->
    <div class="Index_left" style="float:right;">

        <div class="newsInfo newsLsit">
            <h4>广西桂林靖江王府、叠彩山、漓江精华游、阳朔西街双卧5天游</h4>
            <h6>发布人：admin 发布时间：2012-12-22</h6>
            <div>
                <p>广西桂林靖江王府、叠彩山、漓江精华游、阳朔西街双卧5天游</p>
                <p>挂绿，是荔枝最佳品种之一，主产于广东增城。该品种为广东增城荔枝中的优等品种，也是广东荔枝的名种之一。该品种今存者为1979年古树枯死时由技术人员抢救由树基发芽更生出的新树。挂绿核大而略扁，肉质特别爽脆，清甜有微香，品质极优，果实较耐贮藏。由于挂绿荔枝异常珍贵，21世纪初曾出现单颗天价拍卖的情形，打破吉尼斯世界纪录。</p>
                <p><strong>增城沙滩公园</strong></p>

                <p>增城沙滩公园增城沙滩公园总占地500亩，首期工程项目占地约200多亩，利用增江天然的二类水质及天然河床涌泉，建设相当于30个标准泳池的游泳区，可容纳近1万人同时游泳。蓝天白云，灿烂的阳光下，欢悦奔跑在沙滩上，愉快地戏水，大家一齐来和阳光玩游戏。</p>
                <p><strong>正果湖心岛</strong></p>

                <p>增城沙滩公园增城正果湖心岛位于正果镇增江河段上游，自从起了这个拦河坝后，就形成了一个美丽的湖。从河坝到龙门永汉镇交界，一共有１８公里的水路，水面面积达到五千亩。碧绿的湖水、青翠的垂柳、百年树龄的乌榄树，大自然的鬼斧神工，令人置身于一幅巨型的山水画之中。 乌榄和荔枝都是增城的特产，在景点开发之后，大家还可以到山上亲手采摘乌榄和荔枝，享受自然带来的欢乐）。目前还保持着原始的状态 该景区将以"水的世界、花的海洋、鸟的天堂"为建设理念，着力打造湖心岛湿地公园，开发湖心岛旅游风景游船项目，通过2小时游船观光的形式，讲解增城、正果历史文化及民俗风情，欣赏增江画廊美景，观光悠闲，把湖心岛景区建成集观光、休闲、旅游、娱乐、度假、会议、商务于一身的大型生态旅游区。同时，着力抓好增正线、正麻线绿上添花工程及湖心岛周边鸟语花香工程。
                </p>
            </div>

            <div class="getback"><a href="javascript:javascrpt:history.back();" >[返回]</a></div>
        </div>


    </div>
    <!--右-->
    <div class="Index_right" style="float:left;">
        <!---->
        <div class="Sidemenu">
            <h1 class="h1_topic">山水专题</h1>
            <dl>
                <dd><a id="right01" href="topicInfo.html">景点介绍</a></dd>
                <dd><a id="right02" href="topicList.html">景点线路</a></dd>
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
    <!---->


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
