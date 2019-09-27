package com.qf.travel.mapper;

import com.qf.travel.dao.IBaseDao;
import com.qf.travel.entity.TUser;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TUserMapper extends IBaseDao<TUser> {
    int deleteByPrimaryKey(Integer id);

    int insert(TUser record);

    int insertSelective(TUser record);

    TUser selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TUser record);

    int updateByPrimaryKey(TUser record);

    int updatePwdById(@Param("id") Integer id, @Param("password") String password);

    int addUser(TUser user);

    TUser queryUserByUserName(String username);

    List<TUser> queryUserListByCondition(TUser tUser);

    int controlUserLockstate(@Param("id") Integer id, @Param("lockstate") Integer lockstate);

    int delUserById(Integer id);

    int batchDelUserByIds(Integer[] id);
    void modofyPwdByEmail(@Param("email")String email,@Param("password") String password);


    void modofyPwdByPhone(@Param("phonenumber")String phonenumber, @Param("password")String password);

    void modofyPwdByUsername(@Param("username")String username,@Param("password") String password);

    TUser queryUserByUserNameAndPwd(@Param("username") String username, @Param("password") String password);
}