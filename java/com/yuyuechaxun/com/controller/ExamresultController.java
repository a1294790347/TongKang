package com.yuyuechaxun.com.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.yuyuechaxun.com.bean.Examresult;
import com.yuyuechaxun.com.service.ExamresultService;
import com.yuyuechaxun.com.service.ExamsService;
import com.yuyuechaxun.com.util.FileUp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("examresult")
public class ExamresultController {

    @Autowired
    private ExamresultService examresultService;
    @Autowired
    private FileUp fileUp;
    @RequestMapping("add")
    public int add(Examresult examresult){

        return examresultService.add(examresult);
    }
    @RequestMapping("getList")
    public Map getList(@RequestParam(required=false,defaultValue="1")Integer page,
                       @RequestParam(required=false,defaultValue="10")Integer rows){
        Map map=new HashMap();
        PageHelper pg=new PageHelper();
        pg.startPage(page, rows);
        List list=examresultService.getList();
        PageInfo pageInfo=new PageInfo(list);
        map.put("rows", list);
        map.put("total", pageInfo.getTotal());
        return map;
    }
    @RequestMapping("del")
    public int del(int erid){
        return examresultService.del(erid);
    }
    @RequestMapping("update")
    public int update(Examresult examresult){

        return examresultService.update(examresult);
    }
    @RequestMapping("getList2")
    public  List getList2(){
        List list=examresultService.getList();

        return list;
    }
    @RequestMapping("getby")
    public Map getby(Examresult examresult,@RequestParam(required=false,defaultValue="1")Integer page,
                     @RequestParam(required=false,defaultValue="10")Integer rows){
        Map map=new HashMap();
        PageHelper pg=new PageHelper();
        pg.startPage(page, rows);
        List list=examresultService.getby(examresult);
        PageInfo pageInfo=new PageInfo(list);
        map.put("rows", list);
        map.put("total", pageInfo.getTotal());
        return map;
    }
}
