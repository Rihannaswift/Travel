package com.qf.travel.mapper;

import com.qf.travel.dao.IBaseDao;
import com.qf.travel.entity.TContact;

public interface TContactMapper extends IBaseDao<TContact> {

    int addContact(TContact tContact);

    int updateIsUsed(Integer userid);

    TContact getIsUsedContact(int userId);

    int addMessage(String message);


}