package com.demo.entries;

public class Department {
	private String collegeid;
	private String collegename;
	private String deptid;
	private String deptname;
	private String classandgrade;
	
	public Department() {
		super();
	}
	public Department(String collegeid, String collegename, String deptid, String deptname, String classandgrade) {
		super();
		this.collegeid = collegeid;
		this.collegename = collegename;
		this.deptid = deptid;
		this.deptname = deptname;
		this.classandgrade = classandgrade;
	}
	public String getCollegeid() {
		return collegeid;
	}
	public void setCollegeid(String collegeid) {
		this.collegeid = collegeid;
	}
	public String getCollegename() {
		return collegename;
	}
	public void setCollegename(String collegename) {
		this.collegename = collegename;
	}
	public String getDeptid() {
		return deptid;
	}
	public void setDeptid(String deptid) {
		this.deptid = deptid;
	}
	public String getDeptname() {
		return deptname;
	}
	public void setDeptname(String deptname) {
		this.deptname = deptname;
	}
	public String getClassandgrade() {
		return classandgrade;
	}
	public void setClassandgrade(String classandgrade) {
		this.classandgrade = classandgrade;
	}
	@Override
	public String toString() {
		return "Department [collegeid=" + collegeid + ", collegename=" + collegename + ", deptid=" + deptid
				+ ", deptname=" + deptname + "]";
	}
	
}
