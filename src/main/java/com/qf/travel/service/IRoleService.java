package com.qf.travel.service;

import com.qf.travel.common.Result;
import com.qf.travel.entity.TRole;

import java.util.List;

public interface IRoleService extends IBaseService<TRole> {
    void delBatchAdminRole(List<Integer> ids);

    Result batchAddAdminRole(List<Integer> ids, Integer roleId);

    Result delAuthAdmin(Integer id, Integer roleId);
}
