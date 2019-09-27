package com.qf.travel.mapper;

import com.qf.travel.dao.IBaseDao;
import com.qf.travel.entity.TOrder;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TOrderMapper extends IBaseDao<TOrder> {

    int getCount(int userid);

    TOrder getOrderByStartAndCount(@Param("start") int start, @Param("count") int count, @Param("userid") int userid);

    int confirmOrder(String orderid);

    List<TOrder> getAllOrders(int id);

    int batchDelScenicSpotOrderByIds(List<Integer> ids);
}