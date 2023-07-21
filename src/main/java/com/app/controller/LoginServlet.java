package com.app.controller;
import com.app.dao.DataAccess;

import java.io.IOException;
import javax.servlet.http.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;


/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	private DataAccess access;
    public LoginServlet() {
        access=new DataAccess();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		boolean bl=access.userLogin(username, password);
		if(bl)
		{
			HttpSession session=request.getSession(true);
			session.setMaxInactiveInterval(3300);
			session.setAttribute("uns", username);
			response.sendRedirect("welcome.jsp");
		}
		else
		{
			response.sendRedirect("error.jsp");
		}
	}

}
