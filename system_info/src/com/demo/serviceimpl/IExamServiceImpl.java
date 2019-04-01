package com.demo.serviceimpl;

import java.util.List;

import com.demo.dao.IExamDao;
import com.demo.daoimpl.IExamDaoImpl;
import com.demo.entries.IExam;
import com.demo.service.IExamService;

public class IExamServiceImpl implements IExamService{
	IExamDao exam1;
	public IExamServiceImpl() {
		exam1 = new IExamDaoImpl();
	}

	@Override
	public void addExamInfo(IExam exam) {
		exam1.addInfo(exam);
	}

	@Override
	public void deleteExamInfo(IExam exam) {
		exam1.deleteInfo(exam);
	}

	@Override
	public List<IExam> showExamInfo(String userid) {
		return exam1.showInfo(userid);
	}
	
	
}
