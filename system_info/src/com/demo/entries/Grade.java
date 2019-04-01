package com.demo.entries;

public class Grade {
	private String userid;
	private String courseid;
	private String grade;
	public Grade() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Grade(String userid, String courseid, String grade) {
		super();
		this.userid = userid;
		this.courseid = courseid;
		this.grade = grade;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getCourseid() {
		return courseid;
	}
	public void setCourseid(String courseid) {
		this.courseid = courseid;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	@Override
	public String toString() {
		return "Grade [userid=" + userid + ", courseid=" + courseid + ", grade=" + grade + "]";
	}
	
}
