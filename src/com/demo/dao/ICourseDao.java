package com.demo.dao;

import java.util.List;
import com.demo.entries.Courses;

public interface ICourseDao {
	public void addCourse(Courses c);
	public void deleteCourse(String courseid);
	public List<Courses> showAll();
	public List<Courses> showInfoByUserId(String userid);
}
