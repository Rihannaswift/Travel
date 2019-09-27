package com.qf.travel.mapper;

import com.qf.travel.dao.IBaseDao;
import com.qf.travel.dao.IBaseDao;
import com.qf.travel.entity.TScenic;

import java.util.List;

public interface TScenicMapper extends IBaseDao<TScenic> {
    List<TScenic> getList();

    List<TScenic> queryScenicSpotList(String title);

    int batchDelscenicSpotByIds(Integer[] id);

    List<TScenic> searchSpotByKeyStr(String keyStr);
}