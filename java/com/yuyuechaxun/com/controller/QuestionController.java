package com.yuyuechaxun.com.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.yuyuechaxun.com.bean.Question;
import com.yuyuechaxun.com.service.QuestionService;
import com.yuyuechaxun.com.util.FileUp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("question")
public class QuestionController {

    @Autowired
    private QuestionService questionService;
    @Autowired
    private FileUp fileUp;
    @RequestMapping("add")
    @ResponseBody
    public int add(Question question){

        return questionService.add(question);
    }
    @RequestMapping("getList")
    @ResponseBody
    public Map getList(@RequestParam(required=false,defaultValue="1")Integer page,
                       @RequestParam(required=false,defaultValue="10")Integer rows){
        Map map=new HashMap();
        PageHelper pg=new PageHelper();
        pg.startPage(page, rows);
        List list=questionService.getList();
        PageInfo pageInfo=new PageInfo(list);
        map.put("rows", list);
        map.put("total", pageInfo.getTotal());
        return map;
    }
    @RequestMapping("del")
    @ResponseBody
    public int del(int quid){
        return questionService.del(quid);
    }
    @RequestMapping("update")
    @ResponseBody
    public int update(Question question, MultipartFile gourl1, HttpSession session, HttpServletRequest req){

        return questionService.update(question);
    }
    @RequestMapping("getList2")
    @ResponseBody
    public  List getList2(){

        List list=questionService.getList();

        return list;
    }
    @RequestMapping("getby")
    @ResponseBody
    public Map getby(Question question,@RequestParam(required=false,defaultValue="1")Integer page,
                     @RequestParam(required=false,defaultValue="10")Integer rows){
        Map map=new HashMap();
        PageHelper pg=new PageHelper();
        pg.startPage(page, rows);
        List list=questionService.getby(question);
        PageInfo pageInfo=new PageInfo(list);
        map.put("rows", list);
        map.put("total", pageInfo.getTotal());
        return map;
    }
    @RequestMapping("zndc")
    public String zndc(HttpSession session){
        List<Map<String,Object>> zndcs = questionService.zndc();
        session.setAttribute("zndcs",zndcs);
        return "forward:/qian/selfExams.jsp";
    }
}
