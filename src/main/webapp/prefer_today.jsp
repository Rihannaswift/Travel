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
    <div class="Current">您当前的位置：<a href="#">首页</a> > 特惠路线 > 今日路线</div>

    <!--/**/-->
    <div class="preferTab">
        <div id="AutoTable2">
            <h2><span><a class="a1"></a></span><span><a class="a2"></a></span><span><a class="a3" href="booking.html"></a></span></h2>
            <div class="space20"></div>
            <div name="AutoContent">
                <!--今日特惠-->
                <div>
                    <ul class="preferList">
                        <li>
                            <a  href="preferInfo.html">
                                <div class="newsIcon"></div>
                                <div class="img"><img src="images/jspic.jpg" /></div>
                                <p>仅118元，原价188元从化超五星级崴格诗温泉庄园... </p>
                                <em>原价：<font>1880</font><br /> <i>1180</i>人抢购</em>
                                <b  class="b2"><i>￥</i>1180</b>
                                <b class="b1"><img src="images/buyicon.jpg" /></b>
                                <div class="Hcontent">
                                    <span class="pbg"></span>
                                    <div class="hovermain">
                                        <h3>仅118元，原价188元从化超五星级崴格诗温泉庄园五星级崴格诗温泉庄园... </h3>
                                        <h4>从化超五星级崴格诗温泉庄园五星级崴格诗温泉庄园从化超五星级崴格诗温泉庄园五星级崴格诗温泉庄园</h4>
                                        <h5> <span>原价：<font>1880</font> 节省：<b>￥700</b></span></h5>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a  href="preferInfo.html">
                                <div class="newsIcon"></div>
                                <div class="img"><img src="images/jspic.jpg" /></div>
                                <p>仅118元，原价188元从化超五星级崴格诗温泉庄园... </p>
                                <em>原价：<font>1880</font><br /> <i>1180</i>人抢购</em>
                                <b  class="b2"><i>￥</i>1180</b>
                                <b class="b1"><img src="images/buyicon.jpg" /></b>
                                <div class="Hcontent">
                                    <span class="pbg"></span>
                                    <div class="hovermain">
                                        <h3>仅118元，原价188元从化超五星级崴格诗温泉庄园五星级崴格诗温泉庄园... </h3>
                                        <h4>从化超五星级崴格诗温泉庄园五星级崴格诗温泉庄园从化超五星级崴格诗温泉庄园五星级崴格诗温泉庄园</h4>
                                        <h5> <span>原价：<font>1880</font> 节省：<b>￥700</b></span></h5>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a  href="#">
                                <div class="newsIcon"></div>
                                <div class="img"><img src="images/jspic.jpg" /></div>
                                <p>仅118元，原价188元从化超五星级崴格诗温泉庄园... </p>
                                <em>原价：<font>1880</font><br /> <i>1180</i>人抢购</em>
                                <b  class="b2"><i>￥</i>1180</b>
                                <b class="b1"><img src="images/buyicon.jpg" /></b>
                                <div class="Hcontent">
                                    <span class="pbg"></span>
                                    <div class="hovermain">
                                        <h3>仅118元，原价188元从化超五星级崴格诗温泉庄园五星级崴格诗温泉庄园... </h3>
                                        <h4>从化超五星级崴格诗温泉庄园五星级崴格诗温泉庄园从化超五星级崴格诗温泉庄园五星级崴格诗温泉庄园</h4>
                                        <h5> <span>原价：<font>1880</font> 节省：<b>￥700</b></span></h5>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a  href="#">
                                <div class="newsIcon"></div>
                                <div class="img"><img src="images/jspic.jpg" /></div>
                                <p>仅118元，原价188元从化超五星级崴格诗温泉庄园... </p>
                                <em>原价：<font>1880</font><br /> <i>1180</i>人抢购</em>
                                <b  class="b2"><i>￥</i>1180</b>
                                <b class="b1"><img src="images/buyicon.jpg" /></b>
                                <div class="Hcontent">
                                    <span class="pbg"></span>
                                    <div class="hovermain">
                                        <h3>仅118元，原价188元从化超五星级崴格诗温泉庄园五星级崴格诗温泉庄园... </h3>
                                        <h4>从化超五星级崴格诗温泉庄园五星级崴格诗温泉庄园从化超五星级崴格诗温泉庄园五星级崴格诗温泉庄园</h4>
                                        <h5> <span>原价：<font>1880</font> 节省：<b>￥700</b></span></h5>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a  href="#">
                                <div class="newsIcon"></div>
                                <div class="img"><img src="images/jspic.jpg" /></div>
                                <p>仅118元，原价188元从化超五星级崴格诗温泉庄园... </p>
                                <em>原价：<font>1880</font><br /> <i>1180</i>人抢购</em>
                                <b  class="b2"><i>￥</i>1180</b>
                                <b class="b1"><img src="images/buyicon.jpg" /></b>
                                <div class="Hcontent">
                                    <span class="pbg"></span>
                                    <div class="hovermain">
                                        <h3>仅118元，原价188元从化超五星级崴格诗温泉庄园五星级崴格诗温泉庄园... </h3>
                                        <h4>从化超五星级崴格诗温泉庄园五星级崴格诗温泉庄园从化超五星级崴格诗温泉庄园五星级崴格诗温泉庄园</h4>
                                        <h5> <span>原价：<font>1880</font> 节省：<b>￥700</b></span></h5>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a  href="#">
                                <div class="newsIcon"></div>
                                <div class="img"><img src="images/jspic.jpg" /></div>
                                <p>仅118元，原价188元从化超五星级崴格诗温泉庄园... </p>
                                <em>原价：<font>1880</font><br /> <i>1180</i>人抢购</em>
                                <b  class="b2"><i>￥</i>1180</b>
                                <b class="b1"><img src="images/buyicon.jpg" /></b>
                                <div class="Hcontent">
                                    <span class="pbg"></span>
                                    <div class="hovermain">
                                        <h3>仅118元，原价188元从化超五星级崴格诗温泉庄园五星级崴格诗温泉庄园... </h3>
                                        <h4>从化超五星级崴格诗温泉庄园五星级崴格诗温泉庄园从化超五星级崴格诗温泉庄园五星级崴格诗温泉庄园</h4>
                                        <h5> <span>原价：<font>1880</font> 节省：<b>￥700</b></span></h5>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a  href="#">
                                <div class="newsIcon"></div>
                                <div class="img"><img src="images/jspic.jpg" /></div>
                                <p>仅118元，原价188元从化超五星级崴格诗温泉庄园... </p>
                                <em>原价：<font>1880</font><br /> <i>1180</i>人抢购</em>
                                <b  class="b2"><i>￥</i>1180</b>
                                <b class="b1"><img src="images/buyicon.jpg" /></b>
                                <div class="Hcontent">
                                    <span class="pbg"></span>
                                    <div class="hovermain">
                                        <h3>仅118元，原价188元从化超五星级崴格诗温泉庄园五星级崴格诗温泉庄园... </h3>
                                        <h4>从化超五星级崴格诗温泉庄园五星级崴格诗温泉庄园从化超五星级崴格诗温泉庄园五星级崴格诗温泉庄园</h4>
                                        <h5> <span>原价：<font>1880</font> 节省：<b>￥700</b></span></h5>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a  href="#">
                                <div class="newsIcon"></div>
                                <div class="img"><img src="images/jspic.jpg" /></div>
                                <p>仅118元，原价188元从化超五星级崴格诗温泉庄园... </p>
                                <em>原价：<font>1880</font><br /> <i>1180</i>人抢购</em>
                                <b  class="b2"><i>￥</i>1180</b>
                                <b class="b1"><img src="images/buyicon.jpg" /></b>
                                <div class="Hcontent">
                                    <span class="pbg"></span>
                                    <div class="hovermain">
                                        <h3>仅118元，原价188元从化超五星级崴格诗温泉庄园五星级崴格诗温泉庄园... </h3>
                                        <h4>从化超五星级崴格诗温泉庄园五星级崴格诗温泉庄园从化超五星级崴格诗温泉庄园五星级崴格诗温泉庄园</h4>
                                        <h5> <span>原价：<font>1880</font> 节省：<b>￥700</b></span></h5>
                                    </div>
                                </div>
                            </a>
                        </li>

                    </ul>
                    <!--Pages-->
                    <div class="Pages">
                        <span class="p_cur">目前在第<b>1</b>页,</span>
                        <span class="p_count">共有<b>3</b>页,</span>
                        <span class="p_total">共有<b>3</b>条记录</span>
                        <span class="p_page">
    <a href="#" class="a_first">首页</a><a href="#" class="a_prev">上一页</a>
    <em class="num"><a href="#" class="a_cur">1</a><a href="#">2</a><a href="#">3</a><a href="#">4</a><a href="#">5</a><a href="#">6</a><a href="#">7</a><a href="#">8</a></em>
    <a href="#" class="a_next">下一页</a><a href="#" class="a_end">末页</a>
    <b class="f1">跳转到</b>
    <input class="i_text" type="text" name="textfield" id="textfield" />
    <b class="f2">页</b>
    <input class="i_button" type="submit" name="button" id="button" value="" />
    </span>
                    </div>
                    <!--Pages-->
                </div>
                <!--往期特惠-->
                <div>
                    <ul class="preferList">
                        <li>
                            <a  href="#">
                                <div class="newsIcon"></div>
                                <div class="img"><img src="images/jspic.jpg" /></div>
                                <p>仅118元，原价188元从化超五星级崴格诗温泉庄园... </p>
                                <em>原价：<font>1880</font><br /> <i>1180</i>人抢购</em>
                                <b  class="b2"><i>￥</i>1180</b>
                                <b class="b1"><img src="images/buyicon.jpg" /></b>
                                <div class="Hcontent">
                                    <span class="pbg"></span>
                                    <div class="hovermain">
                                        <h3>仅118元，原价188元从化超五星级崴格诗温泉庄园五星级崴格诗温泉庄园... </h3>
                                        <h4>从化超五星级崴格诗温泉庄园五星级崴格诗温泉庄园从化超五星级崴格诗温泉庄园五星级崴格诗温泉庄园</h4>
                                        <h5> <span>原价：<font>1880</font> 节省：<b>￥700</b></span></h5>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a  href="#">
                                <div class="newsIcon"></div>
                                <div class="img"><img src="images/jspic.jpg" /></div>
                                <p>仅118元，原价188元从化超五星级崴格诗温泉庄园... </p>
                                <em>原价：<font>1880</font><br /> <i>1180</i>人抢购</em>
                                <b  class="b2"><i>￥</i>1180</b>
                                <b class="b1"><img src="images/buyicon.jpg" /></b>
                                <div class="Hcontent">
                                    <span class="pbg"></span>
                                    <div class="hovermain">
                                        <h3>仅118元，原价188元从化超五星级崴格诗温泉庄园五星级崴格诗温泉庄园... </h3>
                                        <h4>从化超五星级崴格诗温泉庄园五星级崴格诗温泉庄园从化超五星级崴格诗温泉庄园五星级崴格诗温泉庄园</h4>
                                        <h5> <span>原价：<font>1880</font> 节省：<b>￥700</b></span></h5>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a  href="#">
                                <div class="newsIcon"></div>
                                <div class="img"><img src="images/jspic.jpg" /></div>
                                <p>仅118元，原价188元从化超五星级崴格诗温泉庄园... </p>
                                <em>原价：<font>1880</font><br /> <i>1180</i>人抢购</em>
                                <b  class="b2"><i>￥</i>1180</b>
                                <b class="b1"><img src="images/buyicon.jpg" /></b>
                                <div class="Hcontent">
                                    <span class="pbg"></span>
                                    <div class="hovermain">
                                        <h3>仅118元，原价188元从化超五星级崴格诗温泉庄园五星级崴格诗温泉庄园... </h3>
                                        <h4>从化超五星级崴格诗温泉庄园五星级崴格诗温泉庄园从化超五星级崴格诗温泉庄园五星级崴格诗温泉庄园</h4>
                                        <h5> <span>原价：<font>1880</font> 节省：<b>￥700</b></span></h5>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a  href="#">
                                <div class="newsIcon"></div>
                                <div class="img"><img src="images/jspic.jpg" /></div>
                                <p>仅118元，原价188元从化超五星级崴格诗温泉庄园... </p>
                                <em>原价：<font>1880</font><br /> <i>1180</i>人抢购</em>
                                <b  class="b2"><i>￥</i>1180</b>
                                <b class="b1"><img src="images/buyicon.jpg" /></b>
                                <div class="Hcontent">
                                    <span class="pbg"></span>
                                    <div class="hovermain">
                                        <h3>仅118元，原价188元从化超五星级崴格诗温泉庄园五星级崴格诗温泉庄园... </h3>
                                        <h4>从化超五星级崴格诗温泉庄园五星级崴格诗温泉庄园从化超五星级崴格诗温泉庄园五星级崴格诗温泉庄园</h4>
                                        <h5> <span>原价：<font>1880</font> 节省：<b>￥700</b></span></h5>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a  href="#">
                                <div class="newsIcon"></div>
                                <div class="img"><img src="images/jspic.jpg" /></div>
                                <p>仅118元，原价188元从化超五星级崴格诗温泉庄园... </p>
                                <em>原价：<font>1880</font><br /> <i>1180</i>人抢购</em>
                                <b  class="b2"><i>￥</i>1180</b>
                                <b class="b1"><img src="images/buyicon.jpg" /></b>
                                <div class="Hcontent">
                                    <span class="pbg"></span>
                                    <div class="hovermain">
                                        <h3>仅118元，原价188元从化超五星级崴格诗温泉庄园五星级崴格诗温泉庄园... </h3>
                                        <h4>从化超五星级崴格诗温泉庄园五星级崴格诗温泉庄园从化超五星级崴格诗温泉庄园五星级崴格诗温泉庄园</h4>
                                        <h5> <span>原价：<font>1880</font> 节省：<b>￥700</b></span></h5>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a  href="#">
                                <div class="newsIcon"></div>
                                <div class="img"><img src="images/jspic.jpg" /></div>
                                <p>仅118元，原价188元从化超五星级崴格诗温泉庄园... </p>
                                <em>原价：<font>1880</font><br /> <i>1180</i>人抢购</em>
                                <b  class="b2"><i>￥</i>1180</b>
                                <b class="b1"><img src="images/buyicon.jpg" /></b>
                                <div class="Hcontent">
                                    <span class="pbg"></span>
                                    <div class="hovermain">
                                        <h3>仅118元，原价188元从化超五星级崴格诗温泉庄园五星级崴格诗温泉庄园... </h3>
                                        <h4>从化超五星级崴格诗温泉庄园五星级崴格诗温泉庄园从化超五星级崴格诗温泉庄园五星级崴格诗温泉庄园</h4>
                                        <h5> <span>原价：<font>1880</font> 节省：<b>￥700</b></span></h5>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a  href="#">
                                <div class="newsIcon"></div>
                                <div class="img"><img src="images/jspic.jpg" /></div>
                                <p>仅118元，原价188元从化超五星级崴格诗温泉庄园... </p>
                                <em>原价：<font>1880</font><br /> <i>1180</i>人抢购</em>
                                <b  class="b2"><i>￥</i>1180</b>
                                <b class="b1"><img src="images/buyicon.jpg" /></b>
                                <div class="Hcontent">
                                    <span class="pbg"></span>
                                    <div class="hovermain">
                                        <h3>仅118元，原价188元从化超五星级崴格诗温泉庄园五星级崴格诗温泉庄园... </h3>
                                        <h4>从化超五星级崴格诗温泉庄园五星级崴格诗温泉庄园从化超五星级崴格诗温泉庄园五星级崴格诗温泉庄园</h4>
                                        <h5> <span>原价：<font>1880</font> 节省：<b>￥700</b></span></h5>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a  href="#">
                                <div class="newsIcon"></div>
                                <div class="img"><img src="images/jspic.jpg" /></div>
                                <p>仅118元，原价188元从化超五星级崴格诗温泉庄园... </p>
                                <em>原价：<font>1880</font><br /> <i>1180</i>人抢购</em>
                                <b  class="b2"><i>￥</i>1180</b>
                                <b class="b1"><img src="images/buyicon.jpg" /></b>
                                <div class="Hcontent">
                                    <span class="pbg"></span>
                                    <div class="hovermain">
                                        <h3>仅118元，原价188元从化超五星级崴格诗温泉庄园五星级崴格诗温泉庄园... </h3>
                                        <h4>从化超五星级崴格诗温泉庄园五星级崴格诗温泉庄园从化超五星级崴格诗温泉庄园五星级崴格诗温泉庄园</h4>
                                        <h5> <span>原价：<font>1880</font> 节省：<b>￥700</b></span></h5>
                                    </div>
                                </div>
                            </a>
                        </li>

                    </ul>
                    <!--Pages-->
                    <div class="Pages">
                        <span class="p_cur">目前在第<b>1</b>页,</span>
                        <span class="p_count">共有<b>3</b>页,</span>
                        <span class="p_total">共有<b>3</b>条记录</span>
                        <span class="p_page">
    <a href="#" class="a_first">首页</a><a href="#" class="a_prev">上一页</a>
    <em class="num"><a href="#" class="a_cur">1</a><a href="#">2</a><a href="#">3</a><a href="#">4</a><a href="#">5</a><a href="#">6</a><a href="#">7</a><a href="#">8</a></em>
    <a href="#" class="a_next">下一页</a><a href="#" class="a_end">末页</a>
    <b class="f1">跳转到</b>
    <input class="i_text" type="text" name="textfield" id="textfield" />
    <b class="f2">页</b>
    <input class="i_button" type="submit" name="button" id="button" value="" />
    </span>
                    </div>
                    <!--Pages-->
                </div>
                <!--预约验证-->
                <div></div>
                <script type="text/javascript">
                    jQuery(".preferList li").bind("mouseover", function () {
                        jQuery(this).find(".Hcontent").show();
                    });
                    jQuery(".preferList li").bind("mouseleave", function () {
                        jQuery(this).find(".Hcontent").hide();
                    });
                </script>
                <!---->
            </div>
        </div>
    </div>
    <!--/**/-->
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

<script type="text/javascript" src="Scripts/tab.js"></script>
<script type="text/javascript">
    AutoTables("AutoTable2");
</script>
</body>
</html>
