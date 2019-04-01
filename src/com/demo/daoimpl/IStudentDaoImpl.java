package com.demo.daoimpl;

import java.util.List;

import com.demo.dao.IStudentDao;
import com.demo.entries.Department;
import com.demo.entries.Student;
import com.rock.util.JDBCUtil;
public class IStudentDaoImpl implements IStudentDao{
	JDBCUtil util;
	public IStudentDaoImpl() {
		util = new JDBCUtil();
	}
	@Override
	public List<Student> all() {		
		return util.queryAll(Student.class, "select * from students");
	}
	@Override
	public void delete(Student stu) {
		String sql = "delete from students where userId = ?";
		util.runSql(sql, stu.getUserid());
	}
	@Override
	public void addStudent(Student stu) {
		String sql = "insert into student(userID,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) "
				+ "values(?,?,?,?,?,?,?,?,?)";
		util.runSql(sql, stu.getUserid(),stu.getUsername(),stu.getUsersex(),stu.getUserage(),stu.getUsernational()
				,stu.getCollegename(),stu.getDeptname(),stu.getClassandgrade(),stu.getTelephone());		
	}
	@Override
	public void updateStudent(Student stu) {
//		String sql = "delete from student where userId = ?";
//		util.runSql(sql, stu.getUserid());
		
	}
	@Override
	public Student showMyInfo(String userid) {
		String sql ="select * from student where userId = ?";
		return util.queryById(Student.class, sql, userid);
	}
	
}
