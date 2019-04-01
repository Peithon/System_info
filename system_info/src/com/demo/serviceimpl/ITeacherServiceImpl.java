package com.demo.serviceimpl;

import java.util.List;

import com.demo.dao.ITeacherDao;
import com.demo.daoimpl.ITeacherDaoImpl;
import com.demo.entries.Teacher;
import com.demo.service.ITeacherService;

public class ITeacherServiceImpl implements ITeacherService{
	ITeacherDao teach;
	
	public ITeacherServiceImpl() {
		teach = new ITeacherDaoImpl();
	}

	@Override
	public List<Teacher> showAllTeacherInfo() {
		return teach.showTeacher();
	}

	@Override
	public Teacher showOneTeacherInfo(String userid) {
		return teach.showMe(userid);
	}

	@Override
	public void addTeacher(Teacher teacher) {
		teach.addTeacher(teacher);
	}

	@Override
	public void deleteTeacher(String userid) {
		teach.deleteTeacher(userid);
	}
	
}
