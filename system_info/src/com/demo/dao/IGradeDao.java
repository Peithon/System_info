package com.demo.dao;

import java.util.List;

import com.demo.entries.Grade;

public interface IGradeDao {
	public void addGrade(Grade grade);
	public List<Grade> showMyGrade(String userid);
	public List<Grade> showCourseGrade(String courseid);
}
