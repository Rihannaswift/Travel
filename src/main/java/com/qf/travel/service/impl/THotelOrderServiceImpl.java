package com.qf.travel.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.qf.travel.common.Page;
import com.qf.travel.common.Result;
import com.qf.travel.dao.IBaseDao;
import com.qf.travel.dao.IBaseDao;
import com.qf.travel.entity.THotelorder;
import com.qf.travel.mapper.THotelorderMapper;
import com.qf.travel.service.THotelOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class THotelOrderServiceImpl extends BaseServiceImpl<THotelorder> implements THotelOrderService {
    @Autowired
    private THotelorderMapper tHotelorderMapper;

    @Override
    public IBaseDao<THotelorder> getDao() {
        return tHotelorderMapper;
    }

    //分页查询酒店订单的数据
    @Override
    public PageInfo<THotelorder> queryHotelOrder(Page page) {
        PageHelper.startPage(page.getCurrentPage(),page.getPageSize());//开启分页查询,limit
        List<THotelorder> list = tHotelorderMapper.getList();
        return new PageInfo<>(list);
    }

    //单个删除酒店订单的方法
    @Override
    public Result delHotelOrderById(Integer id) {
        Result result = new Result();
        int count = tHotelorderMapper.deleteByPrimaryKey(id);
        if (count>0){//删除成功，flag设置true标识
            result.setFlag(true);
        }
        return result;
    }

    //批量删除酒店订单id的方法
    @Override
    public Result batchDelHotelOrderByIds(List<Integer> ids) {
        Result result = new Result();
        int count = tHotelorderMapper.batchDelHotelOrderByIds(ids);
        if (count>0){//删除成功
            result.setFlag(true);//设置true
        }
        return result;
    }
}
