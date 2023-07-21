package com.app.controller;
import com.app.dao.*;
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeleteServlet
 */
@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	private DataAccess access;
    public DeleteServlet() {
        access=new DataAccess();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("unused")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int rollno=Integer.parseInt(request.getParameter("rollno"));
		String delete=request.getParameter("delete");
		if(delete.equals("request"))
		{
			String[] record=null;
			try {
				record=access.getStu(rollno);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(delete!=null)
			{
				request.setAttribute("record", record);
				RequestDispatcher rd=request.getRequestDispatcher("deleteform.jsp");
				rd.forward(request, response);
			}
			else
			{
				response.sendRedirect("StudentServlet");
			}
		}
		else
		{
			int count=access.deleteStu(rollno);
			response.sendRedirect("StudentServlet");
		}
	}
	
}
