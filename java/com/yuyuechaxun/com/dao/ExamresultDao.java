package com.yuyuechaxun.com.dao;

import com.yuyuechaxun.com.bean.Examresult;

import java.util.List;

public interface ExamresultDao {
    int add(Examresult examresult);

    List getList();

    int del(int goid);

    int update(Examresult examresult);

    List getby(Examresult examresult);
}
