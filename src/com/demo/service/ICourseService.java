package com.demo.service;

import java.util.List;
import com.demo.entries.Courses;

public interface ICourseService {
	public void addCourse(Courses c);
	public void deleteCourse(String courseid);
	public List<Courses> showAll();
	public List<Courses> showInfoByUserId(String userid);
}
