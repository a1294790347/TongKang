package com.yuyuechaxun.com.dao;

import com.yuyuechaxun.com.bean.GoodsDetail;

import java.util.List;

public interface GoodsDetailDao {
    int add(GoodsDetail goodsDetail);

    List getList();

    int del(int goid);

    int update(GoodsDetail goodsDetail);

    List getby(GoodsDetail goodsDetail);
}
