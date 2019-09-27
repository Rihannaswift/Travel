package com.qf.travel.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.qf.travel.common.Page;
import com.qf.travel.dao.IBaseDao;
import com.qf.travel.entity.THotel;
import com.qf.travel.mapper.THotelMapper;
import com.qf.travel.service.HotelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author hc
 * @Date 2019/9/16
 */
@Service
public  class THotelServiceImpl extends BaseServiceImpl<THotel> implements HotelService {
@Autowired
    private THotelMapper tHotelMapper;
   @Override
    public IBaseDao<THotel> getDao() {
        return tHotelMapper;
    }
    @Override
    public PageInfo<THotel> queryHotelPageInfo(THotel tHotel, Page page) {
        PageHelper.startPage(page.getCurrentPage(), page.getPageSize());
        List<THotel> list = tHotelMapper.queryAllHotelList(tHotel);
        return new PageInfo<>(list);
    }

    @Override
    public int delHotelById(Integer id) {
        return tHotelMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int batchDelHotelByIds(Integer[] id) {
        return tHotelMapper.batchDelHotelByIds(id);
    }

/*    @Override
    public void updateByPrimaryKeySelective(THotel tHotel) {
            tHotelMapper.updateByPrimaryKeySelective(tHotel);
    }*/

    @Override
    public THotel queryHotelByUserName(String param) {
        return tHotelMapper.queryHotelByUserName(param);
    }
}
