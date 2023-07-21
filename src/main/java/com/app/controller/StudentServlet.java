package com.app.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.app.dao.DataAccess;
import java.util.*;
import javax.servlet.*;
/**
 * Servlet implementation class StudentServlet
 */
@WebServlet("/StudentServlet")
public class StudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	private DataAccess access;
    public StudentServlet() {
       access=new DataAccess();
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<String[]> info=access.getsomestu();
		request.setAttribute("students", info);
		String message = request.getParameter("message");
		request.setAttribute("message", message);
		RequestDispatcher rd=request.getRequestDispatcher("studentslist.jsp");
		rd.forward(request, response);
	}

}
