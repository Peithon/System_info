package com.demo.daoimpl;
import java.util.List;
import com.demo.dao.*;
import com.rock.util.JDBCUtil;
import com.demo.entries.*;
public class IDepartmentDaoImpl implements IDepartmentDao{
	JDBCUtil util;
	public IDepartmentDaoImpl(){
		util=new JDBCUtil();
	} 
	public List<Department> all() {
		return util.queryAll(Department.class, "select * from departments");
	}
	@Override
	public void deleteDept(String collegeid,String deptid,String classandgrade) {
		String sql = "delete from departments where collegename = ? and deptid = ? and classandgrade = ?";
		util.runSql(sql, collegeid,deptid,classandgrade);
	}
	@Override
	public void addDept(Department dept) {
		String sql = "insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values(?,ss?,?,?,?)";
		util.runSql(sql, dept.getCollegeid(),dept.getCollegename(),dept.getDeptid(),dept.getDeptname(),dept.getClassandgrade());
	}
}
