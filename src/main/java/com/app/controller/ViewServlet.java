package com.app.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.dao.DataAccess;

/**
 * Servlet implementation class ViewServlet
 */
@WebServlet("/ViewServlet")
public class ViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	private DataAccess access;
    public ViewServlet() {
       access=new DataAccess();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int rollno=Integer.parseInt(request.getParameter("rollno"));
		String view=request.getParameter("view");
		if(view.equals("request"))
		{
			try {
				String[] record=access.getStu(rollno);
					request.setAttribute("record", record);
					RequestDispatcher rd = request.getRequestDispatcher("view.jsp");
	                rd.forward(request, response);
			}
			catch(Exception e)
			{
				e.printStackTrace();
				
			}
		}
		else
		{
			response.sendRedirect("StudentServlet");
		}
		
	}

}
