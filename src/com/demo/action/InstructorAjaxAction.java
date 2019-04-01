package com.demo.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.entries.Department;
import com.demo.entries.Position;
import com.demo.entries.Student;
import com.demo.entries.Teacher;
import com.demo.service.IPositionService;
import com.demo.service.IStudentService;
import com.demo.service.ITeacherService;
import com.demo.serviceimpl.IPositionServiceImpl;
import com.demo.serviceimpl.IStudentServiceImpl;
import com.demo.serviceimpl.ITeacherServiceImpl;

import net.sf.json.JSONArray;

/**
 * Servlet implementation class InstructorAjaxAction
 */
@WebServlet("/InstructorAjaxAction")
public class InstructorAjaxAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
	IPositionService poservice;
	IStudentService stu;
	ITeacherService tea;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InstructorAjaxAction() {
    	poservice = new IPositionServiceImpl();
    	stu= new IStudentServiceImpl();
    	tea = new ITeacherServiceImpl();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		String method = request.getParameter("m");
		if("instructordelete".equals(method)){
			this.doInstructorDelete(request, response);
		}else if("instructorselect".equals(method)) {
			this.doInstructorSelect(request,response);
		}else if("instructormentadd".equals(method)) {
			this.doAdd(request,response);
		}else if("studentselect".equals(method)) {
			this.doStudentSelect(request,response);
		}else if("teacherselect".equals(method)) {
			this.doTeacherSelect(request,response);
		}
		else {
			this.doOther(request,response);		
		}
	}

	private void doTeacherSelect(HttpServletRequest request, HttpServletResponse response) throws IOException {
		List<Teacher> all= tea.showAllTeacherInfo();	
		JSONArray  json  =  JSONArray.fromObject(all); 
		response.getWriter().print(json.toString());
		System.out.println(json.toString());
	}

	private void doStudentSelect(HttpServletRequest request, HttpServletResponse response) throws IOException {
		List<Student> all=stu.allStudent();	
		JSONArray  json  =  JSONArray.fromObject(all); 
		response.getWriter().print(json.toString());
		System.out.println(json.toString());
	}

	private void doOther(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("./404.jsp").forward(request, response);
	}

	private void doAdd(HttpServletRequest request, HttpServletResponse response) throws IOException {
		Position po = new Position(request.getParameter("collegeid"),request.getParameter("collegename"),request.getParameter("deptid"),request.getParameter("deptname"));
		response.getWriter().print("yes");
	}

	private void doInstructorSelect(HttpServletRequest request, HttpServletResponse response) throws IOException {	
		List<Position> all=poservice.allPositionInfo();	
		JSONArray  json  =  JSONArray.fromObject(all); 
		response.getWriter().print(json.toString());
		System.out.println(json.toString());
		
	}

	private void doInstructorDelete(HttpServletRequest request, HttpServletResponse response) throws IOException {
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
