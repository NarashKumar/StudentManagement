<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Form</title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
<body>
<body>
<div class="container text-center mb-5 bg-warning">
<h2>Update Student Details</h2>
</div>
 <div class="container mt-5 col-5">
        <h2>Update Student</h2>
        <% String[] record = (String[]) request.getAttribute("record");
        {
        %>
        <form action="UpdateServlet" method="GET">
            <div class="mb-3">
                <label for="rollno">RollNo:</label>
                <input type="text" class="form-control" id="rollno" name="rollno" value="<%=record[0] %>" readonly>
            </div>
            <div class="mb-3">
                <label for="name">Name:</label>
                <input type="text" class="form-control" id="name" name="name" value="<%=record[1] %>">
            </div>
            <div class="mb-3">
                <label for="email">Email:</label>
                <input type="text" class="form-control" id="email" name="email" value="<%=record[2] %>">
            </div>
            <div class="mb-3">
                <label for="degree">Degree:</label>
                <input type="text" class="form-control" id="degree" name="degree" value="<%=record[3] %>">
            </div>
            <div class="mb-3">
                <label for="course">Course:</label>
                <input type="text" class="form-control" id="course" name="course" value="<%=record[4] %>">
            </div>
            <div class="mb-3">
                <label for="course">Alottedfees:</label>
                <input type="text" class="form-control" id="alottedfees" name="alottedfees" value="<%=record[5] %>">
            </div>
            <div class="mb-3">
                <label for="course">AmountPaid:</label>
                <input type="text" class="form-control" id="amountpaid" name="amountpaid" value="<%=record[6] %>">
            </div>
            <div class="mb-3">
                <label for="course">AmountDue:</label>
                <input type="text" class="form-control" id="amountdue" name="amountdue" value="<%=record[7] %>">
            </div>
            <button type="submit" name="update" class="btn btn-warning">Update</button>
            <a href="StudentServlet" class="btn btn-secondary">Cancel</a>
        </form>
        <%} %>
    </div>
    
</body>
</html>