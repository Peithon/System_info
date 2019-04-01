package com.demo.entries;

public class Courses {
	private String courseid;
	private String coursename;
	private String userid;
	private String credit;
	private String departmentname;
	private String coursetype;
	public Courses() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Courses(String courseid, String coursename, String userid, String credit, String departmentname,
			String coutsetype) {
		super();
		this.courseid = courseid;
		this.coursename = coursename;
		this.userid = userid;
		this.credit = credit;
		this.departmentname = departmentname;
		this.coursetype = coutsetype;
	}
	public String getCourseid() {
		return courseid;
	}
	public void setCourseid(String courseid) {
		this.courseid = courseid;
	}
	public String getCoursename() {
		return coursename;
	}
	public void setCoursename(String coursename) {
		this.coursename = coursename;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getCredit() {
		return credit;
	}
	public void setCredit(String credit) {
		this.credit = credit;
	}
	public String getDepartmentname() {
		return departmentname;
	}
	public void setDepartmentname(String departmentname) {
		this.departmentname = departmentname;
	}
	public String getCoursetype() {
		return coursetype;
	}
	public void setCoursetype(String coutsetype) {
		this.coursetype = coutsetype;
	}
	@Override
	public String toString() {
		return "Courses [courseid=" + courseid + ", coursename=" + coursename + ", userid=" + userid + ", credit="
				+ credit + ", departmentname=" + departmentname + ", coutsetype=" + coursetype + "]";
	}
	
}
