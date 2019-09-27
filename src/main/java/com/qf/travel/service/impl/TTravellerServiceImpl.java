package com.qf.travel.service.impl;

import com.qf.travel.dao.IBaseDao;
import com.qf.travel.dao.IBaseDao;
import com.qf.travel.entity.TTraveller;
import com.qf.travel.mapper.TTravellerMapper;
import com.qf.travel.service.TTravellerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TTravellerServiceImpl extends BaseServiceImpl<TTraveller> implements TTravellerService {

    @Autowired
    private TTravellerMapper tTravellerMapper;

    @Override
    public IBaseDao<TTraveller> getDao() {
        return tTravellerMapper;
    }

    @Override
    public TTraveller addTraveller(TTraveller tTraveller) {
        tTravellerMapper.addTraveller(tTraveller);

        return tTraveller;
    }

    @Override
    public List<TTraveller> getListByTotal(int total, int userid) {
        int count = tTravellerMapper.getCountByUserId(userid);
        int start = count-total;
        List<TTraveller> list = tTravellerMapper.getListByCountAndStart(start,count,userid);
        return list;
    }
}
