package com.springlec.base.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springlec.base.dao.MemberDao;
import com.springlec.base.service.BDaoService;
import com.springlec.base.service.MemberService;

@Controller
public class MemberContoller {

	@Autowired
	MemberService service;
	
	// login 
	@RequestMapping("/login")
	public String login(HttpServletRequest request, Model model) throws Exception{
		int result = service.longinDao(request);
		if(result == 0) {
			return "home";
		}else {
			model.addAttribute("warning","아이디와 비밀번호를 확인해주세요");
			return "login";
		}
	}
	
	// signup 
	@RequestMapping("/signup")
	public String signup() throws Exception{
		
		return "signup";
	}
}
