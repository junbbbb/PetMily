package com.springlec.base.dao;

import java.util.List;

import com.springlec.base.model.BDto;
import com.springlec.base.model.PagingDTO;
import com.springlec.base.model.PostingDTO;

public interface BDao {
	
	// list 
	public List<BDto> listDao() throws Exception;

	// insert 
	public void writeDao(String title, String content, String writer) throws Exception;
	
	// 수정화면으로 가져올때 
	public BDto viewDao(int seqno) throws Exception;
	
	// update 
	public void modifyDao(int seqno, String title, String content, String writer) throws Exception;
	
	// delete 
	public void deleteDao(int seqno) throws Exception;
	
	// search 
	public List<BDto> searchDao(String keyword, String content) throws Exception;
	
	//posting [S]
	
		//posting 전체갯수구하기
		public int postingListRowDao(String pcategory) throws Exception;
		
		public PagingDTO postingListPagingDao(int cPage, int totalRows, int pageLength) throws Exception;
		
		public List<PostingDTO> postingGetListDao(int cPage, int rowLength, String pcategory, String option, String query, int start) throws Exception;
		
	//posting [E]
		
	// petspec detail view
	public String viewPetspecDetailDao(String psbreeds) throws Exception;
	
	

}