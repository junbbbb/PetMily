package com.springlec.base.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springlec.base.dao.BDao;
import com.springlec.base.model.BDto;

@Service
public class BDaoServiceImpl implements BDaoService{
	
	@Autowired
	BDao dao;

	
	// list
	@Override
	public List<BDto> listDao() throws Exception {
		
		return dao.listDao();
	}

	// insert
	@Override
	public void writeDao(String writer, String title, String content) throws Exception {
			dao.writeDao(writer, title, content);
		
	}

	// 수정화면으로 가져올때 
	@Override
	public BDto viewDao(int seqno) throws Exception {
		return dao.viewDao(seqno);
	}

	// update 
	@Override
	public void modifyDao(int seqno, String title, String content, String writer) throws Exception {
		dao.modifyDao(seqno, title, content, writer);
	}

	// delete
	@Override
	public void deleteDao(int seqno) throws Exception {
		dao.deleteDao(seqno);
		
	}

	// search 
	public List<BDto> searchDao(String keyword, String content) throws Exception{
		content = '%' + content + '%';
		return dao.searchDao(keyword, content);
	}



}
