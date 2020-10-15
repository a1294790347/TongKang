package com.yuyuechaxun.com.dao;

import com.yuyuechaxun.com.bean.Exams;

import java.util.List;

public interface ExamsDao {
    int add(Exams exams);

    List getList();

    int del(int goid);

    int update(Exams exams);

    List getby(Exams exams);

    void deler(int exid);

    void delqu(int exid);
}
