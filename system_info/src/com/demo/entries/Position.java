package com.demo.entries;

public class Position {
	private String positionid;
	private String year1;
	private String deptname;
	private String positionname;
	public Position() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Position(String positionId, String year1, String deptname, String positionname) {
		super();
		this.positionid = positionId;
		this.year1 = year1;
		this.deptname = deptname;
		this.positionname = positionname;
	}
	public String getPositionid() {
		return positionid;
	}
	public void setPositionid(String positionId) {
		this.positionid = positionId;
	}
	public String getYear1() {
		return year1;
	}
	public void setYear1(String year1) {
		this.year1 = year1;
	}
	public String getDeptname() {
		return deptname;
	}
	public void setDeptname(String deptname) {
		this.deptname = deptname;
	}
	public String getPositionname() {
		return positionname;
	}
	public void setPositionname(String positionname) {
		this.positionname = positionname;
	}
	@Override
	public String toString() {
		return "Position [positionId=" + positionid + ", year1=" + year1 + ", deptname=" + deptname + ", positionname="
				+ positionname + "]";
	}
	
}
