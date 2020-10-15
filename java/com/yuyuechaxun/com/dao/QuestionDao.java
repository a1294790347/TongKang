package com.yuyuechaxun.com.dao;

import com.yuyuechaxun.com.bean.Question;

import java.util.List;
import java.util.Map;

public interface QuestionDao {
    int add(Question question);

    List getList();

    int del(int goid);

    int update(Question question);

    List getby(Question question);

    List<Map<String, Object>> zndc();
}
