package com.demo.serviceimpl;

import java.util.List;

import com.demo.dao.IStudentDao;
import com.demo.daoimpl.IStudentDaoImpl;
import com.demo.entries.Student;
import com.demo.service.IStudentService;

public class IStudentServiceImpl implements IStudentService{
	IStudentDao istudent;
	
	public IStudentServiceImpl() {
		istudent = new IStudentDaoImpl();
	}

	@Override
	public List<Student> allStudent() {
		return istudent.all();
	}

	@Override
	public void deleteStudent() {
		
	}

	@Override
	public void addStudent() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateStudent() {
		// TODO Auto-generated method stub
		
	}

}
