package com.demo.service;
import java.util.List;
import com.demo.entries.Department;

public interface IDepartmentService {
	public List<Department> allDepts();
	public void deleteDeptInfo(String collegeid,String deptid,String classandgrade);
	public void addDeptInfo(Department dept);
}
