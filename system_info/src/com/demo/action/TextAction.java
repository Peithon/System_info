package com.demo.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.entries.Text;
import com.demo.service.ITextService;
import com.demo.serviceimpl.ITextServiceImpl;

/**
 * Servlet implementation class TextAction
 */
@WebServlet("/TextAction")
public class TextAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
    ITextService testSer ;  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TextAction() {
    	testSer = new ITextServiceImpl();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String method = request.getParameter("method");
		String message = request.getParameter("message");
		if("addinfo".equals(method) && message!=null){
			this.addinfo(request,response);
		}else if("showinfo".equals(method)) {
			this.showInfo(request,response);
		}else if("deleteinfo".equals(method)) {
			this.deleteInfo(request,response);
		}
	}

	private void deleteInfo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		testSer.deleteTextInfo(request.getParameter("title"));
		request.getRequestDispatcher("./adminnav.jsp");
	}

	private void showInfo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Text> all = testSer.showMessage();
		System.out.println(all);
		request.setAttribute("info",all);
		request.getRequestDispatcher("./event.jsp").forward(request, response);
	}

	private void addinfo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String title = request.getParameter("title");
		String message = request.getParameter("message");
		String time = request.getParameter("time");
		String author = "admin";
		String section = request.getParameter("section");
		Text t = new Text(title,message,time,section,author);
		testSer.addMessage(t);	
		request.getRequestDispatcher("./event_publish.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
