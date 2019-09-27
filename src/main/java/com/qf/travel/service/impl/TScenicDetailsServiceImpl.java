package com.qf.travel.service.impl;

import com.qf.travel.dao.IBaseDao;
import com.qf.travel.entity.TScenicDetails;
import com.qf.travel.mapper.TScenicDetailsMapper;
import com.qf.travel.service.TScenicDetailsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TScenicDetailsServiceImpl extends BaseServiceImpl<TScenicDetails> implements TScenicDetailsService {

    @Autowired
    private TScenicDetailsMapper tScenicDetailsMapper;


    @Override
    public IBaseDao<TScenicDetails> getDao() {
        return tScenicDetailsMapper;
    }

    @Override
    public List<TScenicDetails> getScenicDetailsList(int id) {
        return tScenicDetailsMapper.getScenicDetailsList(id);
    }
}
