package com.demo.service;

import java.util.List;
import com.demo.entries.Teacher;

public interface ITeacherService {
	public List<Teacher> showAllTeacherInfo();
	public Teacher showOneTeacherInfo(String userid);
	public void addTeacher(Teacher teacher);
	public void deleteTeacher(String userid); 
}
