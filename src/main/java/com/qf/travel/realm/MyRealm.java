package com.qf.travel.realm;

import com.qf.travel.entity.TAdmin;
import com.qf.travel.entity.TMenu;
import com.qf.travel.entity.TUser;
import com.qf.travel.mapper.TUserMapper;
import com.qf.travel.service.IAdminService;
import com.qf.travel.service.IMenuService;
import com.qf.travel.service.IUserService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

public  class MyRealm extends AuthorizingRealm{

    @Autowired
    private IUserService userService;

    @Autowired
    private IAdminService adminService;

    @Autowired
    private IMenuService menuService;

    //授权的方法
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        System.out.println("授权处理。。");
        TAdmin admin = (TAdmin) principals.getPrimaryPrincipal();
        //String roleName=roleService.getRoleByAdminId(admin.getId());
        SimpleAuthorizationInfo info =new SimpleAuthorizationInfo();
        //得到用户id
        Integer Id = admin.getId();
        //通过用户id查询菜单集合
        List<TMenu> menusList = menuService.getMenuListById(Id);
        //创建一个set集合，用来存入权限的名称
        Set<String> permissionSet = new HashSet<>();
        for (TMenu menu : menusList) {
            //判断菜单的类型
            if(menu.getMenutype()==3){
                //存入权限名称
                permissionSet.add(menu.getMenupath());
            }
        }
        info.setStringPermissions(permissionSet);
        return info;
    }

    //登录认证的方法
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        UsernamePasswordToken userToken = (UsernamePasswordToken) token;//1.把AuthenticationToken转换为UsernamePasswordToken
        String username = userToken.getUsername();   //2.从UsernamePasswordToken中获取username
        //通过用户名去数据库中查询对象是否存在，先查Tuser，再查Tadmin，两个都没有，返回null（数据库中tuser和tadmin的用户名不一致）
        TAdmin admin = adminService.queryAdminByName(username);//查询后台管理员
        if (admin !=null){//后台管理员存在
            String password = admin.getPassword();
            ByteSource credentialsSalt = ByteSource.Util.bytes(username);//使用账号作为盐值
            SimpleAuthenticationInfo simpleAuthenticationInfo = new SimpleAuthenticationInfo(admin ,password,credentialsSalt,this.getName());
            return simpleAuthenticationInfo;
        }
        return null;//用户，管理员经查询都不是的情况
    }
}












