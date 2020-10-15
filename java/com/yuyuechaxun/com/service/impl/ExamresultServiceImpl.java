package com.yuyuechaxun.com.service.impl;

import com.yuyuechaxun.com.bean.Examresult;
import com.yuyuechaxun.com.dao.ExamresultDao;
import com.yuyuechaxun.com.service.ExamresultService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ExamresultServiceImpl implements ExamresultService{
    @Autowired
    private ExamresultDao examresultDao;

    @Override
    public int add(Examresult examresult) {
        return examresultDao.add(examresult);
    }

    @Override
    public List getList() {
        return examresultDao.getList();
    }

    @Override
    public int del(int goid) {
        return examresultDao.del(goid);
    }

    @Override
    public int update(Examresult examresult) {
        return examresultDao.update(examresult);
    }

    @Override
    public List getby(Examresult examresult) {
        return examresultDao.getby(examresult);
    }
}
