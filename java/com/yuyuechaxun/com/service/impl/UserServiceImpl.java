package com.yuyuechaxun.com.service.impl;


import com.yuyuechaxun.com.bean.Users;
import com.yuyuechaxun.com.dao.UsersDao;
import com.yuyuechaxun.com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UsersDao usersDao;

	public List<Map<String, Object>> getList() {
		// TODO Auto-generated method stub
		return usersDao.getList();
	}

	@Override
	public int usbyname(String usname) {
		return usersDao.usbyname(usname);
	}

	@Override
	public Map<String, Object> login(Users users, HttpSession session) {
		Map<String,Object> map=new HashMap<String, Object>();
		Users user=usersDao.login(users);
		if(user!=null&&!user.equals("")){
			session.setAttribute("user",user);
			session.setAttribute("g",true);
			map.put("login",true);
			map.put("flag",true);
			if(user.getUsden().equals("管理员")||user.getUsden()=="管理员"){
				map.put("iden",true);
			}else {
				map.put("iden",false);
			}
		}else {
			map.put("login",false);
			map.put("flag",false);
			session.setAttribute("g",false);
		}
		return map;
	}

	@Override
	public int update(Users users) {
		return usersDao.update(users);
	}



	@Override
	public int register(Users users) {
		return usersDao.register(users);
	}

	@Override
	public Users findus(Users users) {

		Users users1=usersDao.findus(users);

		return  users1;
	}

	@Override
	public String identity(Integer usid) {
		return usersDao.identity(usid);
	}

	@Override
	public int add(Users users) {
		return usersDao.add( users);
	}

	@Override
	public int del(int usid) {
		return usersDao.del( usid);
	}

	@Override
	public List getby(Users users) {
		return usersDao.getby( users);
	}

	@Override
	public void delasks(int usid) {
		usersDao.delasks(usid);
	}


}
