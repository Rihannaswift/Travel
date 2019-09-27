package com.qf.travel.service.impl;

import com.qf.travel.dao.IBaseDao;
import com.qf.travel.entity.TContact;
import com.qf.travel.mapper.TContactMapper;
import com.qf.travel.service.TContactService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TContactServiceImpl extends BaseServiceImpl<TContact> implements TContactService {
    @Autowired
    private TContactMapper tContactMapper;

    @Override
    public IBaseDao<TContact> getDao() {
        return tContactMapper;
    }

    @Override
    public TContact addContact(TContact tContact) {
        int result = tContactMapper.updateIsUsed(tContact.getUserid());
        if (result>=0){
            tContactMapper.addContact(tContact);
            return tContact;
        }
        return null;
    }

    @Override
    public TContact getIsUsedContact(int userId) {

        return tContactMapper.getIsUsedContact(userId);
    }

    @Override
    public int addMessage(String message) {

        return tContactMapper.addMessage(message);
    }

    @Override
    public TContact getByUserId(int userid) {
        return tContactMapper.getIsUsedContact(userid);
    }
}
