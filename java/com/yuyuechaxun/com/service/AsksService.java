package com.yuyuechaxun.com.service;

import java.util.List;
import java.util.Map;

import com.yuyuechaxun.com.bean.Asks;

public interface AsksService {
	 int add(Asks asks);

	 List getList();

	 int del(Integer asid);

	 int update(Asks asks);

	 List getby(Asks asks);

	List<Map<String, Object>> zxjl();

	int update2(Asks asks);
}
