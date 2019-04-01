package com.demo.serviceimpl;
import java.util.List;
import com.demo.dao.IDepartmentDao;
import com.demo.entries.Department;
import com.demo.daoimpl.IDepartmentDaoImpl;
import com.demo.service.IDepartmentService;

public class IDepartmentServiceImpl implements IDepartmentService {
	IDepartmentDao iDepartmentDao;
	public IDepartmentServiceImpl(){
		iDepartmentDao=new IDepartmentDaoImpl();
	}
	@Override
	public List<Department> allDepts() {
		return iDepartmentDao.all();
	}
	@Override
	public void deleteDeptInfo(String collegeid, String deptid, String classandgrade) {
		iDepartmentDao.deleteDept(collegeid, deptid, classandgrade);
	}
	@Override
	public void addDeptInfo(Department dept) {
		iDepartmentDao.addDept(dept);
	}
}
