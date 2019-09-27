package com.qf.travel.mapper;

import com.qf.travel.dao.IBaseDao;
import com.qf.travel.dao.IBaseDao;
import com.qf.travel.entity.TPlaneorder;

import java.util.List;

public interface TPlaneorderMapper extends IBaseDao<TPlaneorder> {

    int batchDelPlaneOrderByIds(List<Integer> ids);
}