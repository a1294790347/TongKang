package com.yuyuechaxun.com.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.yuyuechaxun.com.bean.GoodsDetail;
import com.yuyuechaxun.com.service.GoodsDetailService;
import com.yuyuechaxun.com.util.FileUp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("goodsDetail")
public class GoodsDetailController {

    @Autowired
    private GoodsDetailService goodsDetailService;
    @Autowired
    private FileUp fileUp;
    @RequestMapping("add")
    public int add(GoodsDetail goodsDetail){
        return goodsDetailService.add(goodsDetail);
    }
    @RequestMapping("getList")
    public Map getList(@RequestParam(required=false,defaultValue="1")Integer page,
                       @RequestParam(required=false,defaultValue="10")Integer rows){
        Map map=new HashMap();
        PageHelper pg=new PageHelper();
        pg.startPage(page, rows);
        List list=goodsDetailService.getList();
        PageInfo pageInfo=new PageInfo(list);
        map.put("rows", list);
        map.put("total", pageInfo.getTotal());
        return map;
    }
    @RequestMapping("del")
    public int del(int gdid){
        return goodsDetailService.del(gdid);
    }
    @RequestMapping("update")
    public int update(GoodsDetail goodsDetail){
        return goodsDetailService.update(goodsDetail);
    }
    @RequestMapping("getList2")
    public  List getList2(){

        List list=goodsDetailService.getList();

        return list;
    }
    @RequestMapping("getby")
    public Map getby(GoodsDetail goodsDetail,@RequestParam(required=false,defaultValue="1")Integer page,
                     @RequestParam(required=false,defaultValue="10")Integer rows){
        Map map=new HashMap();
        PageHelper pg=new PageHelper();
        pg.startPage(page, rows);
        List list=goodsDetailService.getby(goodsDetail);
        PageInfo pageInfo=new PageInfo(list);
        map.put("rows", list);
        map.put("total", pageInfo.getTotal());
        return map;
    }
}
