package com.qf.travel.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.qf.travel.common.Page;
import com.qf.travel.dao.IBaseDao;
import com.qf.travel.entity.TAdmin;
import com.qf.travel.entity.TUser;
import com.qf.travel.mapper.TAdminMapper;
import com.qf.travel.service.IAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdminServiceImpl extends BaseServiceImpl<TAdmin> implements IAdminService {

    @Autowired
    private TAdminMapper tAdminMapper;

    @Override
    public IBaseDao<TAdmin> getDao() {
        return tAdminMapper;
    }

    //通过用户名查询后台管理员是否存在
    @Override
    public TAdmin queryAdminByName(String username) {
        return tAdminMapper.queryAdminByName(username);
    }

    //根据角色id分页查询管理员的数据
    @Override
    public PageInfo<TAdmin> queryAuthorizationUesrByRoleId(Integer roleId, Page page) {
        PageHelper.startPage(page.getCurrentPage(),page.getPageSize());//开启分页
        List<TAdmin> list = tAdminMapper.queryAuthorizationUesrByRoleId(roleId);
        return new PageInfo<>(list);
    }

    //根据角色查询没有用户的分页数据
    @Override
    public PageInfo<TAdmin> queryNoAdminByRoleId(Integer roleId, Page page,String username) {
        PageHelper.startPage(page.getCurrentPage(),page.getPageSize());//开启分页
        List<TAdmin> list = tAdminMapper.queryNoAdminByRoleId(roleId,username);
        return new PageInfo<>(list);
    }
}
