package com.qf.travel.controller;

import com.github.pagehelper.PageInfo;
import com.google.gson.Gson;
import com.qf.travel.VO.SysMenuVO;
import com.qf.travel.common.Page;
import com.qf.travel.common.Result;
import com.qf.travel.entity.TAdmin;
import com.qf.travel.entity.TRole;
import com.qf.travel.entity.TUser;
import com.qf.travel.service.IAdminService;
import com.qf.travel.service.IMenuService;
import com.qf.travel.service.IRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("auth")
public class AuthorizationController {

    @Autowired
    private IRoleService roleService;

    @Autowired
    private IAdminService adminService;

    @Autowired
    private IMenuService menuService;

    //后台：首次进入，查询角色类型信息
    @RequestMapping("searchRole")
    public String searchRole(Model model){
        System.out.println("授权管理，进来了角色信息查询.............");
        List<TRole> roleList = roleService.getList();
        model.addAttribute("roleList",roleList);//存起来
        return "back/auth/authorization";
    }

    //后台：查询当前角色所拥有的用户
    @RequestMapping("queryAuthorizationUesrByRoleId")
    public String queryAuthorizationUesrByRoleId(Integer roleId, Page page, Model model){
        System.out.println("后台接收到的roleId的值是:"+roleId);
        PageInfo<TAdmin> pageInfo = adminService.queryAuthorizationUesrByRoleId(roleId,page);
        System.err.println("pageInfo中的数据:"+pageInfo.toString());
        model.addAttribute("pageInfo",pageInfo);//将pageInfo存起来
        model.addAttribute("url","auth/queryAuthorizationUesrByRoleId");//将url存起来
        model.addAttribute("roleId",roleId);//将roleId带到前端界面
        Map<String,Object> map = new HashMap<>();
        map.put("roleId",roleId);
        model.addAttribute("map",new Gson().toJson(map));//将map传到page.jsp界面
        return "back/auth/auth_admin";
    }

    //后台：查询当前角色下没有的管理员信息
    @RequestMapping("queryNoAdminByRoleId")
    public String queryNoAdminByRoleId(Integer roleId,Page page,Model model,String username){
        System.out.println("当前角色下没有的用户:"+roleId+",用户名："+username);
        PageInfo<TAdmin> pageInfo = adminService.queryNoAdminByRoleId(roleId,page,username);
        System.out.println("pageInfo的信息是:"+pageInfo.toString());
        model.addAttribute("pageInfo",pageInfo);
        model.addAttribute("url","auth/queryNoAdminByRoleId");
        model.addAttribute("roleId",roleId);
        model.addAttribute("username",username);
        Map<String,Object> map = new HashMap<>();
        map.put("roleId",roleId);
        model.addAttribute("map",new Gson().toJson(map));//将map传到page.jsp界面
        return "back/auth/no_auth_admin";
    }

    //后台：批量添加管理员至角色下，添加角色，先将用户原来对象的角色关系进行删除，再添加新的角色-管理员对应关系
    @RequestMapping("batchAddAdminRole")
    @ResponseBody
    public Result batchAddAdminRole(@RequestParam("ids") List<Integer> ids, Integer roleId){
        System.out.println("角色-用户关系对应:"+ids.toString()+",角色id:"+roleId);
        //先删除原来的角色-用户对应关系
        roleService.delBatchAdminRole(ids);
        //再添加新的角色-用户对应关系
        return roleService.batchAddAdminRole(ids,roleId);
    }

    //后台:解除单个角色-用户授权关系
    @RequestMapping("delAuthAdmin")
    @ResponseBody
    public Result delAuthAdmin(Integer id,Integer roleId){
        System.out.println("接收到解除授权关系的数据:id:"+id+",roleId:"+roleId);
        return roleService.delAuthAdmin(id,roleId);
    }

    //后台:查询角色-菜单对应关系
    @RequestMapping("queryAuthorizationMenuByRoleId")
    public String queryAuthorizationMenuByRoleId(Integer roleId,Model model){
        //根据角色查询SysMenuVO的i集合信息回来
        List<SysMenuVO> SysMenuVOList = menuService.queryAuthorizationMenuByRoleId(roleId);
        model.addAttribute("SysMenuVOList",new Gson().toJson(SysMenuVOList));
        model.addAttribute("roleId",roleId);
        return "back/auth/auth_menu";
    }

    //后台：授权菜单的页面
    @RequestMapping("authMenu")
    @ResponseBody
    public Result authMenu(@RequestParam("ids") List<Integer> ids,Integer roleId) {
        System.out.println("接收到的值是："+ids.toString()+",集合的长度是:"+ids.size()+",角色id是："+roleId);
        if (ids.size()==0){//全部清空
            return menuService.delAuthMenuByRoleId(roleId);
        }else if (ids.size()==13){//全部添加
            return menuService.addAllMenuByRoleId(ids,roleId);
        }else{//部分权限处理
            return menuService.authMenu(ids, roleId);
        }
    }


}









