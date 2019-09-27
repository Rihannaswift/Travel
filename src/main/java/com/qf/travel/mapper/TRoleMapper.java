package com.qf.travel.mapper;

import com.qf.travel.dao.IBaseDao;
import com.qf.travel.entity.TRole;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TRoleMapper extends IBaseDao<TRole> {

    int delBatchAdminRole(List<Integer> ids);

    int batchAddAdminRole(@Param("ids") List<Integer> ids, @Param("roleId") Integer roleId);

    int delAuthAdmin(@Param("id") Integer id, @Param("roleId") Integer roleId);
}