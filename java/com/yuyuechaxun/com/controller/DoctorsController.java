package com.yuyuechaxun.com.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.yuyuechaxun.com.bean.Doctors;
import com.yuyuechaxun.com.service.DoctorsService;
import com.yuyuechaxun.com.util.FileUp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("/doctors")
public class DoctorsController {

    @Autowired
    private DoctorsService doctorsService;
    @Autowired
    FileUp fileUp;
    @RequestMapping("/add")
    @ResponseBody
    public int add(Doctors doctors, MultipartFile dourl1, HttpSession session, HttpServletRequest req){
        String path=req.getContextPath();
        String url=fileUp.upload(session, dourl1);
        if (!"".equals(url)) {
            doctors.setDourl(path+url);
        }else{
            doctors.setDourl(" ");
        }
        return doctorsService.add(doctors);
    }
    @RequestMapping("/getList")
    @ResponseBody
    public Map getList(@RequestParam(required=false,defaultValue="1")Integer page,
                       @RequestParam(required=false,defaultValue="10")Integer rows){
        Map map=new HashMap();
        PageHelper pg=new PageHelper();
        pg.startPage(page, rows);
        List list=doctorsService.getList();
        PageInfo pageInfo=new PageInfo(list);
        map.put("rows", list);
        map.put("total", pageInfo.getTotal());
        return map;
    }
    @RequestMapping("/del")
    @ResponseBody
    public int del(int doid){
        return doctorsService.del(doid);
    }
    @RequestMapping("/update")
    @ResponseBody
    public int update(Doctors doctors, MultipartFile dourl1, HttpSession session, HttpServletRequest req){
        String path=req.getContextPath();
        String url=fileUp.upload(session, dourl1);
        if (!"".equals(url)) {
            doctors.setDourl(path+url);
        }else{
            doctors.setDourl(" ");
        }
        return doctorsService.update(doctors);
    }
    @RequestMapping("/getList2")
    @ResponseBody
    public  List getList2(){
        Map map=new HashMap();
        List list=doctorsService.getList();
        return list;
    }
    @RequestMapping("/getby")
    @ResponseBody
    public Map getby(Doctors doctors,@RequestParam(required=false,defaultValue="1")Integer page,
                     @RequestParam(required=false,defaultValue="10")Integer rows){
        Map map=new HashMap();
        PageHelper pg=new PageHelper();
        pg.startPage(page, rows);
        List list=doctorsService.getby(doctors);
        PageInfo pageInfo=new PageInfo(list);
        map.put("rows", list);
        map.put("total", pageInfo.getTotal());
        return map;
    }
    @RequestMapping("yszr")
    public String zxjl(HttpSession session){
    	List<Map<String,Object>> yszrs = doctorsService.getList();
    	session.setAttribute("yszrs", yszrs);
    	return "forward:/qian/doctors.jsp";
    }
}
