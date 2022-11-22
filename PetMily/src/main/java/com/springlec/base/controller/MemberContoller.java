package com.springlec.base.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springlec.base.service.BDaoService;

@Controller
public class MemberContoller {

	@Autowired
	BDaoService service;
	
	// login 
	@RequestMapping("/login")
	public String login() throws Exception{
		
		return "login";
	}
	
	// signup 
	@RequestMapping("/signup")
	public String signup() throws Exception{
		
		return "signup";
	}
}
