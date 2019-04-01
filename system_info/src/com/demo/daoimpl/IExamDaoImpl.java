package com.demo.daoimpl;

import java.util.List;
import com.demo.dao.IExamDao;
import com.demo.entries.IExam;
import com.rock.util.JDBCUtil;

public class IExamDaoImpl implements IExamDao{
	JDBCUtil util ;
	public IExamDaoImpl() {
		util = new JDBCUtil();
	}
	@Override
	public void addInfo(IExam exam) {
		String sql = "insert into exam(userId,userName,examType) values(?,?,?)";
		util.runSql(sql, exam.getUserid(),exam.getUsername(),exam.getExamtype());
	}

	@Override
	public void deleteInfo(IExam exam) {
		String sql = "delete from exam where userId = ? and examType = ?";
		util.runSql(sql,exam.getUserid(),exam.getExamtype());
	}

	@Override
	public List<IExam> showInfo(String userid) {
		String sql = "select * from exam where userId = ?";
		return util.queryAll(IExam.class, sql, userid);
	}

}
