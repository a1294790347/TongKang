package com.yuyuechaxun.com.dao;

import com.yuyuechaxun.com.bean.Orders;

import java.util.List;
import java.util.Map;

public interface OrdersDao {
    int add(Orders orders);

    List getList();

    int del(int goid);

    int update(Orders orders);

    List getby(Orders orders);

	List<Map<String, Object>> yyjl();
}
