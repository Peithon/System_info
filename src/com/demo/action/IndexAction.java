package com.demo.action;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.demo.entries.Text;
import com.demo.entries.User;
import com.demo.service.ITextService;
import com.demo.service.IUserService;
import com.demo.serviceimpl.ITextServiceImpl;
import com.demo.serviceimpl.IUserServiceImpl;

/**
 * Servlet implementation class IndexAction
 */
@WebServlet("/IndexAction")
public class IndexAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IndexAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generateres[pmse]d method stub		
		response.setCharacterEncoding("UTF-8");
		String method = request.getParameter("method");
		String name = request.getParameter("username");
		String passwd = request.getParameter("password");
		String code = request.getParameter("checkCode");
		IUserService userall = new IUserServiceImpl();
		HttpSession session = request.getSession();
		if (!code.equalsIgnoreCase((String) session.getAttribute("randCheckCode"))) {
			request.setAttribute("errormsg", "error");
			response.getWriter().println("<script> type='text/javascript'>window.location.href='./login.jsp'</script>");
		}else {
			if("tlogin".equals(method) && userall.isUser(new User(name,passwd,"t"))) {				
				request.setAttribute("teacher",name);
				this.tlogin(request,response);
			}else if("slogin".equals(method) && userall.isUser(new User(name,passwd,"s"))) {
				request.setAttribute("student",name);
				this.slogin(request,response);
			}else if("alogin".equals(method) && userall.isUser(new User(name,passwd,"a"))) {
				request.setAttribute("admin",name);
				this.alogin(request,response);				
			}else {			
				this.other(request,response);
			}
		}		
	}
	private void other(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("./login.jsp").forward(request, response);
	}

	private void alogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("./adminnav.jsp").forward(request, response);
	}

	private void slogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("./main.jsp").forward(request, response);
	}

	private void tlogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("./teamain.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
