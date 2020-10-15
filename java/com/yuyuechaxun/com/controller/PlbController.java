package com.yuyuechaxun.com.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import com.yuyuechaxun.com.bean.Plb;
import com.yuyuechaxun.com.service.PlbService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping("plb")
public class PlbController {
	@Autowired
	private PlbService plbService;

	@ResponseBody
	@PostMapping("getAll")
	public Integer getAll(Plb plb){
		
		return plbService.getAll(plb);
	}
	
	@ResponseBody
	@RequestMapping("pllb")
	public String pllb(HttpSession session){
		List<Map<String,Object>> pllb= plbService.pllb();
		session.setAttribute("pllb", pllb);	
		
		return "redirect:/qian/buynewsDetail.jsp";
	}
	
}
