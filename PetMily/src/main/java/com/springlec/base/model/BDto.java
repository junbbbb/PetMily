package com.springlec.base.model;

import java.sql.Timestamp;

public class BDto {

//	int seqno;
//	String title;
//	String content;
//	String writer;
//	Timestamp initdate;
//	
	int pid;
	String ptitle;
	String pcontent;
	Timestamp pinitdate;
	String user_uid;
	
	public BDto() {
	}

	public BDto(int pid, String ptitle, String pcontent, Timestamp pinitdate, String user_uid) {
		super();
		this.pid = pid;
		this.ptitle = ptitle;
		this.pcontent = pcontent;
		this.pinitdate = pinitdate;
		this.user_uid = user_uid;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public String getPtitle() {
		return ptitle;
	}

	public void setPtitle(String ptitle) {
		this.ptitle = ptitle;
	}

	public String getPcontent() {
		return pcontent;
	}

	public void setPcontent(String pcontent) {
		this.pcontent = pcontent;
	}

	public Timestamp getPinitdate() {
		return pinitdate;
	}

	public void setPinitdate(Timestamp pinitdate) {
		this.pinitdate = pinitdate;
	}

	public String getUser_uid() {
		return user_uid;
	}

	public void setUser_uid(String user_uid) {
		this.user_uid = user_uid;
	}

	
	
	
	
	
	
	
}
