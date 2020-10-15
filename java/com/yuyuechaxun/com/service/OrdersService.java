package com.yuyuechaxun.com.service;

import java.util.List;
import java.util.Map;

import com.yuyuechaxun.com.bean.Orders;

public interface OrdersService {
	int add(Orders orders);

    List getList();

    int del(int goid);

    int update(Orders orders);

    List getby(Orders orders);

	List<Map<String, Object>> yyjl();
}
