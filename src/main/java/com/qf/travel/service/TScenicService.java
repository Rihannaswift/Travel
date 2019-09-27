package com.qf.travel.service;

import com.github.pagehelper.PageInfo;
import com.qf.travel.common.Page;
import com.qf.travel.entity.TScenic;

import java.util.List;

public interface TScenicService extends IBaseService<TScenic> {
    PageInfo<TScenic> queryScenicSpotList(String title, Page page);

    int batchDelscenicSpotByIds(Integer[] id);

    List<TScenic> searchSpotByKeyStr(String keyStr);
}
