package com.demo.serviceimpl;

import java.util.List;

import com.demo.dao.ICourseDao;
import com.demo.daoimpl.ICourseDaoImpl;
import com.demo.entries.Courses;
import com.demo.service.ICourseService;

public class ICourseServiceImpl implements ICourseService{
	ICourseDao course;
	
	public ICourseServiceImpl() {
		course = new ICourseDaoImpl();
	}

	@Override
	public void addCourse(Courses c) {
		course.addCourse(c);
	}

	@Override
	public void deleteCourse(String courseid) {
		course.deleteCourse(courseid);
	}

	@Override
	public List<Courses> showAll() {
		return course.showAll();
	}

	@Override
	public List<Courses> showInfoByUserId(String userid) {
		return course.showInfoByUserId(userid);
	}

}
