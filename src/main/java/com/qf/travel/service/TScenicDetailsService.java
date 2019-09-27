package com.qf.travel.service;

import com.qf.travel.entity.TScenicDetails;

import java.util.List;

public interface TScenicDetailsService extends IBaseService<TScenicDetails> {
    List<TScenicDetails> getScenicDetailsList(int id);
}
