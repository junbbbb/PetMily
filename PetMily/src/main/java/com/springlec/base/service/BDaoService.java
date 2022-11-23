package com.springlec.base.service;

import java.util.List;

import com.springlec.base.model.BDto;
import com.springlec.base.model.PagingDTO;
import com.springlec.base.model.PostingDTO;

public interface BDaoService {
	
	// 게시판 리스트 
	public List<BDto> listDao() throws Exception;
	
	// 게시판 insert
	public void writeDao(String writer, String title, String content) throws Exception;
	
	// 수정화면으로 가져올때
	public BDto viewDao(int seqno) throws Exception;
	
	// 게시판 update
	public void modifyDao(int seqno, String title, String content, String writer) throws Exception;
	
	// 게시판 delete
	public void deleteDao(int seqno) throws Exception;
	
	// 게시판 search 
	public List<BDto> searchDao(String keyword, String content) throws Exception;
	
	//posting [S]
		//posting 전체갯수구하기
		public int postingListRowDao(String pcategory) throws Exception;
		
		public PagingDTO postingListPagingDao(int cPage, int totalRows, int pageLength) throws Exception;
		
		public List<PostingDTO> postingGetListDao(int cPage, int rowLength, String pcategory, String option, String query) throws Exception;

	//posting [e]
		
	//petspec detail view 
	public String viewPetspecDetailDao(String psbreeds) throws Exception;

}
