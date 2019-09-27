package com.qf.travel.mapper;

import com.qf.travel.dao.IBaseDao;
import com.qf.travel.entity.THotel;

import java.util.List;

public interface THotelMapper extends IBaseDao<THotel> {
   int deleteByPrimaryKey(Integer id);

    int insert(THotel record);

    int insertSelective(THotel record);

    THotel selectByPrimaryKey(Integer id);

   // int updateByPrimaryKeySelective(THotel record);

    int updateByPrimaryKey(THotel record);

    List<THotel> queryAllHotelList(THotel tHotel);


   // int delHotelById(Integer id);

    int batchDelHotelByIds(Integer[] id);

 THotel queryHotelByUserName(String param);
}