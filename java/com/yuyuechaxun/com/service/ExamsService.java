package com.yuyuechaxun.com.service;

import com.yuyuechaxun.com.bean.Exams;

import java.util.List;

public interface ExamsService {
    int add(Exams exams);

    List getList();

    int del(int goid);

    int update(Exams exams);

    List getby(Exams exams);

}
