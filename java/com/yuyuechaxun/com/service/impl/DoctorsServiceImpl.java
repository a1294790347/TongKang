package com.yuyuechaxun.com.service.impl;

import java.util.List;

import com.yuyuechaxun.com.bean.Doctors;
import com.yuyuechaxun.com.dao.DoctorsDao;
import com.yuyuechaxun.com.service.DoctorsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DoctorsServiceImpl implements DoctorsService {
	@Autowired
	private DoctorsDao doctorsDao;
	
	public int add(Doctors doctors) {
		// TODO Auto-generated method stub
		return doctorsDao.add(doctors);
	}

	public List getList() {
		// TODO Auto-generated method stub
		return doctorsDao.getList();
	}

	public int del(int goid) {
		// TODO Auto-generated method stub
		return doctorsDao.del(goid);
	}

	public int update(Doctors doctors) {
		// TODO Auto-generated method stub
		return doctorsDao.update(doctors);
	}

	public List getby(Doctors doctors) {
		// TODO Auto-generated method stub
		return doctorsDao.getby(doctors);
	}

}
