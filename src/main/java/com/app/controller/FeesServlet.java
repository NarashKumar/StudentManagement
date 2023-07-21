package com.app.controller;
import com.app.dao.*;
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.*;

/**
 * Servlet implementation class FeesServlet
 */
@SuppressWarnings("unused")
@WebServlet("/FeesServlet")
public class FeesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	private DataAccess access;
    public FeesServlet() {
     access=new DataAccess();
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			int fees = Integer.parseInt(request.getParameter("fees"));
			int rollno =Integer.parseInt(request.getParameter("rollno"));

		
		  
		  try {
		    String[] record = access.getStu(rollno);
		    //getting current amount
		    int amountPaid = Integer.parseInt(record[6]);
		    int amountDue = Integer.parseInt(record[7]);
		    
		    amountPaid += fees;
		    amountDue -= fees;
		    
		    access.updateStu(rollno, record[1], record[2], record[3], record[4], Integer.parseInt(record[5]), amountPaid, amountDue);
		    request.setAttribute("message","Record updated Successfully");
		    response.sendRedirect("StudentServlet?message=Record%20updated%20Successfully");
		  
		  } catch (Exception e) {
		    e.printStackTrace();
		  }
		
}
}
