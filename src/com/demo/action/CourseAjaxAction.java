package com.demo.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.entries.Courses;
import com.demo.entries.Department;
import com.demo.service.ICourseService;
import com.demo.serviceimpl.ICourseServiceImpl;

import net.sf.json.JSONArray;

/**
 * Servlet implementation class CourseAjaxAction
 */
@WebServlet("/CourseAjaxAction")
public class CourseAjaxAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private ICourseService cour;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CourseAjaxAction() {
       cour = new ICourseServiceImpl();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String method = request.getParameter("m");
		if("coursedelete".equals(method)){
			this.doCourseDelete(request, response);
		}else if("courseselect".equals(method)) {
			this.doCourseSelect(request, response);
		}else if("courseadd".equals(method)) {
			this.doAdd(request,response);
		}else {
			this.doOther(request,response);		
		}
	}

	private void doCourseDelete(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}

	private void doOther(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}

	private void doAdd(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}

	private void doCourseSelect(HttpServletRequest request, HttpServletResponse response) throws IOException {
		List<Courses> all=cour.showAll();	
		JSONArray  json  =  JSONArray.fromObject(all); 
		response.getWriter().print(json.toString());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
