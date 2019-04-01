package com.demo.service;

import java.util.List;
import com.demo.entries.IExam;
public interface IExamService {
	public void addExamInfo(IExam exam);
	public void deleteExamInfo(IExam exam);
	public List<IExam> showExamInfo(String userid);
}
