package com.coord.jam;

import java.sql.Date;

public class QnaDto {
	private int qnaBoard_seq;
	private String qnaBoard_title;
	private String qnaBoard_content;
	private String qnaBoard_id;
	private Date qnaBoard_date;
	
	
	public int getQnaBoard_seq() {
		return qnaBoard_seq;
	}
	public void setQnaBoard_seq(int qnaBoard_seq) {
		this.qnaBoard_seq = qnaBoard_seq;
	}
	public String getQnaBoard_title() {
		return qnaBoard_title;
	}
	public void setQnaBoard_title(String qnaBoard_title) {
		this.qnaBoard_title = qnaBoard_title;
	}
	public String getQnaBoard_content() {
		return qnaBoard_content;
	}
	public void setQnaBoard_content(String qnaBoard_content) {
		this.qnaBoard_content = qnaBoard_content;
	}
	public String getQnaBoard_id() {
		return qnaBoard_id;
	}
	public void setQnaBoard_id(String qnaBoard_id) {
		this.qnaBoard_id = qnaBoard_id;
	}
	public Date getQnaBoard_date() {
		return qnaBoard_date;
	}
	public void setQnaBoard_date(Date qnaBoard_date) {
		this.qnaBoard_date = qnaBoard_date;
	}

	
	


}
