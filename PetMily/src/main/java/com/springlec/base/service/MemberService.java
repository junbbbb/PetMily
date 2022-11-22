package com.springlec.base.service;

import javax.servlet.http.HttpServletRequest;

public interface MemberService {
	
	// login
	public int longinDao(HttpServletRequest request) throws Exception;

}
