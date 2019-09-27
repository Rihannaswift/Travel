package com.qf.travel.mapper;

import com.qf.travel.dao.IBaseDao;
import com.qf.travel.entity.TScenicDetails;

import java.util.List;

public interface TScenicDetailsMapper extends IBaseDao<TScenicDetails> {

    List<TScenicDetails> getScenicDetailsList(int id);
}