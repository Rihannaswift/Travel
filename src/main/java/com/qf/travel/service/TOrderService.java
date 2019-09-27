package com.qf.travel.service;

import com.github.pagehelper.PageInfo;

import com.qf.travel.common.Page;
import com.qf.travel.common.Result;
import com.qf.travel.entity.TOrder;

import java.util.List;

public interface TOrderService extends IBaseService<TOrder> {
    TOrder getByUserId(int userid);

    int confirmOrder(String orderid);

    PageInfo<TOrder> getgetAllOrders(Page page, int id);

    PageInfo<TOrder> queryScenicSpotOrderPage(Page page);

    Result batchDelScenicSpotOrderByIds(List<Integer> ids);

    Result delScenicSpotOrderById(Integer id);
}
