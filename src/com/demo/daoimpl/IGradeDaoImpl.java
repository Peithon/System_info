package com.demo.daoimpl;

import java.util.List;

import com.demo.dao.IGradeDao;
import com.demo.entries.Grade;
import com.rock.util.JDBCUtil;

public class IGradeDaoImpl implements IGradeDao{
	JDBCUtil util;
	
	public IGradeDaoImpl() {
		util = new JDBCUtil();
	}

	@Override
	public void addGrade(Grade grade) {
		String sql = "insert into grade(userId,courseId,grade) values(?,?,?)";
		util.runSql(sql,grade.getUserid(),grade.getCourseid(),grade.getGrade());
	}

	@Override
	public List<Grade> showMyGrade(String userid) {
		String sql = "select *¡¡from grade where userId = ?";
		return util.queryAll(Grade.class, sql, userid);
	}

	@Override
	public List<Grade> showCourseGrade(String courseid) {
		String sql ="select * from grade where courseid = ?";
		return util.queryAll(Grade.class, sql, courseid);
	}

}
