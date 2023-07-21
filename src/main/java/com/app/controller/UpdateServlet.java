package com.app.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.dao.DataAccess;

/**
 * Servlet implementation class UpdateServlet
 */
@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	private DataAccess access;
    public UpdateServlet() {
        access=new DataAccess();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("unused")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int rollno=Integer.parseInt(request.getParameter("rollno"));
		String update=request.getParameter("update");
		
		if(update.equals("request"))
		{
			String[] record = null;
			try {
				record = access.getStu(rollno);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(update!= null)
			{
				request.setAttribute("record", record);
				RequestDispatcher rd = request.getRequestDispatcher("updateform.jsp");
				rd.forward(request, response);
			}
			else
			{
				response.sendRedirect("StudentServlet");
			}
		}
		else
		{
			String name=request.getParameter("name");
			String email=request.getParameter("email");
			String degree=request.getParameter("degree");
			String course=request.getParameter("course");
			int alottedfees=Integer.parseInt(request.getParameter("alottedfees"));
			int amountpaid=Integer.parseInt(request.getParameter("amountpaid"));
			int amountdue=Integer.parseInt(request.getParameter("amountdue"));
			int count=access.updateStu(rollno, name, email, degree, course,alottedfees,amountpaid,amountdue);
			request.setAttribute("message","Record Updated Successfully");
			response.sendRedirect("StudentServlet");
			
		}
	
	
	}
}

