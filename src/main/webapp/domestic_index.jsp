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
    <script type="text/javascript" src="Scripts/jquery.SuperSlide.js"></script>
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
    <!--特价路线-->
    <div class="HotRecom">
        <div class="leftLoop">
            <div class="hd">
                <div class="tips"></div>
                <span>热门推荐</span>
                <ul><li>1</li><li>2</li><li>3</li><li>4</li><li>5</li></ul>
            </div>
            <div class="bd">
                <ul class="picList">
                    <li>
                        <div class="pic"><a href="domesticInfo.html"><img src="images/lpic01.jpg" /></a></div>
                        <div class="title"><a href="domesticInfo.html"><font>【元旦海口】</font>畅游香港海洋公园及迪士尼二日品质线</a><p><span>￥</span>118 </p></div>
                    </li>
                    <li>
                        <div class="pic"><a href="#"><img src="images/lpic02.jpg" /></a></div>
                        <div class="title"><a href="#"><font>【元旦海口】</font>畅游香港海洋公园及迪士尼二日品质线</a><p><span>￥</span>118 </p></div>
                    </li>
                    <li>
                        <div class="pic"><a href="#"><img src="images/lpic03.jpg" /></a></div>
                        <div class="title"><a href="#"><font>【元旦海口】</font>畅游香港海洋公园及迪士尼二日品质线</a><p><span>￥</span>118 </p></div>
                    </li>
                    <li>
                        <div class="pic"><a href="#"><img src="images/lpic04.jpg" /></a></div>
                        <div class="title"><a href="#"><font>【元旦海口】</font>畅游香港海洋公园及迪士尼二日品质线</a><p><span>￥</span>118 </p></div>
                    </li>
                    <li>
                        <div class="pic"><a href="#"><img src="images/lpic04.jpg" /></a></div>
                        <div class="title"><a href="#"><font>【元旦海口】</font>畅游香港海洋公园及迪士尼二日品质线</a><p><span>￥</span>118 </p></div>
                    </li>
                </ul>
            </div>
        </div>
        <script type="text/javascript">jQuery(".leftLoop").slide({ mainCell:".bd ul",effect:"leftLoop",vis:5,scroll:5,autoPlay:true,interTime : 3500,delayTime : 1500});</script>
    </div>
    <!--特价路线 end-->
    <div class="space10"></div>
    <!--左-->
    <div class="Index_left">
        <ul class="domesticlist">
            <li>
                <h1><span><a href="domesticList.jsp">更多 >></a></span><em>华东</em></h1>
                <dl>
                    <dt>
                        <a href="domesticInfo.jsp"><img src="images/guonei_pic.jpg" /></a>
                        <h2><a href="domesticInfo.jsp">广西桂林靖江王府、叠彩山、漓江精华游、阳朔西街双卧5天游</a></h2>
                        <p><font>1330</font> 元起</p>
                        <span>￥1600</span>
                    </dt>
                    <dt>
                        <a href="#"><img src="images/guonei_pic.jpg" /></a>
                        <h2><a href="#">广西桂林靖江王府、叠彩山、漓江精华游、阳朔西街双卧5天游</a></h2>
                        <p><font>1330</font> 元起</p>
                        <span>￥1600</span>
                    </dt>
                </dl>
            </li>
            <li>
                <h1><span><a href="#">更多 >></a></span><em>华南</em></h1>
                <dl>
                    <dt>
                        <a href="#"><img src="images/guonei_pic.jpg" /></a>
                        <h2><a href="#">广西桂林靖江王府、叠彩山、漓江精华游、阳朔西街双卧5天游</a></h2>
                        <p><font>1330</font> 元起</p>
                        <span>￥1600</span>
                    </dt>
                    <dt>
                        <a href="#"><img src="images/guonei_pic.jpg" /></a>
                        <h2><a href="#">广西桂林靖江王府、叠彩山、漓江精华游、阳朔西街双卧5天游</a></h2>
                        <p><font>1330</font> 元起</p>
                        <span>￥1600</span>
                    </dt>
                </dl>
            </li>
            <li>
                <h1><span><a href="#">更多 >></a></span><em>华中</em></h1>
                <dl>
                    <dt>
                        <a href="#"><img src="images/guonei_pic.jpg" /></a>
                        <h2><a href="#">广西桂林靖江王府、叠彩山、漓江精华游、阳朔西街双卧5天游</a></h2>
                        <p><font>1330</font> 元起</p>
                        <span>￥1600</span>
                    </dt>
                    <dt>
                        <a href="#"><img src="images/guonei_pic.jpg" /></a>
                        <h2><a href="#">广西桂林靖江王府、叠彩山、漓江精华游、阳朔西街双卧5天游</a></h2>
                        <p><font>1330</font> 元起</p>
                        <span>￥1600</span>
                    </dt>
                </dl>
            </li>
            <li>
                <h1><span><a href="#">更多 >></a></span><em>华北</em></h1>
                <dl>
                    <dt>
                        <a href="#"><img src="images/guonei_pic.jpg" /></a>
                        <h2><a href="#">广西桂林靖江王府、叠彩山、漓江精华游、阳朔西街双卧5天游</a></h2>
                        <p><font>1330</font> 元起</p>
                        <span>￥1600</span>
                    </dt>
                    <dt>
                        <a href="#"><img src="images/guonei_pic.jpg" /></a>
                        <h2><a href="#">广西桂林靖江王府、叠彩山、漓江精华游、阳朔西街双卧5天游</a></h2>
                        <p><font>1330</font> 元起</p>
                        <span>￥1600</span>
                    </dt>
                </dl>
            </li>
            <li>
                <h1><span><a href="#">更多 >></a></span><em>西南</em></h1>
                <dl>
                    <dt>
                        <a href="#"><img src="images/guonei_pic.jpg" /></a>
                        <h2><a href="#">广西桂林靖江王府、叠彩山、漓江精华游、阳朔西街双卧5天游</a></h2>
                        <p><font>1330</font> 元起</p>
                        <span>￥1600</span>
                    </dt>
                    <dt>
                        <a href="#"><img src="images/guonei_pic.jpg" /></a>
                        <h2><a href="#">广西桂林靖江王府、叠彩山、漓江精华游、阳朔西街双卧5天游</a></h2>
                        <p><font>1330</font> 元起</p>
                        <span>￥1600</span>
                    </dt>
                </dl>
            </li>
            <li>
                <h1><span><a href="#">更多 >></a></span><em>西北</em></h1>
                <dl>
                    <dt>
                        <a href="#"><img src="images/guonei_pic.jpg" /></a>
                        <h2><a href="#">广西桂林靖江王府、叠彩山、漓江精华游、阳朔西街双卧5天游</a></h2>
                        <p><font>1330</font> 元起</p>
                        <span>￥1600</span>
                    </dt>
                    <dt>
                        <a href="#"><img src="images/guonei_pic.jpg" /></a>
                        <h2><a href="#">广西桂林靖江王府、叠彩山、漓江精华游、阳朔西街双卧5天游</a></h2>
                        <p><font>1330</font> 元起</p>
                        <span>￥1600</span>
                    </dt>
                </dl>
            </li>
            <li>
                <h1><span><a href="#">更多 >></a></span><em>东南</em></h1>
                <dl>
                    <dt>
                        <a href="#"><img src="images/guonei_pic.jpg" /></a>
                        <h2><a href="#">广西桂林靖江王府、叠彩山、漓江精华游、阳朔西街双卧5天游</a></h2>
                        <p><font>1330</font> 元起</p>
                        <span>￥1600</span>
                    </dt>
                    <dt>
                        <a href="#"><img src="images/guonei_pic.jpg" /></a>
                        <h2><a href="#">广西桂林靖江王府、叠彩山、漓江精华游、阳朔西街双卧5天游</a></h2>
                        <p><font>1330</font> 元起</p>
                        <span>￥1600</span>
                    </dt>
                </dl>
            </li>
            <li>
                <h1><span><a href="#">更多 >></a></span><em>东北</em></h1>
                <dl>
                    <dt>
                        <a href="#"><img src="images/guonei_pic.jpg" /></a>
                        <h2><a href="#">广西桂林靖江王府、叠彩山、漓江精华游、阳朔西街双卧5天游</a></h2>
                        <p><font>1330</font> 元起</p>
                        <span>￥1600</span>
                    </dt>
                    <dt>
                        <a href="#"><img src="images/guonei_pic.jpg" /></a>
                        <h2><a href="#">广西桂林靖江王府、叠彩山、漓江精华游、阳朔西街双卧5天游</a></h2>
                        <p><font>1330</font> 元起</p>
                        <span>￥1600</span>
                    </dt>
                </dl>
            </li>
        </ul>

    </div>
    <!--右-->
    <div class="Index_right">
        <!---->
        <div class="Tab">
            <div id="AutoTable1">
                <h2><span><b>本周预订排行</b></span><span><font>最热销线路推荐</font></span></h2>
                <div name="AutoContent">
                    <!--本周预订排行-->
                    <div class="Num">
                        <dl>
                            <dt><a href="#">元旦厦门专线：厦门鼓浪屿</a></dt>
                            <dt><a href="#">凤凰古城五天四夜火车纯玩</a></dt>
                            <dt><a href="#">单张图片保存功能目前只支持</a></dt>
                            <dt><a href="#">流溪香雪赏梅—摘桔休闲纯</a></dt>
                            <dt><a href="#">单张图片保存功能目前只支持</a></dt>
                            <dt><a href="#">从化石门森林公园、溪头村...</a></dt>
                            <dt><a href="#">单张图片保存功能目前只支持</a></dt>
                            <dt><a href="#">从化石门森林公园、溪头村</a></dt>
                            <dt><a href="#">南沙湿地公园看千鸟齐飞</a></dt>
                            <dt><a href="#">从化石门森林公园、溪头村... </a></dt>
                        </dl>
                    </div>
                    <!--最热销线路推荐-->
                    <div class="Num">
                        <dl>
                            <dt><a href="#">单张图片保存功能目前只支持</a></dt>
                            <dt><a href="#">流溪香雪赏梅—摘桔休闲纯</a></dt>
                            <dt><a href="#">单张图片保存功能目前只支持</a></dt>
                            <dt><a href="#">元旦厦门专线：厦门鼓浪屿</a></dt>
                            <dt><a href="#">凤凰古城五天四夜火车纯玩</a></dt>
                            <dt><a href="#">从化石门森林公园、溪头村...</a></dt>
                            <dt><a href="#">单张图片保存功能目前只支持</a></dt>
                            <dt><a href="#">从化石门森林公园、溪头村</a></dt>
                            <dt><a href="#">南沙湿地公园看千鸟齐飞</a></dt>
                            <dt><a href="#">从化石门森林公园、溪头村... </a></dt>
                        </dl>
                    </div>


                </div>
            </div>
        </div>
        <script type="text/javascript" src="Scripts/tab.js"></script>
        <script type="text/javascript">
            AutoTables("AutoTable1");
        </script><!---->
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

</body>
</html>
