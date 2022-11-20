package com.springlec.base.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.springlec.base.model.BDto;

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


}
