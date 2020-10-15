package com.yuyuechaxun.com.service;

import java.util.List;

import com.yuyuechaxun.com.bean.Doctors;

public interface DoctorsService{
	int add(Doctors doctors);

    List getList();

    int del(int goid);

    int update(Doctors doctors);

    List getby(Doctors doctors);
}
