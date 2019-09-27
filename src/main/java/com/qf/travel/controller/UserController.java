package com.qf.travel.controller;

import com.github.pagehelper.PageInfo;
import com.google.code.kaptcha.Constants;
import com.google.code.kaptcha.Producer;
import com.google.gson.Gson;
import com.qf.travel.common.Page;
import com.qf.travel.common.PasswordTest;
import com.qf.travel.entity.TUser;
import com.qf.travel.service.IUserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("user")
public class UserController {

    @Autowired
    private IUserService userService;

    //注册ajax,根据用户名查询数据库是否存在
    @RequestMapping("/checkRegisterUser")
    public void checkModifyUser(String param,HttpServletResponse response) throws IOException {
        TUser user = userService.queryUserByUserName(param);
        if (user==null) {//不存在
            response.getWriter().write("y");
        }else{//存在
            response.getWriter().write("用户名已经存在");
        }
    }

    //用户注册的方法,注册的时候要比较验证码
    @RequestMapping("regist")
    public void regist(TUser user,String captcha,HttpSession session,HttpServletResponse response) throws IOException {
        System.out.println("验证码是:"+captcha);//接收到register.jsp的验证码
        String kaptcha = (String) session.getAttribute("kaptcha");
        if (kaptcha.equalsIgnoreCase(captcha)){//验证码匹配成功
            //注册的时候将密码修改成密文
            String password = PasswordTest.creatMD5(user.getUsername(),user.getPassword());//返回盐值加密后的密码
            user.setPassword(password);//修改密码
            user.setLockstate(1);//设置状态值，启用
            System.out.println("注册的用户数据是:"+user.toString());
            int result=userService.insertSelective(user);
            if(result>0){
                System.out.println("准备进入登录页面.......................");
                response.getWriter().write("<script>alert('注册成功,现在跳转到登录界面......');location.href='../login.jsp'</script>");
                /*return "redirect:../login.jsp";//注册成功返回登录界面*/
            }
            response.getWriter().write("<script>alert('注册失败');location.href='../register.jsp'</script>");
            /*return "redirect:../register.jsp";//注册失败返回注册界面*/
        }else{
            response.getWriter().write("<script>alert('验证码输入错误，注册失败');location.href='../register.jsp'</script>");
            /*return "redirect:../register.jsp";//注册失败返回注册界面*/
        }
    }

    //前端登录的方法，用户or密码错误返回，账户被冻结告知用户，只允许状态启动的用户进行登录
    @RequestMapping("login")
    public void login(String username, String password, boolean rememberMe,HttpServletResponse response,HttpSession session) throws IOException {
        System.out.println("接收到的值是:"+username+","+password+","+rememberMe);
        //将密码进行MD5算法加密
        String md5_Pwd = PasswordTest.creatMD5(username,password);
        //1.通过用户名和密码去查询用户对象是否存在
        TUser tUser = userService.queryUserByUserNameAndPwd(username,md5_Pwd);
        if (tUser!=null){//用户存在
            if (tUser.getLockstate()==1){//启用
                session.setAttribute("frontUser",tUser);
                response.getWriter().write("<script>alert('登录成功');location.href='../index.jsp'</script>");
            }else{//冻结
                response.getWriter().write("<script>alert('账号已被冻结，请联系客户10086进行处理');location.href='../login.jsp'</script>");
            }
        }else{//用户不存在
            response.getWriter().write("<script>alert('账号or密码错误');location.href='../login.jsp'</script>");
        }
    }

    //我的账户:根据用户id去数据库查询数据
    @RequestMapping("searchAccountById/{id}")
    public String searchAccountById(@PathVariable Integer id, HttpSession session){
        System.out.println("接收到的id值时:"+id);
        TUser user = userService.selectByPrimaryKey(id);//根据id查询user对象
        System.err.println("得到的用户对象："+user);
        session.setAttribute("frontUser",user);//测试，暂时存到session中
        return "member_index";
    }

    //修改用户信息的方法
    @RequestMapping("update")
    public String update(TUser user){
        System.out.println("修改接收到的用户信息是:"+user);
        userService.updateByPrimaryKeySelective(user);//修改信息
        return "redirect:searchAccountById/"+user.getId();
    }

    //修改密码的方法
    @RequestMapping("updatePwd")
    public String updatePwd(Integer id,String password){
        userService.updatePwdById(id,password);//修改密码，修改后返回我的账户主界面
        return "redirect:searchAccountById/"+id;
    }

    //后台：查询所有用户信息
    @RequestMapping("pageByCondition")
    public String queryAllUser(TUser tUser, Page page, Model model){
        System.out.println("后台用户管理接收到的数据是:"+tUser.getUsername()+","+tUser.getEmail()+","+tUser.getPhonenumber());
        PageInfo<TUser> pageInfo = userService.queryUserPageInfo(tUser,page);//返回pageInfo对象
        System.out.println("pageInfo的数据包含:"+pageInfo.toString());
        model.addAttribute("pageInfo",pageInfo);//将分页数据存起来
        model.addAttribute("url","user/pageByCondition");//将url地址存起来
        model.addAttribute("user",tUser);//将对象存起来
        Map<String,Object> map = new HashMap<>();
        map.put("username",tUser.getUsername());
        map.put("email",tUser.getEmail());
        map.put("phonenumber",tUser.getPhonenumber());
        //将map集合转化为json字符串，回传给前端/将map集合存起来
        model.addAttribute("map",new Gson().toJson(map));
        return "back/user/userlist";
    }

    //后台：管理用户，ajax,停用/启用
    @RequestMapping("use")
    public void use(Integer id , Integer lockstate, HttpServletResponse response) throws IOException {
        System.out.println("接收到的数据是--id:"+id+",状态值:"+lockstate);
        int result = userService.controlUserLockstate(id,lockstate);
        if (result>0){//停用/启用成功
            response.getWriter().write("1");
        }
    }

    //后台：单个删除用户的方法
    @RequiresPermissions("user:del")
    @RequestMapping("del")
    public void delUserById(Integer id,HttpServletResponse response) throws IOException {
        System.out.println("接收单个删除用户的id是:"+id);
        int result = userService.delUserById(id);
        if (result>0){//删除成功
            response.getWriter().write("1");
        }
    }

    //后台：ajax，批量删除用户的方法
    @RequiresPermissions("user:batchDel")
    @RequestMapping("batchDel")
    public void batchDelUserByIds(Integer[] id,HttpServletResponse response) throws IOException {//数组的名称要和表单提交的属性名称一致
        int result = userService.batchDelUserByIds(id);
        if (result>0){//删除成功
            response.getWriter().write("1");
        }
    }

    //后台：展现添加用户界面的方法
    @RequiresPermissions("user:showAddUser")
    @RequestMapping("showAddUser")
    public String showAddUser(){
        return "back/user/addUser";
    }

    //后台：添加用户的方法
    @RequestMapping("add")
    public String addUser(TUser tUser){
        userService.insertSelective(tUser);//添加用户，跳转到分页查询数据
        return "redirect:user/pageByCondition";
    }

    //后台-修改，回显用户信息
    @RequiresPermissions("user:toUpdate")
    @RequestMapping("toUpdate")
    public String toUpdate(Integer id,Model model){
        TUser tUser = userService.selectByPrimaryKey(id);
        model.addAttribute("tUser",tUser);
        return "back/user/update";
    }

    //后台-修改用户信息
    @RequestMapping("backUpdate")
    public String backUpdate(TUser tUser){
        userService.updateByPrimaryKeySelective(tUser);//修改用户信息
        return "redirect:user/pageByCondition";
    }
    //根绝条件修改密码
    @RequestMapping("modofyPwdByCondition")
    public  String modofyPwdByCondition(String LoginName,String password){

        System.out.println("进来了");
        System.out.println(LoginName);
        System.out.println(password);
        if(LoginName.contains("@")&&LoginName.contains(".com")){
            System.out.println("邮箱");
            userService.modofyPwdByEmail(LoginName,password);

        }else if((LoginName.startsWith("1") &&(LoginName.length() == 11))&&LoginName.matches("^[0-9]*$")){
            System.out.println("电话");
            userService.modofyPwdByPhone(LoginName,password);

        }else{
            System.out.println("用户名");
            userService.modofyPwdByUsername(LoginName,password);

        }
        return "login";
    }

    //查询用户信息
    @RequestMapping("checkInfo")
    public void checkInfo(String  param,HttpServletResponse response,HttpServletRequest request) throws IOException {
        System.out.println("进来验证了");
        System.out.println(param);
        HttpSession session = request.getSession();
        TUser user= (TUser) session.getAttribute("user");
        System.out.println(user);
        String LoginName=param;
        if(LoginName.contains("@")&&LoginName.contains(".com")){
            System.out.println("邮箱");
            if(LoginName.equals(user.getEmail())){
                response.getWriter().write("y");
            }else{
                response.getWriter().write("邮箱已经存在");
            }

        }else if((LoginName.startsWith("1") &&(LoginName.length() == 11))&&LoginName.matches("^[0-9]*$")){
            System.out.println("电话");
            if(LoginName.equals(user.getPhonenumber())){
                response.getWriter().write("y");
            }else{
                response.getWriter().write("电话已经存在");
            }
        }else{
            System.out.println("用户名");
            if(LoginName.equals(user.getUsername())){
                response.getWriter().write("y");
            }else{
                response.getWriter().write("用户名已经存在");
            }
        }
    }

}







