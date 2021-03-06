package com.yuyuechaxun.com.service;

import com.yuyuechaxun.com.bean.Users;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

public interface UserService {
    List<Map<String,Object>> getList();
    // 昵称验证
    int usbyname(String usname);
    // 登录验证
    Map<String, Object> login(Users users, HttpSession session);
    // 修改
    int update(Users users);
    // 注册
    int register(Users users);
    // 查询信息
    Users findus(Users users);
    // 判断身份
    String identity(Integer usid);

    int add(Users users);

    int del(int usid);

    List getby(Users users);

    void delasks(int usid);
}
