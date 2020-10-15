package com.yuyuechaxun.com.dao;

import com.yuyuechaxun.com.bean.Asks;

import java.util.List;


public interface AsksDao {
    int add(Asks asks);

    List getList();

    int del(Integer asid);

    int update(Asks asks);

    List getby(Asks asks);

	int update2(Asks asks);

}
