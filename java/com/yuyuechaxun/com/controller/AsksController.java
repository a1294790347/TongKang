package com.yuyuechaxun.com.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import com.yuyuechaxun.com.bean.Asks;
import com.yuyuechaxun.com.service.AsksService;
import com.yuyuechaxun.com.util.FileUp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("asks")
public class AsksController {
   
    @Autowired
    private AsksService asksService;
    @Autowired
    FileUp fileUp;
    @RequestMapping("add")
    @ResponseBody
    public int add(Asks asks){

        return asksService.add(asks);
    }
    @RequestMapping("getList")
    @ResponseBody
    public Map getList(@RequestParam(required=false,defaultValue="1")Integer page,
                       @RequestParam(required=false,defaultValue="10")Integer rows){
        Map map=new HashMap();
        PageHelper pg=new PageHelper();
        pg.startPage(page, rows);
        List list=asksService.getList();
        PageInfo pageInfo=new PageInfo(list);
        map.put("rows", list);
        map.put("total", pageInfo.getTotal());
        return map;
    }
    @RequestMapping("del")
    @ResponseBody
    public int del(Integer asid){
        return asksService.del(asid);
    }
    @RequestMapping("update")
    @ResponseBody
    public int update(Asks asks){
        return asksService.update(asks);
    }
    @RequestMapping("getList2")
    @ResponseBody
    public  List getList2(){
        return asksService.getList();
    }
    @RequestMapping("getby")
    @ResponseBody
    public Map getby(Asks asks,@RequestParam(required=false,defaultValue="1")Integer page,
                     @RequestParam(required=false,defaultValue="10")Integer rows){
        Map map=new HashMap();
        PageHelper pg=new PageHelper();
        pg.startPage(page, rows);
        List list=asksService.getby(asks);
        PageInfo pageInfo=new PageInfo(list);
        map.put("rows", list);
        map.put("total", pageInfo.getTotal());
        return map;
    }
    @RequestMapping("zxjl")
    public String zxjl(HttpSession session){
    	List<Map<String,Object>> zxjls = asksService.zxjl();
    	session.setAttribute("zxjls", zxjls);
    	return "forward:/qian/answerShow.jsp";
    }
    @RequestMapping("update2")
    @ResponseBody
    public int update2(Asks asks){
        return asksService.update2(asks);
    }
}
