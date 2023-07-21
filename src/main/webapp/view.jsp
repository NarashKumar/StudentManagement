<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Details</title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>

<body>
<div class="container text-center mb-5 bg-primary">
<h2>View Student Details</h2>
</div>
<div class="container mt-5 col-5">
<h2>Student Details</h2>

<form action="ViewServlet" method="GET">
<%String[] record=(String[])request.getAttribute("record");
{ %>
<div class="mb-3 col-8">
<label for="rollno"class="form-label">Roll Number:</label>
<input type="text" class="form-control" name="rollno" value="<%= record[0] %>" readonly >
</div>
<div class="mb-3 col-8">
<label for="name"class="form-label">Name:</label>
<input type="text" class="form-control" name="name" value="<%= record[1] %>" readonly >
</div>
<div class="mb-3 col-8">
<label for="email"class="form-label">Email:</label>
<input type="text" class="form-control" name="email" value="<%= record[2] %>" readonly>
</div>
<div class="mb-3 col-8">
<label for="degree"class="form-label">Degree:</label>
<input type="text" class="form-control" name="degree" value="<%= record[3] %>" readonly >
</div>
<div class="mb-3 col-8">
<label for="course"class="form-label">Course:</label>
<input type="text" class="form-control" name="course" value="<%= record[4] %>" readonly>
</div>
<div class="mb-3 col-8">
<label for="course"class="form-label">AlottedFees:</label>
<input type="text" class="form-control" name="alottedfees" value="<%= record[5] %>" readonly>
</div>
<div class="mb-3 col-8">
<label for="course"class="form-label">AmountPaid:</label>
<input type="text" class="form-control" name="amountpaid" value="<%= record[6] %>" readonly>
</div>
<div class="mb-3 col-8">
<label for="course"class="form-label">AmountDue:</label>
<input type="text" class="form-control" name="amountdue" value="<%= record[7] %>" readonly>
</div>
<div class="mt-4">
   <a href="DeleteServlet?rollno=<%=record[0] %>&delete=request" class="btn btn-danger">Delete</a>
   <a href="UpdateServlet?rollno=<%= record[0]%>&update=request" class="btn btn-warning">Update</a>
     <a href="paynow.jsp?rollno=<%=record[0]%>"class="btn btn-success">Paynow</a>
   </div>
<%} %>
</form>
</div>
</body>
</html>