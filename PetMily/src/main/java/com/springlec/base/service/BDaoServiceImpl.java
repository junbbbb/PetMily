package com.springlec.base.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springlec.base.dao.BDao;
import com.springlec.base.model.BDto;
import com.springlec.base.model.PagingDTO;
import com.springlec.base.model.PostingDTO;

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
	@Override
	public List<BDto> searchDao(String keyword, String content) throws Exception{
		content = '%' + content + '%';
		return dao.searchDao(keyword, content);
	}

	@Override
	public int postingListRowDao(String pcategory) throws Exception {
		// TODO Auto-generated method stub
		return dao.postingListRowDao(pcategory);
	}

	@Override
	public PagingDTO postingListPagingDao(int cPage, int totalRows, int pageLength) throws Exception {
		// TODO Auto-generated method stub
		return dao.postingListPagingDao(cPage, totalRows, pageLength);
	}

	@Override
	public List<PostingDTO> postingGetListDao(int cPage, int rowLength, String pcategory, String option, String query)
			throws Exception {
		// TODO Auto-generated method stub
		int start = (cPage - 1) * rowLength;
		return dao.postingGetListDao(cPage, rowLength, pcategory, option, query, start);
	}
	//posting [e]
	
	
	
	//petspec detail[s]
	@Override
	public String viewPetspecDetailDao(String psbreeds) throws Exception {
		// TODO Auto-generated method stub
		return dao.viewPetspecDetailDao(psbreeds);
	}



}
