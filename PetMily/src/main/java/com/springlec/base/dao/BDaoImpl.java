package com.springlec.base.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.springlec.base.model.BDto;
import com.springlec.base.model.PagingDTO;
import com.springlec.base.model.PostingDTO;

public class BDaoImpl implements BDao {
	
	SqlSession sqlSession;
	// xml과
	
	public static String nameSpace = "com.springlec.base.dao.BDao";

	// list 
	@Override
	public List<BDto> listDao() throws Exception {
		System.out.println(">>>>>><<<<<<");
		return sqlSession.selectList(nameSpace + ".listDao");
	}

	// insert
	@Override
	public void writeDao(String writer, String title, String content) throws Exception {
		sqlSession.insert(nameSpace + ".writeDao");
		
	}

	// 수정화면으로 가져올때
	@Override
	public BDto viewDao(int seqno) throws Exception {
		return (BDto) sqlSession.selectList(nameSpace+".viewDao");
	}

	// update
	@Override
	public void modifyDao(int seqno, String title, String content, String writer) throws Exception {
		sqlSession.update(nameSpace=".modifyDao");
		
	}

	// delete
	@Override
	public void deleteDao(int seqno) throws Exception {
		sqlSession.delete(nameSpace=".deleteDao");
		
	}

	// search 
	@Override
	public List<BDto> searchDao(String keyword, String content) throws Exception {
		System.out.println("다오 임플 : " + content);
		return sqlSession.selectList(nameSpace + ".searchDao");
	}

	
	//paging[S]
	
	
		@Override
		public int postingListRowDao(String pcategory) throws Exception {
			// TODO Auto-generated method stub
			return sqlSession.selectOne(nameSpace + ".postingListRowDao");
		}
	
		@Override
		public PagingDTO postingListPagingDao(int cPage, int totalRows, int pageLength) throws Exception {
			// TODO Auto-generated method stub
			int currentBlock = 0;
			int startPage = 0;// 시작 페이지
			int endPage = 0;// 마지막 페이지
			int totalPages = 0;// 총 페이지수
			int startRow = 0;// 시작 로우
			int endRow = 0;// 마지막로우
	
			totalPages = totalRows % pageLength == 0 ? totalRows / pageLength : (totalRows / pageLength) + 1;
	
			currentBlock = cPage % pageLength == 0 ? cPage / pageLength : (cPage / pageLength) + 1;
			startPage = (currentBlock - 1) * pageLength + 1;
			endPage = startPage + pageLength - 1;
	
			startRow = (cPage - 1) * pageLength;
			endRow = totalRows - startRow;
	
			if (endPage > totalPages) {
				endPage = totalPages;
			}
	
			PagingDTO dto = new PagingDTO(cPage, currentBlock, pageLength, startPage, endPage, totalPages, startRow,
					endRow);
	
			return dto;
	
			
		}
	
		@Override
		public List<PostingDTO> postingGetListDao(int cPage, int rowLength, String pcategory, String option, String query, int start) throws Exception {
			// TODO Auto-generated method stub
			System.out.println("daoimpl");
			return sqlSession.selectList(nameSpace + ".postingGetListDao");
		}
		// posting [e]
		
		
		//petspec detail[s]
		@Override
		public String viewPetspecDetailDao(String psbreeds) throws Exception {
			// TODO Auto-generated method stub
			return sqlSession.selectOne(nameSpace +".viewPetspecDetailDao");
		}



}
