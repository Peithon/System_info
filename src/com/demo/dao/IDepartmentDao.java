package com.demo.dao;
import java.util.List;
import com.demo.entries.Department;
/**
 * 
 * @author Peithon
 *
 */
public interface IDepartmentDao {
	public List<Department> all();
	public void deleteDept(String collegeid,String deptid,String classandgrade);
	public void addDept(Department dept);
}
