package com.qf.travel.service.impl;

import com.qf.travel.common.Result;
import com.qf.travel.dao.IBaseDao;
import com.qf.travel.entity.TRole;
import com.qf.travel.mapper.TRoleMapper;
import com.qf.travel.service.IRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RoleServiceImpl extends BaseServiceImpl<TRole> implements IRoleService {

    @Autowired
    private TRoleMapper tRoleMapper;

    @Override
    public IBaseDao<TRole> getDao() {
        return tRoleMapper;
    }

    //先删除原来的角色-用户对应关系
    @Override
    public void delBatchAdminRole(List<Integer> ids) {
        tRoleMapper.delBatchAdminRole(ids);
    }

    //再添加新的角色-用户对应关系
    @Override
    public Result batchAddAdminRole(List<Integer> ids, Integer roleId) {
        Result result = new Result();
        int count = tRoleMapper.batchAddAdminRole(ids,roleId);
        if (count>0){//添加成功
            result.setFlag(true);//设置true
        }
        return result;
    }

    //解除单个角色-用户授权关系
    @Override
    public Result delAuthAdmin(Integer id, Integer roleId) {
        Result result = new Result();
        int count = tRoleMapper.delAuthAdmin(id,roleId);
        if (count>0){//添加成功
            result.setFlag(true);//设置true
        }
        return result;
    }
}
