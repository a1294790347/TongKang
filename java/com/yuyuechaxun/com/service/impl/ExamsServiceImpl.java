package com.yuyuechaxun.com.service.impl;

import com.yuyuechaxun.com.bean.Exams;
import com.yuyuechaxun.com.dao.ExamsDao;
import com.yuyuechaxun.com.service.ExamsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ExamsServiceImpl  implements ExamsService {
    @Autowired
    private ExamsDao examsDao;

    @Override
    public int add(Exams exams) {
        return examsDao.add(exams);
    }

    @Override
    public List getList() {
        return examsDao.getList();
    }

    @Override
    public int update(Exams exams) {
        return examsDao.update(exams);
    }

    @Override
    public List getby(Exams exams) {
        return examsDao.getby(exams);
    }

    @Override
    public int del(int exid) {
        examsDao.deler(exid);
        examsDao.delqu(exid);
        return examsDao.del(exid);
    }

}
