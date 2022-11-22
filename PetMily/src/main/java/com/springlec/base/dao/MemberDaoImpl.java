package com.springlec.base.dao;

import org.apache.ibatis.session.SqlSession;

public class MemberDaoImpl implements MemberDao {
	
	SqlSession sqlSession;
	
	public static String nameSpace = "com.springlec.base.dao.MemberDao";

	@Override
	public int loginDao(String id, String pw) throws Exception {
		return sqlSession.selectOne(nameSpace + ".loginDao");
	}

}
