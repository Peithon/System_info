package com.demo.daoimpl;

import java.util.List;
import com.demo.dao.ITeacherDao;
import com.demo.entries.Teacher;
import com.rock.util.JDBCUtil;

public class ITeacherDaoImpl implements ITeacherDao{
	JDBCUtil util;
	
	public ITeacherDaoImpl() {
		util = new JDBCUtil();
	}

	@Override
	public List<Teacher> showTeacher() {
		String sql ="select * from teachers";
		return util.queryAll(Teacher.class, sql);
	}

	@Override
	public void addTeacher(Teacher t) {
		String sql = "insert into teachers(userId,userName,userSex,userAge,userNational,positionName,telephone,teacherType) values(?,?,?,?,?,?,?,?)";
		util.runSql(sql,t.getUserid(),t.getUsername(),t.getUsersex(),t.getUserage(),t.getUsernational(),t.getPositionname(),t.getTelephone(),t.getTeachertype());
	}

	@Override
	public void deleteTeacher(String userid) {
		String sql = "delete from teachers where userId = ?";
		util.runSql(sql,userid);
	}

	@Override
	public Teacher showMe(String userid) {
		String sql ="select * from teacher where userId = ?";
		return util.queryById(Teacher.class, sql, userid);
	}

}
