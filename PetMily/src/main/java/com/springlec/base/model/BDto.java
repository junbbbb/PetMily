package com.springlec.base.model;

import java.sql.Timestamp;

public class BDto {

	int seqno;
	String title;
	String content;
	String writer;
	Timestamp initdate;
	
	public BDto() {
	}

	public BDto(int seqno, String title, String content, String writer, Timestamp initdate) {
		super();
		this.seqno = seqno;
		this.title = title;
		this.content = content;
		this.writer = writer;
		this.initdate = initdate;
	}

	public int getSeqno() {
		return seqno;
	}

	public void setSeqno(int seqno) {
		this.seqno = seqno;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public Timestamp getInitdate() {
		return initdate;
	}

	public void setInitdate(Timestamp initdate) {
		this.initdate = initdate;
	}
	
	
	
	
	
	
	
}
