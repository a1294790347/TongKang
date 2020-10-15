package com.yuyuechaxun.com.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import com.yuyuechaxun.com.bean.Orders;
import com.yuyuechaxun.com.service.OrdersService;
import com.yuyuechaxun.com.util.FileUp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;


@Controller
@RequestMapping("orders")
public class OrdersController {

    @Autowired
    private OrdersService ordersService;
    @Autowired
    FileUp fileUp;
    @RequestMapping("add")
    @ResponseBody
    public int add(Orders orders){
        return ordersService.add(orders);
    }
    @RequestMapping("getList")
    @ResponseBody
    public Map getList(@RequestParam(required=false,defaultValue="1")Integer page,
                       @RequestParam(required=false,defaultValue="10")Integer rows){
        Map map=new HashMap();
        PageHelper pg=new PageHelper();
        pg.startPage(page, rows);
        List list=ordersService.getList();
        PageInfo pageInfo=new PageInfo(list);
        map.put("rows", list);
        map.put("total", pageInfo.getTotal());
        return map;
    }
    @RequestMapping("del")
    @ResponseBody
    public int del(int orid){
        return ordersService.del(orid);
    }
    @RequestMapping("update")
    @ResponseBody
    public int update(Orders orders){
        return ordersService.update(orders);
    }
    @RequestMapping("getList2")
    @ResponseBody
    public  List getList2(){

        List list=ordersService.getList();
        return list;
    }
    @RequestMapping("getby")
    @ResponseBody
    public Map getby(Orders orders,@RequestParam(required=false,defaultValue="1")Integer page,
                     @RequestParam(required=false,defaultValue="10")Integer rows){
        Map map=new HashMap();
        PageHelper pg=new PageHelper();
        pg.startPage(page, rows);
        List list=ordersService.getby(orders);
        PageInfo pageInfo=new PageInfo(list);
        map.put("rows", list);
        map.put("total", pageInfo.getTotal());
        return map;
    }
    @RequestMapping("yyjl")
    public String yyjl(HttpSession session){
    	List<Map<String,Object>> yyjls = ordersService.yyjl();
    	session.setAttribute("yyjls", yyjls);
    	return "forward:/qian/ordersShow.jsp";
    }
}
