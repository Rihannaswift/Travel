package com.qf.travel.mapper;

import com.qf.travel.dao.IBaseDao;
import com.qf.travel.entity.TTraveller;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TTravellerMapper extends IBaseDao<TTraveller>{

    int addTraveller(TTraveller tTraveller);

    int getCountByUserId(int userid);

    List<TTraveller> getListByCountAndStart(@Param("start") int start, @Param("count") int count, @Param("userid") int userid);
}