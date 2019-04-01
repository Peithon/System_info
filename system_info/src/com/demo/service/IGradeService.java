package com.demo.service;

import java.util.List;
import com.demo.entries.Grade;

public interface IGradeService {
	public void addGrade(Grade grade);
	public List<Grade> showPersonGrade(String userid);
	public List<Grade> showCourseGrade(String courseid);
}
