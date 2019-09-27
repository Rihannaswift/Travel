<%@ page import="com.qf.travel.entity.TScenic" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <base href="<%=request.getContextPath()+"/"%>" />
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
    <script type="text/javascript" src="js/jquery-1.8.2.js"></script>
    <script type="text/javascript" src="http://res.wx.qq.com/open/js/jweixin-1.4.0.js"></script>
    <style type="text/css">
        html{height:100%}
        body{height:100%;margin:0px;padding:0px}
        #container{height:100%}
    </style>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=7" />
    <meta name="Author" content="" />
    <title>我的虚拟世界店铺</title>
    <link href="css/css_whir.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="js/jquery-1.8.2.js"></script>
    <script type="text/javascript" src="Scripts/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" language="javascript">
        var nav= '06'

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
    <div class="Current">您当前的位置：<span id="spa"></span>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">首页</a> > 景点推荐</div>

    <div class="flashmap" id="location">
        <%--<img src="images/jingdian_flashmap.jpg" />--%>
    </div>
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=3.0&ak=vR9RBcpBALxr6dyX4a8eX4rZeOugKGpA"></script>
    <script type="text/javascript">

        /*1.手工定位*/
      /*  var map = new BMap.Map("location");
        var point = new BMap.Point(116.404, 39.915);
        map.centerAndZoom(point, 15);
        map.enableScrollWheelZoom(true);//鼠标的方法缩小
        window.setTimeout(function(){
            map.panTo(new BMap.Point(114.064552, 22.548457));
        }, 2000);*/

      /*2.浏览器定位*/
     /* var map = new BMap.Map("location");
      var point = new BMap.Point(116.331398,39.897445);
      map.centerAndZoom(point,12);

      var geolocation = new BMap.Geolocation();
      geolocation.getCurrentPosition(function(r){
          if(this.getStatus() == BMAP_STATUS_SUCCESS){
              var mk = new BMap.Marker(r.point);
              map.addOverlay(mk);
              map.panTo(r.point);
              alert('您的位置：'+r.point.lng+','+r.point.lat);
          }
          else {
              alert('failed'+this.getStatus());
          }
      });*/

     /*3.Ip定位*/
       /* var map = new BMap.Map("location");
        var point = new BMap.Point(116.331398,39.897445);
        map.centerAndZoom(point,12);

        function myFun(result){
            var cityName = result.name;
            map.setCenter(cityName);
            alert("当前定位城市:"+cityName);
        }
        var myCity = new BMap.LocalCity();
        myCity.get(myFun);*/

       /*4.定位SDK辅助定位*/
        var map = new BMap.Map("location");
        var point = new BMap.Point(116.331398,39.897445);
        map.centerAndZoom(point,12);
        map.enableScrollWheelZoom(true)//鼠标的方法缩小

        //添加地图显示的控件
        map.addControl(new BMap.NavigationControl());
        map.addControl(new BMap.ScaleControl());
        map.addControl(new BMap.OverviewMapControl());
        map.addControl(new BMap.MapTypeControl());
        map.setCurrentCity("深圳"); // 仅当设置城市信息时，MapTypeControl的切换功能才能可用

        //地图样式
        map.setMapStyleV2({
            styleId: '35b427b7802d19e5a2496eb472bdf902'
        });

        //全景控件
        var stCtrl = new BMap.PanoramaControl();
        stCtrl.setOffset(new BMap.Size(20, 20));
        map.addControl(stCtrl);
        //全景地图
        window.onload = function(){
            var panorama = new BMap.Panorama('location');   //2
            panorama.setPosition(new BMap.Point(130.320032, 40.589666));    //3  120.320032, 31.589666
            // panorama.setId('0100010000130501122416015Z1');
            panorama.setPov({heading: -40, pitch: 6});  //4
        }

        //
        var geolocation = new BMap.Geolocation();
        // 开启SDK辅助定位
        geolocation.enableSDKLocation();
        geolocation.getCurrentPosition(function(r){
            if(this.getStatus() == BMAP_STATUS_SUCCESS){
                var mk = new BMap.Marker(r.point);
                map.addOverlay(mk);
                map.panTo(r.point);
                alert('您的位置：'+r.point.lng+','+r.point.lat);

                //begin:逆解析获得地图坐标定位的地理位置
                map.centerAndZoom(new BMap.Point(r.point.lng, r.point.lat), 11);
                // 创建地理编码实例
                var myGeo = new BMap.Geocoder();
                // 根据坐标得到地址描述
                myGeo.getLocation(new BMap.Point(r.point.lng, r.point.lat), function(result){
                    if (result){
                        alert(result.address);
                        $("#spa").html(result.address);//设置值

                        //对spa的值进行处理
                        var spaLocation = $("#spa").html();
                        //切割字符串为深圳市
                        alert(spaLocation.substr(3,3));
                        var str = spaLocation.substr(3,3);//得到"深圳市"关键字
                        $("#ti").html(str);
                        //进行判断，如果关键字是"深圳市"，则发送ajax请求到后台取出景点数据
                        if(str=="深圳市"){
                            $.ajax({
                                type:"get",
                                url:"bookScenic/searchSpot",
                                data:{"keyStr":str},
                                success:function (result) {
                                    //{id: 14, title: "深圳市华侨城", scenic: "东部华侨城位于中国深圳大梅沙", image: "images/no1.jpg", price: 80}
                                    console.log(result);
                                    var str;
                                    for(var i =0;i<result.length;i++){
                                        console.log("接收到的值："+result[i].title+","+result[i].scenic+","+result[i].image+","+result[i].price);
                                        str += ' <li >';
                                        str += '<div class="pic"><a href="#"><img src="'+result[i].image+'" /></a></div>';
                                        str += '<div class="title"><a href="#"><font>【<span>'+result[i].title+'</span>】</font><span >'+result[i].scenic+'</span></a><p><span>￥</span><span >'+result[i].price+'</span></p></div>';
                                        str += '</li>';
                                    }
                                    $(".picList").html(str);
                                }
                            });
                        }
                    }
                });
                //end

            }
            else {
                alert('failed'+this.getStatus());
            }
        });

    </script>


    <div class="space20"></div>
    <div class="flashList">
        <h1 id="ti"></h1>
        <ul class="picList">
           <%-- <li >
                <div class="pic"><a href="#"><img src="" /></a></div>
                <div class="title"><a href="#"><font>【<span>标题</span>】</font><span >描述</span></a><p><span>￥</span><span >钱</span></p></div>
            </li>--%>
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
