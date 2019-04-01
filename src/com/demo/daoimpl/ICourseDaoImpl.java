package com.demo.daoimpl;

import java.util.List;
import com.demo.dao.ICourseDao;
import com.demo.entries.Courses;
import com.rock.util.JDBCUtil;

public class ICourseDaoImpl implements ICourseDao{
	JDBCUtil util;
	
	public ICourseDaoImpl() {
		util = new JDBCUtil();
	}

	@Override
	public void addCourse(Courses c) {
		String sql ="insert into courses(courseid,coursename,userid,credit,departmentname,coutsetype) values(?,?,?,?,?,?)";
		util.runSql(sql,c.getCourseid(),c.getCoursename(),c.getUserid(),c.getCredit(),c.getDepartmentname(),c.getCoursetype());
	}

	@Override
	public void deleteCourse(String courseid) {
		String sql ="delete from courses where courseId = ?";
		util.runSql(sql, courseid);
	}

	@Override
	public List<Courses> showAll() {
		String sql ="select * from courses";
		return util.queryAll(Courses.class, sql);
	}

	@Override
	public List<Courses> showInfoByUserId(String userid) {
		String sql ="select * from courses where userId = ?";
		return util.queryAll(Courses.class, sql, userid);
	}

}
