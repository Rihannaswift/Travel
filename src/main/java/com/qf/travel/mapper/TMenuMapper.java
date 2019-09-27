package com.qf.travel.mapper;

import com.qf.travel.dao.IBaseDao;
import com.qf.travel.entity.TMenu;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TMenuMapper extends IBaseDao<TMenu> {

    List<TMenu> queryAuthorizationMenuByRoleId(Integer roleId);

    int delAllMenu(Integer roleId);

    int addMenuByRole(@Param("ids") List<Integer> ids, @Param("roleId") Integer roleId);

    List<TMenu> getMenuListById(Integer id);
}