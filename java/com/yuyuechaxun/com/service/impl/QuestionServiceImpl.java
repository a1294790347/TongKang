package com.yuyuechaxun.com.service.impl;

import com.yuyuechaxun.com.bean.Question;
import com.yuyuechaxun.com.dao.QuestionDao;
import com.yuyuechaxun.com.service.QuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class QuestionServiceImpl implements QuestionService {
    @Autowired
    private QuestionDao questionDao;

    @Override
    public int add(Question question) {
        return questionDao.add(question);
    }

    @Override
    public List getList() {
        return questionDao.getList();
    }

    @Override
    public int del(int goid) {
        return questionDao.del(goid);
    }

    @Override
    public int update(Question question) {
        return questionDao.update(question);
    }

    @Override
    public List getby(Question question) {
        return questionDao.getby(question);
    }

    @Override
    public List<Map<String, Object>> zndc() {
        return questionDao.zndc();
    }
}
