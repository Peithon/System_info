package com.demo.service;

import java.util.List;

import com.demo.entries.Student;

public interface IStudentService{
	public List<Student> allStudent();
	public void deleteStudent();
	public void addStudent();
	public void updateStudent();
}
