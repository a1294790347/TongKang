package com.yuyuechaxun.com.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import com.yuyuechaxun.com.bean.Goods;
import com.yuyuechaxun.com.dao.GoodsDao;
import com.yuyuechaxun.com.service.GoodService;
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
@RequestMapping("good")
public class GoodController {
    @Autowired
    private GoodService goodsService;
    @Autowired
    private GoodsDao goodsDao;
    @Autowired
    private FileUp fileUp;
    @RequestMapping("add")
    @ResponseBody
    public int add(Goods goods, MultipartFile gourl1, HttpSession session, HttpServletRequest req){
        String path=req.getContextPath();
        String url=fileUp.upload(session, gourl1);
        if (!"".equals(url)) {
            goods.setGourl(path+url);
        }else{
            goods.setGourl(" ");
        }
        return goodsService.add(goods);
    }
    @RequestMapping("getList")
    @ResponseBody
    public Map getList(@RequestParam(required=false,defaultValue="1")Integer page,
                       @RequestParam(required=false,defaultValue="10")Integer rows){
        Map map=new HashMap();
        PageHelper pg=new PageHelper();
        pg.startPage(page, rows);
        List list=goodsService.getList();
        PageInfo pageInfo=new PageInfo(list);
        map.put("rows", list);
        map.put("total", pageInfo.getTotal());
        return map;
    }
    @RequestMapping("del")
    @ResponseBody
    public int del(int goid){
        return goodsService.del(goid);
    }
    @RequestMapping("update")
    @ResponseBody
    public int update(Goods goods, MultipartFile gourl1, HttpSession session, HttpServletRequest req){
        String path=req.getContextPath();
        String url=fileUp.upload(session, gourl1);
        if (!"".equals(url)) {
            goods.setGourl(path+url);
        }else{
            goods.setGourl(" ");
        }
        return goodsDao.update(goods);
    }
    @RequestMapping("getList2")
    @ResponseBody
    public  List getList2(){
        List list=goodsDao.getList();
        return list;
    }
    @RequestMapping("getby")
    @ResponseBody
    public Map getby(Goods goods,@RequestParam(required=false,defaultValue="1")Integer page,
                     @RequestParam(required=false,defaultValue="10")Integer rows){
        Map map=new HashMap();
        PageHelper pg=new PageHelper();
        pg.startPage(page, rows);
        List list=goodsDao.getby(goods);
        PageInfo pageInfo=new PageInfo(list);
        map.put("rows", list);
        map.put("total", pageInfo.getTotal());
        return map;
    }
    @RequestMapping("/tjcx")
    public String tjcx(HttpSession session){
        List<Map<String, Object>> tjcxs = goodsService.tjcx();
        session.setAttribute("tjcxs", tjcxs);
        return "forward:/qian/goods.jsp";
    }
    @RequestMapping("/tjtcxq")
    @ResponseBody
    public String tjtcxq(Goods goods, HttpSession session){
        List<Map<String, Object>> tjcxs = goodsService.tjcx();
        return "forward:/qian/goods.jsp";
    }
    @RequestMapping("/getListById")
    @ResponseBody
    public Goods getListById(Goods goods){
        return goodsService.getListById(goods);
    }
}
