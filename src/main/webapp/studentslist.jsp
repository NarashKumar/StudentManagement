<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>StudentRecords</title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
<%!
ArrayList<String[]>students;
String username;
String message;
%>
<body>
<div class="container text-center mb-3 bg-success">
  <%
  
    	username=session.getAttribute("uns").toString();
  %>
  
  	<h3>Welcome !! <%=username%></h3>
  </div>
  <div class="container">
  <div class="row justify-content-end mt-2">
  <div class="col-auto">
  <a href="addstudent.jsp" class="btn btn-primary">AddStudent</a>
  </div>
  </div>
  <% String message = (String) request.getAttribute("message"); %>
  	<% 
  		if(message!=null)
  		{
  			%>
    <div class="alert alert-success alert-dismissible fade show mt-3" role="alert">
      <%= message %>
      <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
 	<% } %>

<table class="table">
<thead>
<tr>
<th>Roll no</th>
<th>Name</th>
<th>Actions</th>
</tr>
</thead>
<tbody>
<%
	 students=(ArrayList <String[]>)request.getAttribute("students");
	for(String[] student : students){
%>
	<tr>
		<td><%= student[0]%></td>
		<td><%= student[1]%></td>
		<td>
			<a href="ViewServlet?rollno=<%= student[0] %>&view=request" class="btn btn-info">View</a>
			
		</td>
	</tr>
<%
	}
%>
                        
</tbody>


</table>

</div>

</body>
</html>