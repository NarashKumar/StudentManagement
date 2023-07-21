<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pay Now</title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
<body>
<form action="FeesServlet" method="POST">
<div class="container text-center mb-5 bg-success">
<h2>Payment Page</h2>
</div>
<%
String rollno=request.getParameter("rollno");
{
%>
<div class="container mt-5 col-4">
<div class="mb-3 col-8">
  <label for="rollno" class="form-label">RollNo:</label>
	<input type="text" class="form-control" name="rollno" value="<%=rollno%>" readonly>
<div class="mb-3 col-8">
  <label for="payment" class="form-label">Payment:</label>
  <textarea class="form-control" name="fees" rows="3"></textarea>
  <div class="text-center mt-3">
      <button type="submit" class="btn btn-success">Pay Now</button>
      <a href="StudentServlet" class="btn btn-secondary">Cancel</a>
    </div>
</div>
</div>
</div>
<%} %>
</form>
</body>
</html>