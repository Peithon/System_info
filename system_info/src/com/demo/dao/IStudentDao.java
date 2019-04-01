package com.demo.dao;

import java.util.List;
import com.demo.entries.Student;

public interface IStudentDao {
	public List<Student> all();
	public Student showMyInfo(String userid);
	public void delete(Student stu);
	public void addStudent(Student stu);
	public void updateStudent(Student stu);
}
