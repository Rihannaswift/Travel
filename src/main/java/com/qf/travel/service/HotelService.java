package com.qf.travel.service;

import com.github.pagehelper.PageInfo;
import com.qf.travel.common.Page;
import com.qf.travel.entity.THotel;


/**
 * @author hc
 * @Date 2019/9/16
 */
public interface HotelService extends IBaseService<THotel> {

    PageInfo<THotel> queryHotelPageInfo(THotel tHotel, Page page);

    int delHotelById(Integer id);

    int batchDelHotelByIds(Integer[] id);


    THotel queryHotelByUserName(String param);
}
