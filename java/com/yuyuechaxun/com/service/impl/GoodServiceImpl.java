package com.yuyuechaxun.com.service.impl;

import java.util.List;
import java.util.Map;

import com.yuyuechaxun.com.bean.Goods;
import com.yuyuechaxun.com.dao.GoodsDao;
import com.yuyuechaxun.com.service.GoodService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class GoodServiceImpl implements GoodService {
    @Autowired
    private GoodsDao goodsDao;

	public List<Map<String, Object>> getList() {
		// TODO Auto-generated method stub
		return goodsDao.getList();
	}

	public Goods getListById(Goods goods) {
		// TODO Auto-generated method stub
		return goodsDao.getListById(goods);
	}

	public List<Map<String, Object>> tjcx() {
		// TODO Auto-generated method stub
		return goodsDao.tjcx();
	}
	@Override
	public int add(Goods goods) {
		return goodsDao.add(goods);
	}

	@Override
	public int del(int goid) {
		goodsDao.delgd(goid);
		goodsDao.delor(goid);
		return goodsDao.del(goid);
	}

	@Override
	public int update(Goods goods) {
		return goodsDao.update(goods);
	}

	@Override
	public List getby(Goods goods) {
		return goodsDao.getby(goods);
	}



}
