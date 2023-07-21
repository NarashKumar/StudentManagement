<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AddStudent</title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>

<body>
<form action="AddServlet" method="POST">
<div class="container text-center mb-5 bg-primary">
<h2>Add Student Details</h2>
</div>
<div class="container">
<div class="row justify-content-md-center">
<div class="col-5">
<div class="mb-3 col-auto">
<label for="rollno"class="form-label">Roll Number:</label>
<input type="text" class="form-control" name="rollno" placeholder="Enter Roll Number" required>
</div>
<div class="mb-3 col-8">
<label for="name"class="form-label">Name:</label>
<input type="text" class="form-control" name="name" placeholder="Enter Name" required>
</div>
<div class="mb-3 col-8">
<label for="email"class="form-label">Email:</label>
<input type="text" class="form-control" name="email" placeholder="Enter Email ID" required>
</div>
<div class="mb-3 col-8">
<label for="degree"class="form-label">Degree:</label>
<input type="text" class="form-control" name="degree" placeholder="Enter Degree" required>
</div>
<div class="mb-3 col-8">
<label for="course"class="form-label">Course:</label>
<input type="text" class="form-control" name="course" placeholder="Enter Course" required>
</div>
<div class="mb-3 col-8">
<label for="course"class="form-label">AlottedFees:</label>
<input type="text" class="form-control" name="alottedfees" placeholder="Enter AlottedFees" required>
</div>
<div class="mb-3 col-8">
<label for="course"class="form-label">AmountPaid:</label>
<input type="text" class="form-control" name="amountpaid" placeholder="Enter AmountPaid" required>
</div>
<div class="mb-3 col-8">
<label for="course"class="form-label">AmountDue:</label>
<input type="text" class="form-control" name="amountdue" placeholder="Enter AmountDue" required>
</div>
<div class="mt-4">
   <button type="submit" class="btn btn-primary btn-center" name="add">Add</button>
   <a class="btn btn-secondary" href="StudentServlet">Cancel</a>
   </div>

</div>
</div>
</div>
</form>
</body>
</html>