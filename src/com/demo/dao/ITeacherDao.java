package com.demo.dao;

import java.util.List;
import com.demo.entries.Teacher;

public interface ITeacherDao {
	public List<Teacher> showTeacher();
	public Teacher showMe(String userid);
	public void addTeacher(Teacher teacher);
	public void deleteTeacher(String userid);
	
}
