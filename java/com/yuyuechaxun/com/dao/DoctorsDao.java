package com.yuyuechaxun.com.dao;

import com.yuyuechaxun.com.bean.Doctors;
import java.util.List;

public interface DoctorsDao {
    int add(Doctors doctors);

    List getList();

    int del(int goid);

    int update(Doctors doctors);

    List getby(Doctors doctors);
}
