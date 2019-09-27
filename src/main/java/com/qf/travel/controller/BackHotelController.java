package com.qf.travel.controller;

import com.github.pagehelper.PageInfo;
import com.google.gson.Gson;
import com.qf.travel.common.Page;
import com.qf.travel.entity.THotel;
import com.qf.travel.service.HotelService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/**
 * @author hc
 * @Date 2019/9/16
 */
@Controller
@RequestMapping("backHotel")
public class BackHotelController {
    @Autowired
    private HotelService hotelService;
    //后台：查询所有酒店信息
    @RequestMapping("/pageByCondition")
    public String queryAllHotel(THotel tHotel, Page page, ModelMap model){
        System.out.println("进来查询了");

        System.out.println("后台管理接收到的数据是:"+tHotel.getHotelname()+","+tHotel.getCityname()+","+tHotel.getHoteladdress());
        PageInfo<THotel> pageInfo = hotelService.queryHotelPageInfo(tHotel,page);//返回pageInfo对象
        System.out.println("pageInfo的数据包含:"+pageInfo.toString());
        model.addAttribute("pageInfo",pageInfo);//将分页数据存起来
        model.addAttribute("url","backHotel/pageByCondition");//将url地址存起来
        model.addAttribute("hotel",tHotel);//将对象存起来
        Map<String,Object> map = new HashMap<>();
        map.put("hotelname",tHotel.getHotelname());
        map.put("cityname",tHotel.getCityname());
        map.put("hoteladdress",tHotel.getHoteladdress());
        //将map集合转化为json字符串，回传给前端/将map集合存起来
        model.addAttribute("map",new Gson().toJson(map));
        return "back/hotel/hotelList";
    }

/*    //后台：管理用户，ajax,停用/启用
    @RequestMapping("use")
    public void use(Integer id , Integer lockstate, HttpServletResponse response) throws IOException {
        System.out.println("接收到的数据是--id:"+id+",状态值:"+lockstate);
        int result = HotelService.controlHotelLockstate(id,lockstate);
        if (result>0){//停用/启用成功
            response.getWriter().write("1");
        }
    }*/

    //后台：单个删除用户的方法
    @RequiresPermissions("backHotel:del")
    @RequestMapping("del")
    public void delHotelById(Integer id,HttpServletResponse response) throws IOException {
        System.out.println("接收单个删除用户的id是:"+id);
        int result = hotelService.delHotelById(id);
        if (result>0){//删除成功
            response.getWriter().write("1");
        }
    }

    //后台：ajax，批量删除用户的方法
    @RequiresPermissions("backHotel:batchDel")
    @RequestMapping("batchDel")
    public void batchDelHotelByIds(Integer[] id,HttpServletResponse response) throws IOException {//数组的名称要和表单提交的属性名称一致
        int result = hotelService.batchDelHotelByIds(id);
        if (result>0){//删除成功
            response.getWriter().write("1");
        }
    }

    //后台：展现添加用户界面的方法
    @RequiresPermissions("backHotel:showAddHotel")
    @RequestMapping("showAddHotel")
    public String showAddHotel(){
        return "back/hotel/addHotel";
    }

    //后台：添加用户的方法
    @RequiresPermissions("backHotel:add")
    @RequestMapping("add")
    public String addHotel(THotel tHotel){
        hotelService.insertSelective(tHotel);//添加用户，跳转到分页查询数据
        return "redirect:backHotel/pageByCondition";
    }

    //后台-修改，回显用户信息
    @RequiresPermissions("backHotel:toUpdate")
    @RequestMapping("toUpdate")
    public String toUpdate(Integer id,Model model){
        System.out.println("进来更新了");
        System.out.println(id);
        THotel tHotel = hotelService.selectByPrimaryKey(id);
        System.out.println(tHotel.getCityname());
        model.addAttribute("tHotel",tHotel);
        System.out.println("走了");
        return "back/hotel/backUpdate";
    }

    //后台-修改用户信息
    @RequestMapping("backUpdate")
    public String backUpdate(THotel tHotel){
        System.out.println("开始更新");
        System.out.println(tHotel.getCityname());
        int h=hotelService.updateByPrimaryKeySelective(tHotel);
        System.out.println("修改完了，再见");
        System.out.println("----------------------------------------");
        System.out.println("修改后的结果是"+h);
        return "redirect:backHotel/pageByCondition";
    }

    //查询是否有该酒店
    @RequestMapping("checkHotel")
    public  void checkHotel(String param,HttpServletResponse response) throws IOException {
        THotel th = hotelService.queryHotelByUserName(param);
        if (th==null) {//不存在
            response.getWriter().write("y");
        }else{//存在
            response.getWriter().write("酒店已经存在");
        }
    }
//****************************************************************************
/*@RequestMapping("/checkHotel")
public void checkHotel(String param,HttpServletResponse response) throws IOException {
    THotel Hotel = hotelService.queryHotelByName(param);
    if (Hotel==null) {//不存在
        response.getWriter().write("y");
    }else{//存在
        response.getWriter().write("用户名已经存在");
    }
}*/

  /*  //用户注册的方法,注册的时候要比较验证码
    @RequestMapping("regist")
    public String regist(THotel Hotel, String captcha, HttpSession session, HttpServletResponse response) throws IOException {
        System.out.println("验证码是:"+captcha);//接收到register.jsp的验证码
        String kaptcha = (String) session.getAttribute("kaptcha");
        if (kaptcha.equalsIgnoreCase(captcha)){//验证码匹配成功
            int result=HotelService.addHotel(Hotel);
            if(result>0){
                System.out.println("准备进入登录页面.......................");
                return "redirect:../login.jsp";//注册成功返回登录界面
            }
            return "redirect:../register.jsp";//注册失败返回注册界面
        }else{
            return "redirect:../register.jsp";//注册失败返回注册界面
        }
    }*/

    //登录的方法
   /* @RequestMapping("login")
    public String login(String Hotelname, String password, boolean rememberMe,HttpSession session) {//参数值一一对应
        System.out.println("接收到的值是:"+Hotelname+","+password+","+rememberMe);
        Subject currentHotel = SecurityUtils.getSubject();//获得当前对象
        if(!currentHotel.isAuthenticated()){//第一次登录认证
            HotelnamePasswordToken token = new HotelnamePasswordToken(Hotelname, password);//进行认证成功
            token.setRememberMe(rememberMe);//根据rememberMe勾选的状态来设置是否记住我
            //根据抛出的异常来判断是否登录认证成功
            try {
                currentHotel.login(token);//认证
            }catch (AuthenticationException exception){//抛出异常，认证失败
                return "redirect:../login.jsp";//返回登录页面
            }
        }
        //登录成功，根据用户名查询用户对象，将返回的对象存入session
        THotel Hotel = HotelService.queryHotelByHotelName(Hotelname);
        session.setAttribute("Hotel",Hotel);
        return "redirect:../index.jsp";//不是第一次登录认证，直接进入index.jsp主界面
    }
*/
    //我的账户:根据用户id去数据库查询数据
    /*@RequestMapping("searchAccountById/{id}")
    public String searchAccountById(@PathVariable Integer id, HttpSession session){
        System.out.println("接收到的id值时:"+id);
        THotel Hotel = hotelService.selectByPrimaryKey(id);//根据id查询Hotel对象
        System.err.println("得到的用户对象："+Hotel);
        session.setAttribute("Hotel",Hotel);//测试，暂时存到session中
        return "member_index";
    }

    //修改用户信息的方法
    @RequestMapping("update")
    public String update(THotel Hotel){
        System.out.println("修改接收到的用户信息是:"+Hotel);
        HotelService.updateByPrimaryKeySelective(Hotel);//修改信息
        return "redirect:searchAccountById/"+Hotel.getId();
    }
*/
/*    //修改密码的方法
    @RequestMapping("updatePwd")
    public String updatePwd(Integer id,String password){
        HotelService.updatePwdById(id,password);//修改密码，修改后返回我的账户主界面
        return "redirect:searchAccountById/"+id;
    }*/
}


