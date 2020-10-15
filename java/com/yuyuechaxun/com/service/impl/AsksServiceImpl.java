package com.yuyuechaxun.com.service.impl;

import java.util.List;
import java.util.Map;

import com.yuyuechaxun.com.bean.Asks;
import com.yuyuechaxun.com.dao.AsksDao;
import com.yuyuechaxun.com.service.AsksService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class AsksServiceImpl implements AsksService {
	@Autowired
	private AsksDao asksDao;

	public int add(Asks asks) {
		// TODO Auto-generated method stub
		return asksDao.add(asks);
	}

	public List getList() {
		// TODO Auto-generated method stub
		return asksDao.getList();
	}

	public int del(Integer asid) {
		// TODO Auto-generated method stub
		return asksDao.del(asid);
	}

	public int update(Asks asks) {
		// TODO Auto-generated method stub
		return asksDao.update(asks);
	}

	public List getby(Asks asks) {
		// TODO Auto-generated method stub
		return asksDao.getby(asks);
	}

	public List<Map<String, Object>> zxjl() {
		// TODO Auto-generated method stub
		return asksDao.getList();
	}

	public int update2(Asks asks) {
		// TODO Auto-generated method stub
		return asksDao.update2(asks);
	}

}
