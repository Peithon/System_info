package com.demo.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.entries.Department;
import com.demo.service.IDepartmentService;
import com.demo.serviceimpl.IDepartmentServiceImpl;
import net.sf.json.JSONArray;

/**
 * Servlet implementation class AjaxAction
 */
@WebServlet("/AjaxAction")
public class AjaxAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private IDepartmentService iDepartmentService;   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AjaxAction() {
    	iDepartmentService = new IDepartmentServiceImpl();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		String method = request.getParameter("m");
		if("depetmentdelete".equals(method)){
			this.doDepetmentDelete(request, response);
		}else if("depetmentselect".equals(method)) {
			this.doDepetmentSelect(request, response);
		}else if("depetmentadd".equals(method)) {
			this.doAdd(request,response);
		}else {
			this.doOther(request,response);		
		}
	}

	private void doOther(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("./404.jsp").forward(request, response);
	}

	private void doAdd(HttpServletRequest request, HttpServletResponse response) throws IOException {
		Department dept = new Department(request.getParameter("collegeid"),request.getParameter("collegename"),request.getParameter("deptid"),request.getParameter("deptname"),request.getParameter("classandgrade"));
		iDepartmentService.addDeptInfo(dept);
		response.getWriter().print("yes");
	}

	private void doDepetmentSelect(HttpServletRequest request, HttpServletResponse response) throws IOException {	
		List<Department> all=iDepartmentService.allDepts();	
		JSONArray  json  =  JSONArray.fromObject(all); 
		response.getWriter().print(json.toString());
	}

	private void doDepetmentDelete(HttpServletRequest request, HttpServletResponse response) throws IOException {
		iDepartmentService.deleteDeptInfo(request.getParameter("collegeid"), request.getParameter("deptid"), request.getParameter("classandgrade"));
		response.getWriter().print("yes");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
