package com.yuyuechaxun.com.controller;

import com.yuyuechaxun.com.service.DoctorsService;
import com.yuyuechaxun.com.service.GoodService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("index")
public class IndexData {
    @Autowired
    private DoctorsService doctorsService;
    @Autowired
    private GoodService goodService;

    @RequestMapping("getAll")
    public String getAll(HttpSession session){
        List<Map<String,Object>> allgood = goodService.getList();
        List<Map<String,Object>> alldoctors = doctorsService.getList();
        session.setAttribute("allgood",allgood);
        session.setAttribute("alldoctors",alldoctors);
        return "forward:/qian/index.jsp";
    }
}
