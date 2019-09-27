package com.qf.travel.service.impl;

import com.qf.travel.VO.SysMenuVO;
import com.qf.travel.common.Result;
import com.qf.travel.dao.IBaseDao;
import com.qf.travel.entity.TMenu;
import com.qf.travel.mapper.TMenuMapper;
import com.qf.travel.service.IMenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class MenuServiceImpl extends BaseServiceImpl<TMenu> implements IMenuService {

    @Autowired
    private TMenuMapper tMenuMapper;

    @Override
    public IBaseDao<TMenu> getDao() {
        return tMenuMapper;
    }

    //后台:查询角色-菜单对应关系
    @Override
    public List<SysMenuVO> queryAuthorizationMenuByRoleId(Integer roleId) {
        /*先查询所有菜单，再查询当前角色下所拥有的菜单，然后比对，设置checked属性*/
        List<SysMenuVO> sysMenuVOList = new ArrayList<>();
        //1.查询所有菜单信息
        List<TMenu> menuList = tMenuMapper.getList();
        //2.查询当前角色下所拥有的菜单信息
        List<TMenu> menuListByRole = tMenuMapper.queryAuthorizationMenuByRoleId(roleId);
        //3.比较，设置SysMenuVO中的checked属性
        for (TMenu tMenu : menuList) {
            SysMenuVO sysMenuVO = new SysMenuVO();
            sysMenuVO.setMenuId(tMenu.getMenuid());
            sysMenuVO.setMenuParentId(tMenu.getMenuParentid());
            sysMenuVO.setMenuName(tMenu.getMenuname());
            for (TMenu menu : menuListByRole) {
                if (menu.getMenuid()==tMenu.getMenuid()){//当前角色拥有菜单的权限，checked的属性为true
                    sysMenuVO.setChecked(true);//设置true,打开
                }
            }
            sysMenuVOList.add(sysMenuVO);
        }
        return sysMenuVOList;
    }

    //授权菜单，先将角色原来所拥有的菜单id进行全部删除，再添加新菜单
    @Override
    public Result authMenu(List<Integer> ids, Integer roleId) {
        Result result = new Result();
        //1.将角色原先对应的菜单关系全部进行删除
        int delCount = tMenuMapper.delAllMenu(roleId);
        if (delCount>0){//删除成功
            //2.添加新的角色-菜单关系
            int addCount = tMenuMapper.addMenuByRole(ids,roleId);
            if (addCount>0){//添加成功
                result.setFlag(true);//设置true
                return result;
            }
        }
        return null;//失败返回null
    }

    //后台：批量回收权限
    @Override
    public Result delAuthMenuByRoleId(Integer roleId) {
        Result result = new Result();
        int count = tMenuMapper.delAllMenu(roleId);
        if (count>0){//删除成功
            result.setFlag(true);//设置true
        }
        return result;
    }

    //后台：全部添加菜单
    @Override
    public Result addAllMenuByRoleId(List<Integer> ids,Integer roleId) {
        Result result = new Result();
        int count = tMenuMapper.addMenuByRole(ids,roleId);
        if (count>0){//添加成功
            result.setFlag(true);//设置true
        }
        return result;
    }

    //后台登录：根据用户id查询拥有的菜单
    @Override
    public List<TMenu> getMenuListById(Integer id) {
        return tMenuMapper.getMenuListById(id);
    }
}
