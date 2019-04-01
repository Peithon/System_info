package com.demo.entries;

public class Teacher {
	private String userid;
	private String username;
	private String usersex;
	private String userage;
	private String usernational;
	private String positionname;
	private String telephone;
	private String teachertype;
	public Teacher() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Teacher(String userid, String username, String usersex, String userage, String usernational,
			String positionname, String telephone, String teachertype) {
		super();
		this.userid = userid;
		this.username = username;
		this.usersex = usersex;
		this.userage = userage;
		this.usernational = usernational;
		this.positionname = positionname;
		this.telephone = telephone;
		this.teachertype = teachertype;
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
	public String getPositionname() {
		return positionname;
	}
	public void setPositionname(String positionname) {
		this.positionname = positionname;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getTeachertype() {
		return teachertype;
	}
	public void setTeachertype(String teachertype) {
		this.teachertype = teachertype;
	}
	@Override
	public String toString() {
		return "Teacher [userid=" + userid + ", username=" + username + ", usersex=" + usersex + ", userage=" + userage
				+ ", usernational=" + usernational + ", positionname=" + positionname + ", telephone=" + telephone
				+ ", teachertype=" + teachertype + "]";
	}
	
}
