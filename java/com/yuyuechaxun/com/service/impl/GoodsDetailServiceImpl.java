package com.yuyuechaxun.com.service.impl;

import com.yuyuechaxun.com.bean.GoodsDetail;
import com.yuyuechaxun.com.dao.GoodsDetailDao;
import com.yuyuechaxun.com.service.GoodsDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GoodsDetailServiceImpl implements GoodsDetailService {
    @Autowired
    private GoodsDetailDao goodsDetailDao;

    @Override
    public int add(GoodsDetail goodsDetail) {
        return goodsDetailDao.add(goodsDetail);
    }

    @Override
    public List getList() {
        return goodsDetailDao.getList();
    }

    @Override
    public int del(int goid) {
        return goodsDetailDao.del(goid);
    }

    @Override
    public int update(GoodsDetail goodsDetail) {
        return goodsDetailDao.update(goodsDetail);
    }

    @Override
    public List getby(GoodsDetail goodsDetail) {
        return goodsDetailDao.getby(goodsDetail);
    }
}
