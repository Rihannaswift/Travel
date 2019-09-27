package com.qf.travel.service;

import com.github.pagehelper.PageInfo;
import com.qf.travel.common.Page;
import com.qf.travel.entity.TUser;

public interface IUserService extends IBaseService<TUser> {

    int addUser(TUser user);

    void updatePwdById(Integer id, String password);

    TUser queryUserByUserName(String username);

    PageInfo<TUser> queryUserPageInfo(TUser tUser,Page page);

    int controlUserLockstate(Integer id, Integer lockstate);

    int delUserById(Integer id);

    int batchDelUserByIds(Integer[] id);
    void modofyPwdByEmail(String loginName, String password);

    void modofyPwdByPhone(String loginName, String password);

    void modofyPwdByUsername(String loginName, String password);

    TUser queryUserByUserNameAndPwd(String username, String password);
}
