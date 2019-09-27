package com.qf.travel.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.qf.travel.common.Page;
import com.qf.travel.dao.IBaseDao;

import com.qf.travel.entity.TUser;
import com.qf.travel.mapper.TUserMapper;
import com.qf.travel.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl extends BaseServiceImpl<TUser> implements IUserService{

    @Autowired
    private TUserMapper tUserMapper;

    @Override
    public IBaseDao<TUser> getDao() {
        return tUserMapper;
    }

    //注册,ajax判断用户是否存在
    @Override
    public TUser queryUserByUserName(String username) {
        TUser user=tUserMapper.queryUserByUserName(username);
        return user;
    }

    //查询用户的分页集合数据
    @Override
    public PageInfo<TUser> queryUserPageInfo(TUser tUser,Page page) {
        PageHelper.startPage(page.getCurrentPage(),page.getPageSize());
        List<TUser> list = tUserMapper.queryUserListByCondition(tUser);
        return new PageInfo<>(list);
    }

    //管理用户，ajax,停用/启用
    @Override
    public int controlUserLockstate(Integer id, Integer lockstate) {
        return tUserMapper.controlUserLockstate(id,lockstate);
    }

    //通过用户id单个删除用户的方法
    @Override
    public int delUserById(Integer id) {
        return tUserMapper.delUserById(id);
    }

    //批量删除用户的方法
    @Override
    public int batchDelUserByIds(Integer[] id) {
        return tUserMapper.batchDelUserByIds(id);
    }

    //用户注册
    @Override
    public int addUser(TUser user) {
        int result=tUserMapper.addUser(user);
        return result;
    }

    //根据用户id修改密码
    @Override
    public void updatePwdById(Integer id, String password) {
        tUserMapper.updatePwdById(id, password);
    }

    @Override
    public void modofyPwdByEmail(String loginName, String password) {
        String email = loginName;
        tUserMapper.modofyPwdByEmail(email, password);
    }

    @Override
    public void modofyPwdByPhone(String loginName, String password) {
        String phonenumber = loginName;
        tUserMapper.modofyPwdByPhone(phonenumber, password);
    }

    @Override
    public void modofyPwdByUsername(String loginName, String password) {
        String username = loginName;
        tUserMapper.modofyPwdByUsername(username, password);
    }

    //前端登录，根据用户名及密码查询用户是否存在
    @Override
    public TUser queryUserByUserNameAndPwd(String username, String password) {
        return tUserMapper.queryUserByUserNameAndPwd(username,password);
    }
}
