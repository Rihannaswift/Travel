package com.qf.travel.mapper;

import com.qf.travel.dao.IBaseDao;
import com.qf.travel.entity.TAdmin;
import com.qf.travel.entity.TUser;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TAdminMapper extends IBaseDao<TAdmin> {
    int deleteByPrimaryKey(Integer id);

    int insert(TAdmin record);

    int insertSelective(TAdmin record);

    TAdmin selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TAdmin record);

    int updateByPrimaryKey(TAdmin record);

    TAdmin queryAdminByName(String username);

    List<TAdmin> queryAuthorizationUesrByRoleId(Integer roleId);

    List<TAdmin> queryNoAdminByRoleId(@Param("roleId") Integer roleId, @Param("username") String username);
}