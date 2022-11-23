package com.springlec.base.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springlec.base.model.BDto;
import com.springlec.base.model.PagingDTO;
import com.springlec.base.model.PostingDTO;
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
	// 홈에서 카드 클릭시
	@RequestMapping("/petspec/detail")
	public String card(HttpServletRequest request, Model model) throws Exception{
		String contentDto = service.viewPetspecDetailDao(request.getParameter("psbreeds"));
		
		model.addAttribute("PSBREEDS",request.getParameter("psbreeds"));
		model.addAttribute("content_view",contentDto);
		return "petspec_detail";
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
	// 일상이야기 게시판
		@RequestMapping("/list/story")
		public String storyList(HttpServletRequest request, Model model) throws Exception{
			int cPage = 0;
			int pageLength = 5;
			int totalRows = 0;
			int rowLength=5;
			
			String tempPage = request.getParameter("page");
			System.out.println(tempPage);
			String pcategory_temp1 = request.getParameter("pcategory");
			String pcategory_temp2 = (String) request.getAttribute("pcategory");
			String pcategory = "";
			String option = request.getParameter("option");
			String query = request.getParameter("query");
			
			if(pcategory_temp1 == null || pcategory_temp1.equals("")) {
				pcategory = pcategory_temp2;
			}
			
			if(pcategory_temp2 == null || pcategory_temp2.equals("")) {
				pcategory = pcategory_temp1;
			}
			
			if(option == null) {
				option = "ptitle";
			}
			if(query == null) {
				query = "";
			}
			
			if(tempPage == null || tempPage.length()==0) {
				cPage = 1;
			}
			try {
				cPage = Integer.parseInt(tempPage);
			} catch (Exception e) {
				cPage = 1;
			}
			
			pcategory = "volunteer";
			totalRows =service.postingListRowDao(pcategory);
			
			System.out.println("totalRows:"+totalRows);
			PagingDTO dto = service.postingListPagingDao(cPage, totalRows, pageLength);
			System.out.println(">>>>>>");
			
			List<PostingDTO> listDao = service.postingGetListDao(cPage, rowLength, pcategory, option, query);
			model.addAttribute("postingList", listDao);
			model.addAttribute("paging", dto);
			
			return "story_list";
		}

		//
		
		
		 
		

	
} // ----
