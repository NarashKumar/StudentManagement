package com.app.dao;

import java.sql.*;
import java.util.*;

public class DataAccess {
    Connection con;
     PreparedStatement adlog,addstu,getstu,getstu2,updatestu,deletestu;
     ResultSet rts;

    public DataAccess() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/StudentManagement","root","Root@123");
            adlog = con.prepareStatement("SELECT * FROM Admin WHERE username=? AND password=?");
            //STUDENT TABLE
            addstu=con.prepareStatement("INSERT INTO student (rollno, name, email, degree, course, alottedfees, amountpaid, amountdue) VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
            getstu=con.prepareStatement("SELECT * FROM student WHERE rollno=?");
            getstu2=con.prepareStatement("SELECT rollno , name FROM student");
            updatestu=con.prepareStatement("UPDATE student SET name=?,email=?,degree=?,course=?,alottedfees=?,amountpaid=?,amountdue=? WHERE rollno=?");
            deletestu=con.prepareStatement("DELETE from student WHERE rollno=?");
            } 
         catch (Exception e) {
            e.printStackTrace();
        }
    }
    

    public boolean userLogin(String username, String password) {
        boolean bl = false;
        try {
            if (adlog != null) {
                adlog.setString(1, username);
                adlog.setString(2, password);
                rts = adlog.executeQuery();
                if (rts.next()) {
                    bl = true;
                }
            } else {
                System.out.println("PreparedStatement is null.");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return bl;
    }
    public int addStu(int rollno, String name,String email,String degree,String course,int alottedfees,int amountpaid,int amountdue) {
    	int count=0;
    	try {
    		addstu.setInt(1,rollno);
    		addstu.setString(2, name);
    		addstu.setString(3, email);
    		addstu.setString(4, degree);
    		addstu.setString(5, course);
    		addstu.setInt(6, alottedfees);
    		addstu.setInt(7, amountpaid);
    		addstu.setInt(8, amountdue);
    		count=addstu.executeUpdate();
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    	return count;
    }
    public String[] getStu(int rollno) throws SQLException
    {
    	String[] record=new String[8];
    	getstu.setInt(1, rollno);
    	ResultSet result=getstu.executeQuery();
    	try {
    		
    		if(result.next()) {
    			record[0]=result.getString(1);
    			record[1]=result.getString(2);
    			record[2]=result.getString(3);
    			record[3]=result.getString(4);
    			record[4]=result.getString(5);
    			record[5]=result.getString(6);
    			record[6]=result.getString(7);
    			record[7]=result.getString(8);
    
    		}
    	}
    	catch(Exception e)
    	{
    		e.printStackTrace();
    	}
    	return record;
    }
    public ArrayList<String[]> getsomestu(){
    	ArrayList<String[]> students=new ArrayList<>();
    	try {
    		ResultSet result=getstu2.executeQuery();
    		while(result.next())
    		{
    			String[] record = new String[2];
    			record[0]=result.getString(1);
    			record[1]=result.getString(2);
    			students.add(record);
    		}
    	}
    	catch(Exception e)
    	{
    		e.printStackTrace();
    	}
    	return students;
   
    }
    public int updateStu(int rollno,String name,String email,String degree,String course,int alottedfees,int amountpaid,int amountdue)
    {
    	int rowsAffected=0;
    	try {
    		updatestu.setString(1, name);
    		updatestu.setString(2, email);
    		updatestu.setString(3, degree);
    		updatestu.setString(4, course);
    		updatestu.setInt(5, alottedfees);
    		updatestu.setInt(6, amountpaid);
    		updatestu.setInt(7, amountdue);
    		updatestu.setInt(8, rollno);
    		rowsAffected=updatestu.executeUpdate();
    		
    	}
    	catch(Exception e)
    	{
    		e.printStackTrace();
    	}
    	return rowsAffected;
    }
    public int deleteStu(int rollno)
    {
    	int count =0;
    	try {
    		deletestu.setInt(1, rollno);
    		count=deletestu.executeUpdate();
    	}
    	catch(Exception e)
    	{
    		e.printStackTrace();
    	}
    return count;
    }
    
}
