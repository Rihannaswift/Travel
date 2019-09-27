package com.qf.travel.service.impl;

import com.qf.travel.dao.IBaseDao;
import com.qf.travel.service.IBaseService;

import java.util.List;

public abstract class BaseServiceImpl<T> implements IBaseService<T> {

    //通过抽象方法获得
    public abstract IBaseDao<T> getDao();

    //根据id删除对象的方法
    @Override
    public int deleteByPrimaryKey(Integer id) {
        return getDao().deleteByPrimaryKey(id);
    }

    //根据id新增对象的方法（没有用到动态sql）
    @Override
    public int insert(T t) {
        return getDao().insert(t);
    }

    //根据id新增对象的方法（用到动态sql）
    @Override
    public int insertSelective(T t) {
        return getDao().insertSelective(t);
    }

    //通过id查询对象的方法
    @Override
    public T selectByPrimaryKey(Integer id) {
        return getDao().selectByPrimaryKey(id);
    }

    //根据id给更改对象的方法（用到动态sql）
    @Override
    public int updateByPrimaryKeySelective(T t) {
        return getDao().updateByPrimaryKeySelective(t);
    }

    //根据id更改对象的方法
    @Override
    public int updateByPrimaryKey(T t) {
        return getDao().updateByPrimaryKey(t);
    }

    //查询某对象的集合数据
    @Override
    public List<T> getList() {
        return getDao().getList();
    }
}
