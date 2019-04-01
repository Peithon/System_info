package com.demo.serviceimpl;

import java.util.List;

import com.demo.dao.IGradeDao;
import com.demo.daoimpl.IGradeDaoImpl;
import com.demo.entries.Grade;
import com.demo.service.IGradeService;

public class IGradeServiceImple implements IGradeService{
	IGradeDao grade1;	
	public IGradeServiceImple() {
		grade1 = new IGradeDaoImpl();
	}

	public void addGrade(Grade grade) {
		grade1.addGrade(grade);
	}

	@Override
	public List<Grade> showPersonGrade(String userid) {
		return grade1.showMyGrade(userid);
	}

	@Override
	public List<Grade> showCourseGrade(String courseid) {
		return grade1.showCourseGrade(courseid);
	}

}
