package com.qf.travel.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.qf.travel.common.Page;
import com.qf.travel.common.Result;
import com.qf.travel.dao.IBaseDao;
import com.qf.travel.entity.TPlaneorder;
import com.qf.travel.mapper.TPlaneorderMapper;
import com.qf.travel.service.TPlaneOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TPlaneOrderServiceImpl extends BaseServiceImpl<TPlaneorder> implements TPlaneOrderService{

    @Autowired
    private TPlaneorderMapper tPlaneorderMapper;

    @Override
    public IBaseDao<TPlaneorder> getDao() {
        return tPlaneorderMapper;
    }

    //分页查询机票订单的数据
    @Override
    public PageInfo<TPlaneorder> queryPlaneOrder(Page page) {
        PageHelper.startPage(page.getCurrentPage(),page.getPageSize());//开启分页
        List<TPlaneorder> list = tPlaneorderMapper.getList();
        return new PageInfo<>(list);
    }

    //单个删除机票订单的方法
    @Override
    public Result delPlaneOrderById(Integer id) {
        Result result = new Result();
        int count = tPlaneorderMapper.deleteByPrimaryKey(id);
        if (count>0){//删除成功
            result.setFlag(true);//设置true
        }
        return result;
    }

    //批量删除机票订单的方法
    @Override
    public Result batchDelPlaneOrderByIds(List<Integer> ids) {
        Result result = new Result();
        int count = tPlaneorderMapper.batchDelPlaneOrderByIds(ids);
        if (count>0){//删除成功
            result.setFlag(true);//设置true
        }
        return result;
    }
}
