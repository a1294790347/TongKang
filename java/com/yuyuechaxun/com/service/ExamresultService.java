package com.yuyuechaxun.com.service;

import com.yuyuechaxun.com.bean.Examresult;

import java.util.List;

public interface ExamresultService {
    int add(Examresult examresult);

    List getList();

    int del(int goid);

    int update(Examresult examresult);

    List getby(Examresult examresult);
}
