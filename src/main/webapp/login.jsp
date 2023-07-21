<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
</head>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
<body>
 <div class="container text-center mb-3 bg-primary bg-gradient">
 <h1> Student Management</h1>
 <p>A JSP Application</p>
</div>
 <div class="container text-center">
 <h2>Login</h2>
 </div>
 <div class="container">
 <div class="row justify-content-center">
 <div class="col-auto mt-8">
 
 <form action="LoginServlet" method="GET">
 <div class="mb-3 mt-4">
 <label for="emailInput" class="form-label">Username:</label>
 <input type="text" class="form-control" name="username" placeholder="Enter your Username">
 </div>
 
 <div class="mb-3">
  <label for="passwordInput" class="form-label">Password:</label>
  <input type="password" class="form-control" name="password" placeholder="Enter your password">
   </div>
   
   <div class="text-center mt-4">
   <button type="submit" class="btn btn-primary btn-center">Login</button>
   </div>
  </form>
 </div>
 </div>
 </div>
</body>
</html>