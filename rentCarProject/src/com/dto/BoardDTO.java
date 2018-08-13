package com.dto;

public class BoardDTO {
	

	
	int num;
	String title;
	String content;
	String writeday;
	String userid;
	@Override
	public String toString() {
		return "BoardDTO [num=" + num + ", title=" + title + ", content=" + content + ", writeday=" + writeday
				+ ", userid=" + userid + "]";
	}
	public BoardDTO(int num, String title, String content, String writeday, String userid) {
		super();
		this.num = num;
		this.title = title;
		this.content = content;
		this.writeday = writeday;
		this.userid = userid;
	}
	public BoardDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
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
	public String getWriteday() {
		return writeday;
	}
	public void setWriteday(String writeday) {
		this.writeday = writeday;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	
	
	
	
}
