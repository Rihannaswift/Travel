package com.qf.travel.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.qf.travel.common.Page;
import com.qf.travel.common.Result;
import com.qf.travel.dao.IBaseDao;
import com.qf.travel.entity.TOrder;
import com.qf.travel.mapper.TOrderMapper;
import com.qf.travel.service.TOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TOrderServiceImpl extends BaseServiceImpl<TOrder> implements TOrderService {

    @Autowired
    private TOrderMapper tOrderMapper;

    @Override
    public IBaseDao<TOrder> getDao() {
        return tOrderMapper;
    }

    @Override
    public TOrder getByUserId(int userid) {
        int count = tOrderMapper.getCount(userid);
        int start = count-1;
        TOrder order = tOrderMapper.getOrderByStartAndCount(start,count,userid);

        return order;
    }

    @Override
    public int confirmOrder(String orderid) {
        return tOrderMapper.confirmOrder(orderid);
    }

    @Override
    public PageInfo<TOrder> getgetAllOrders(Page page, int id) {
        PageHelper.startPage(page.getCurrentPage(),page.getPageSize());
        List<TOrder> list = tOrderMapper.getAllOrders(id);
        return new PageInfo<>(list);
    }

    //后端：查询景点订单
    @Override
    public PageInfo<TOrder> queryScenicSpotOrderPage(Page page) {
        PageHelper.startPage(page.getCurrentPage(),page.getPageSize());//开启分页
        List<TOrder> list = tOrderMapper.getList();
        return new PageInfo<>(list);
    }

    //后台，批量删除订单的方法
    @Override
    public Result batchDelScenicSpotOrderByIds(List<Integer> ids) {
        Result result = new Result();
        int count = tOrderMapper.batchDelScenicSpotOrderByIds(ids);
        if (count>0){//删除成功
            result.setFlag(true);//设置true
        }
        return result;
    }

    //后台：单个删除景点
    @Override
    public Result delScenicSpotOrderById(Integer id) {
        Result result = new Result();
        int count = tOrderMapper.deleteByPrimaryKey(id);
        if (count>0){//删除成功
            result.setFlag(true);//设置true
        }
        return result;
    }
}
