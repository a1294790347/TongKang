package com.yuyuechaxun.com.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.yuyuechaxun.com.bean.Exams;
import com.yuyuechaxun.com.service.ExamsService;
import com.yuyuechaxun.com.util.FileUp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("exams")
public class ExamsController {

    @Autowired
    private ExamsService examsService;
    @Autowired
    private FileUp fileUp;
    @RequestMapping("add")
    public int add(Exams exams){
        return examsService.add(exams);
    }
    @RequestMapping("getList")
    public Map getList(@RequestParam(required=false,defaultValue="1")Integer page,
                       @RequestParam(required=false,defaultValue="10")Integer rows){
        Map map=new HashMap();
        PageHelper pg=new PageHelper();
        pg.startPage(page, rows);
        List list=examsService.getList();
        PageInfo pageInfo=new PageInfo(list);
        map.put("rows", list);
        map.put("total", pageInfo.getTotal());
        return map;
    }
    @RequestMapping("del")
    public int del(int exid){
        return examsService.del(exid);
    }
    @RequestMapping("update")
    public int update(Exams exams){

        return examsService.update(exams);
    }
    @RequestMapping("getList2")
    public List getList2(){
        List list=examsService.getList();
        return list;
    }
    @RequestMapping("getby")
    public Map getby(Exams exams, @RequestParam(required=false,defaultValue="1")Integer page,
                     @RequestParam(required=false,defaultValue="10")Integer rows){
        Map map=new HashMap();
        PageHelper pg=new PageHelper();
        pg.startPage(page, rows);
        List list=examsService.getby(exams);
        PageInfo pageInfo=new PageInfo(list);
        map.put("rows", list);
        map.put("total", pageInfo.getTotal());
        return map;
    }
    @RequestMapping("countScore")
    public int countScore(int countScore, HttpSession session){
        session.setAttribute("countScore",countScore);
        return 0;
    }
}
