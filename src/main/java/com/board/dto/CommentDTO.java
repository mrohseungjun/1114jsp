package com.board.dto;

public class CommentDTO {
	private int cnum;
	private String msg;
	private String userid;
	private String regdate;
	private int bnum;
	
	//getter, setter
	public int getCnum() {
		return cnum ;
	}
	public void setCnum(int cnum) {
		this.cnum = cnum;
	}
	public String getMsg() {
		return msg == null ? "" : msg.trim();
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public String getUserid() {
		return userid == null ? "" : userid.trim();
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getRegdate() {
		return regdate == null ? "" : regdate.trim();
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public int getBnum() {
		return bnum ;
	}
	public void setBnum(int bnum) {
		this.bnum = bnum;
	}
	
	
	

}
