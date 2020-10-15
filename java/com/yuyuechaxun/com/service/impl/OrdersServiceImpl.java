package com.yuyuechaxun.com.service.impl;

import java.util.List;
import java.util.Map;

import com.yuyuechaxun.com.bean.Orders;
import com.yuyuechaxun.com.dao.OrdersDao;
import com.yuyuechaxun.com.service.OrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class OrdersServiceImpl implements OrdersService {
	@Autowired
	private OrdersDao ordersDao;
	
	public int add(Orders orders) {
		// TODO Auto-generated method stub
		return ordersDao.add(orders);
	}

	public List getList() {
		// TODO Auto-generated method stub
		return ordersDao.getList();
	}

	public int del(int goid) {
		// TODO Auto-generated method stub
		return ordersDao.del(goid);
	}

	public int update(Orders orders) {
		// TODO Auto-generated method stub
		return ordersDao.update(orders);
	}

	public List getby(Orders orders) {
		// TODO Auto-generated method stub
		return ordersDao.getby(orders);
	}

	public List<Map<String, Object>> yyjl() {
		// TODO Auto-generated method stub
		return ordersDao.yyjl();
	}

}
