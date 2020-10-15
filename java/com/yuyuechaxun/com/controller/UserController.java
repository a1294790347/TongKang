package com.yuyuechaxun.com.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.yuyuechaxun.com.bean.Users;
import com.yuyuechaxun.com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/users")
public class UserController {
    @Autowired
    private UserService userService;

    @PostMapping("register")
    @ResponseBody
    public Map<String, Object> register(Users users) {
        Map<String,Object> map=new HashMap<String, Object>();
        int reg=userService.register(users);
        if(reg==1){
            map.put("reg",true);
        }else {
            map.put("reg",false);
        }
        return map;
    }

    @RequestMapping("usbyname")
    @ResponseBody
    public Map<String, Object> usbyname(String usname) {
        Map<String, Object> map = new HashMap<String, Object>();
        int result = userService.usbyname(usname);
        if (result !=0) {
            map.put("exist", true);
        } else {
            map.put("exist", false);
        }
        return map;
    }


    @PostMapping("login")
    @ResponseBody
    public Map<String, Object> login(Users users, HttpSession session) {
        Map<String,Object> map=userService.login(users, session);
        return map;
    }

    @PostMapping("update")
    @ResponseBody
    public Map<String,Object> update(Users users){
        Map<String,Object> map=new HashMap<String, Object>();

        int i=userService.update(users);
        if(i==1){
            Users users1=userService.findus(users);
            map.put("update",true);
            map.put("message",users1);
        }else {
            map.put("update", false);
        }
        return map;
    }
    @RequestMapping("identity")
    @ResponseBody
    public Map<String,Object> identity(Integer usid){
        Map<String,Object> map=new HashMap<String, Object>();
        String iden=userService.identity(usid);
        if(iden=="管理员"){
            map.put("iden",true);
        }else {
            map.put("iden",false);
        }
        return  map;
    }

    @RequestMapping("exit")
    public String exit(HttpSession session){
        session.removeAttribute("user");
        return "redirect:/qian/index.jsp";
    }

    @RequestMapping("add")
    @ResponseBody
    public int add(Users users){

        return userService.add(users);
    }
    @RequestMapping("getList")
    @ResponseBody
    public Map getList(@RequestParam(required=false,defaultValue="1")Integer page,
                       @RequestParam(required=false,defaultValue="10")Integer rows){
        Map map=new HashMap();
        PageHelper pg=new PageHelper();
        pg.startPage(page, rows);
        List list=userService.getList();
        PageInfo pageInfo=new PageInfo(list);
        map.put("rows", list);
        map.put("total", pageInfo.getTotal());
        return map;
    }
    @RequestMapping("del")
    @ResponseBody
    public int del(int usid){
        userService.delasks(usid);
        return userService.del(usid);
    }
    @RequestMapping("getList2")
    @ResponseBody
    public  List getList2(){
        List list=userService.getList();
        return list;
    }
    @RequestMapping("getby")
    @ResponseBody
    public Map getby(Users users,@RequestParam(required=false,defaultValue="1")Integer page,
                     @RequestParam(required=false,defaultValue="10")Integer rows){
        Map map=new HashMap();
        PageHelper pg=new PageHelper();
        pg.startPage(page, rows);
        List list=userService.getby(users);
        PageInfo pageInfo=new PageInfo(list);
        map.put("rows", list);
        map.put("total", pageInfo.getTotal());
        return map;
    }
    @RequestMapping("update2")
    @ResponseBody
    public int update2(Users users){
        return userService.update(users);
    }
}
