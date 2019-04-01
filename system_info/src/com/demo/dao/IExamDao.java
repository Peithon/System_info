package com.demo.dao;

import java.util.List;

import com.demo.entries.IExam;

public interface IExamDao {
	public void addInfo(IExam exam);
	public void deleteInfo(IExam exam);
	public List<IExam> showInfo(String userid);
}
