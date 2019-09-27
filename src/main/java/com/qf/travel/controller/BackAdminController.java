package com.qf.travel.controller;

import com.github.pagehelper.PageInfo;
import com.google.gson.Gson;
import com.qf.travel.common.Page;
import com.qf.travel.entity.TAdmin;
import com.qf.travel.entity.TMenu;
import com.qf.travel.entity.TUser;
import com.qf.travel.service.IAdminService;
import com.qf.travel.service.IMenuService;
import com.qf.travel.service.IUserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationException;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("admin")
public class BackAdminController {

    @Autowired
    private IAdminService adminService;

    @Autowired
    private IUserService userService;

    @Autowired
    private IMenuService menuService;

    //后台管理员登录的方法
    @RequestMapping("login")
    public String backLogin(String username, String password, boolean rememberMe, String code, Model model,HttpSession session){
        System.out.println("后台系统登录接收到的数据是："+username+","+password+","+rememberMe+","+code);
        //先比较用户输入的验证码是否正确
        String kaptcha = (String) session.getAttribute("kaptcha");
        if (kaptcha.equalsIgnoreCase(code)){//输入的验证码正确
            /*使用shiro登录认证*/
            //1.获得交互对象
            Subject currentUser = SecurityUtils.getSubject();
            if (!currentUser.isAuthenticated()){//首次登录
                UsernamePasswordToken token = new UsernamePasswordToken(username,password);//获得token
                token.setRememberMe(rememberMe);//根据用户是否勾选记住我设置记住我功能
                try {
                    currentUser.login(token);//登录认证
                }catch (AuthenticationException exception){//认证失败
                    return "redirect:../back/login.jsp";//返回登录界面
                }
            }
            //验证码正确的前提下，登录认证成功
            //（1）根据用户名查询用户对象，存进session
            TAdmin admin = adminService.queryAdminByName(username);
            session.setAttribute("BACK_LOGIN",admin);
            //(2)根据管理员id查询对应的菜单
            List<TMenu> menuList = menuService.getMenuListById(admin.getId());
            System.out.println("菜单集合的值是:"+menuList.toString());
            session.setAttribute("menuList",menuList);//存到session中
            return "redirect:../back/index.jsp";
        }
        return "redirect:../back/login.jsp";
    }



}
