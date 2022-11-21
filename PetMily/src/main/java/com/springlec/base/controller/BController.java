package com.springlec.base.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springlec.base.model.BDto;
import com.springlec.base.service.BDaoService;

@Controller
public class BController {

	@Autowired
	BDaoService service;
	
	// home
	@RequestMapping("/home")
	public String home() throws Exception{

		return "home";
	}
	
	// 게시판 검색
	@RequestMapping("/list")
	public String list(Model model) throws Exception{
		List<BDto> listDao = service.listDao();
		model.addAttribute("list", listDao);
		return "board_list";
	}
	
	// 게시판 입력 화면 
		@RequestMapping("/write_view")
		public String writeview() {
			return "board_write";
		}
	
	// 게시판 입력 실행 
	@RequestMapping("/write")
	public String write(HttpServletRequest request, Model model) throws Exception{
		service.writeDao(request.getParameter("writer"), request.getParameter("title"), request.getParameter("content"));
		return "redirect:list";
	}
	
	// 게시판 개별 검색 
	@RequestMapping("/content_view")
	public String contentView(HttpServletRequest request, Model model) throws Exception{
		BDto contentDto = service.viewDao(Integer.parseInt(request.getParameter("seqno")));
		model.addAttribute("content_view", contentDto);
		return "board_content";
	}
	
	// 게시판 업데이트
	@RequestMapping("/modify")
	public String modify(HttpServletRequest request) throws Exception{
		service.modifyDao(Integer.parseInt(request.getParameter("seqno")),request.getParameter("title"), request.getParameter("content"), request.getParameter("writer"));
		return "redirect:list";
	}
	
	// 게시판 삭제
	@RequestMapping("/delete")
	public String delete(HttpServletRequest request) throws NumberFormatException, Exception {
		service.deleteDao(Integer.parseInt(request.getParameter("seqno")));
		return "redirect:list";
		
	}
	
	// 게시판 검색 
	@RequestMapping("/searchlist")
	public String searchlist(HttpServletRequest request,Model model) throws Exception{
		String keyword = request.getParameter("keyword");
		String content= request.getParameter("content");
		
		List<BDto> searchListDao = service.searchDao(keyword,content);
		
		model.addAttribute("list", searchListDao);
		return "board_list";
	}
	

	
		

	
} // ----
