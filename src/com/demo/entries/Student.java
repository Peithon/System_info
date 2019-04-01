package com.demo.entries;

public class Student {
	private String userid;
	private String username;
	private String usersex;
	private String userage;
	private String usernational;
	private String collegename;
	private String deptname;
	private String classandgrade;
	private String telephone;
	
	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Student(String userid, String username, String usersex, String userage, String usernational,
			String collegename, String deptname, String classandgrade, String telephone) {
		super();
		this.userid = userid;
		this.username = username;
		this.usersex = usersex;
		this.userage = userage;
		this.usernational = usernational;
		this.collegename = collegename;
		this.deptname = deptname;
		this.classandgrade = classandgrade;
		this.telephone = telephone;
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

	public String getUsersex() {
		return usersex;
	}

	public void setUsersex(String usersex) {
		this.usersex = usersex;
	}

	public String getUserage() {
		return userage;
	}

	public void setUserage(String userage) {
		this.userage = userage;
	}

	public String getUsernational() {
		return usernational;
	}

	public void setUsernational(String usernational) {
		this.usernational = usernational;
	}

	public String getCollegename() {
		return collegename;
	}

	public void setCollegename(String collegename) {
		this.collegename = collegename;
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

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	@Override
	public String toString() {
		return "Student [userid=" + userid + ", username=" + username + ", usersex=" + usersex + ", userage=" + userage
				+ ", usernational=" + usernational + ", collegename=" + collegename + ", deptname=" + deptname
				+ ", classandgrade=" + classandgrade + ", telephone=" + telephone + "]";
	}
	
	
}
