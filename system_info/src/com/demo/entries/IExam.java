package com.demo.entries;

public class IExam {
	private String userid;
	private String username;
	private String examtype;
	
	public IExam() {
		super();
		// TODO Auto-generated constructor stub
	}

	public IExam(String userid, String username, String examtype) {
		super();
		this.userid = userid;
		this.username = username;
		this.examtype = examtype;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getExamtype() {
		return examtype;
	}

	public void setExamtype(String examtype) {
		this.examtype = examtype;
	}

	@Override
	public String toString() {
		return "IExam [userid=" + userid + ", username=" + username + ", examtype=" + examtype + "]";
	}
	
	
}
