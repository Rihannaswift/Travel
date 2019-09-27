package com.qf.travel.service;

import com.github.pagehelper.PageInfo;
import com.qf.travel.common.Page;
import com.qf.travel.common.Result;
import com.qf.travel.entity.TPlaneorder;

import java.util.List;

public interface TPlaneOrderService extends IBaseService<TPlaneorder> {
    PageInfo<TPlaneorder> queryPlaneOrder(Page page);

    Result delPlaneOrderById(Integer id);

    Result batchDelPlaneOrderByIds(List<Integer> ids);
}
