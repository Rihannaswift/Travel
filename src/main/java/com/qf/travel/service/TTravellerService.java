package com.qf.travel.service;

import com.qf.travel.entity.TTraveller;

import java.util.List;

public interface TTravellerService extends IBaseService<TTraveller> {
    TTraveller addTraveller(TTraveller tTraveller);

    List<TTraveller> getListByTotal(int total, int userid);
}
