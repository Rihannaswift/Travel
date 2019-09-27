package com.qf.travel.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.qf.travel.common.Page;
import com.qf.travel.dao.IBaseDao;
import com.qf.travel.dao.IBaseDao;
import com.qf.travel.entity.TScenic;
import com.qf.travel.mapper.TScenicMapper;
import com.qf.travel.service.TScenicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TScenicServiceImpl extends BaseServiceImpl<TScenic> implements TScenicService {
    @Autowired
    private TScenicMapper tScenicMapper;

    @Override
    public IBaseDao<TScenic> getDao() {
        return tScenicMapper;
    }

    //查询景点分页的数据
    @Override
    public PageInfo<TScenic> queryScenicSpotList(String title, Page page) {
        PageHelper.startPage(page.getCurrentPage(),page.getPageSize());//开启分页
        List<TScenic> list = tScenicMapper.queryScenicSpotList(title);
        return new PageInfo<>(list);
    }

    //批量删除景点的方法
    @Override
    public int batchDelscenicSpotByIds(Integer[] id) {
        return tScenicMapper.batchDelscenicSpotByIds(id);
    }

    //根据地理位置批量查询景点的方法
    @Override
    public List<TScenic> searchSpotByKeyStr(String keyStr) {
        return tScenicMapper.searchSpotByKeyStr(keyStr);
    }
}
