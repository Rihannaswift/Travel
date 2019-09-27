package com.qf.travel.service;

import com.qf.travel.entity.TContact;

public interface TContactService extends IBaseService<TContact>{
    TContact addContact(TContact tContact);

    TContact getIsUsedContact(int userId);

    int addMessage(String message);

    TContact getByUserId(int userid);
}
