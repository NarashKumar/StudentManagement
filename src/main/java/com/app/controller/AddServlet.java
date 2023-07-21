package com.app.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.dao.DataAccess;

/**
 * Servlet implementation class AddServlet
 */
@WebServlet("/AddServlet")
public class AddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	private DataAccess access;
    public AddServlet() {
    	access=new DataAccess();
        
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int rollno=Integer.parseInt(request.getParameter("rollno"));
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String degree=request.getParameter("degree");
		String course=request.getParameter("course");
		int alottedfees=Integer.parseInt(request.getParameter("alottedfees"));
		int amountpaid=Integer.parseInt(request.getParameter("amountpaid"));
		int amountdue=Integer.parseInt(request.getParameter("amountdue"));
		
		
		int count=access.addStu(rollno,name,email, degree, course,alottedfees,amountpaid,amountdue);
		String message="cannot save";
		if(count>1)
		{
			message="saved";
		}
		request.setAttribute("students", message);
		response.sendRedirect("StudentServlet");
		
	}

}
