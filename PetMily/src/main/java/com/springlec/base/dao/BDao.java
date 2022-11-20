package com.springlec.base.dao;

import java.util.List;

import com.springlec.base.model.BDto;

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
	
	
	
	

}