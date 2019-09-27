package com.qf.travel.mapper;

import com.qf.travel.dao.IBaseDao;
import com.qf.travel.dao.IBaseDao;
import com.qf.travel.entity.THotelorder;

import java.util.List;

public interface THotelorderMapper extends IBaseDao<THotelorder> {

    int batchDelHotelOrderByIds(List<Integer> ids);
}