package com.qf.travel.service;

import com.github.pagehelper.PageInfo;
import com.qf.travel.common.Page;
import com.qf.travel.common.Result;
import com.qf.travel.entity.THotelorder;

import java.util.List;

public interface THotelOrderService extends IBaseService<THotelorder>{
    PageInfo<THotelorder> queryHotelOrder(Page page);

    Result delHotelOrderById(Integer id);

    Result batchDelHotelOrderByIds(List<Integer> ids);
}
