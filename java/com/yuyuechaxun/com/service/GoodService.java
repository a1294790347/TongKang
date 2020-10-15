package com.yuyuechaxun.com.service;

import com.yuyuechaxun.com.bean.Goods;

import java.util.List;
import java.util.Map;

public interface GoodService {
    List<Map<String,Object>> getList();
    List<Map<String, Object>> tjcx();
    Goods getListById(Goods goods);
    int add(Goods goods);

    int del(int goid);

    int update(Goods goods);

    List getby(Goods goods);

}
