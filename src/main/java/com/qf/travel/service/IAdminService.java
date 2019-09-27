package com.qf.travel.service;

import com.github.pagehelper.PageInfo;
import com.qf.travel.common.Page;
import com.qf.travel.entity.TAdmin;
import com.qf.travel.entity.TUser;

public interface IAdminService extends IBaseService<TAdmin> {

    TAdmin queryAdminByName(String username);

    PageInfo<TAdmin> queryAuthorizationUesrByRoleId(Integer roleId, Page page);

    PageInfo<TAdmin> queryNoAdminByRoleId(Integer roleId, Page page,String username);
}
