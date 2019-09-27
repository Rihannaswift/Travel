package com.qf.travel.service;

import com.qf.travel.VO.SysMenuVO;
import com.qf.travel.common.Result;
import com.qf.travel.entity.TMenu;

import java.util.List;

public interface IMenuService extends IBaseService<TMenu> {
    List<SysMenuVO> queryAuthorizationMenuByRoleId(Integer roleId);

    Result authMenu(List<Integer> ids, Integer roleId);

    Result delAuthMenuByRoleId(Integer roleId);

    Result addAllMenuByRoleId(List<Integer> ids, Integer roleId);

    List<TMenu> getMenuListById(Integer id);
}
