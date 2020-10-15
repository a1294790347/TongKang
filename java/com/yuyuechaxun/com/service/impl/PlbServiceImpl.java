package com.yuyuechaxun.com.service.impl;

import java.util.List;
import java.util.Map;

import com.yuyuechaxun.com.bean.Plb;
import com.yuyuechaxun.com.dao.PlbDao;
import com.yuyuechaxun.com.service.PlbService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class PlbServiceImpl implements PlbService {
	@Autowired
	private PlbDao plbDao;
	@Override
	public Integer getAll(Plb plb) {
		
		return plbDao.getAll(plb);
	}
	
	@Override
	public List<Map<String, Object>> pllb() {
		
		return plbDao.pllb();
	}
	
}
