<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Fees Details</title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
<body>
    <div class="container text-center mb-5 bg-success">
        <h2>Fees Details</h2>
    </div>
    <div class="container mt-5 col-5">
        <h2>Student Fees</h2>
        <%String []record=(String [])request.getAttribute("feesrecord");
        {
        %>
        <form action="FeesServlet" method="GET">
            <div class="mb-3">
                <label for="rollno">Roll Number:</label>
                <input type="text" class="form-control" id="rollno" name="rollno" value="<%=record[0]%>" readonly>
            </div>
            <div class="mb-3">
                <label for="fees">Fees:</label>
                <input type="text" class="form-control" id="fees" name="fees" value="<%=record[1]%>" readonly>
            </div>
            <div class="mb-3">
                <label for="amountPaid">Amount Paid:</label>
                <input type="text" class="form-control" id="amountPaid" name="amountPaid" value="<%=record[2]%>" readonly>
            </div>
            <div class="mb-3">
                <label for="amountDue">Amount Due:</label>
                <input type="text" class="form-control" id="amountDue" name="amountDue" value="<%=record[3]%>" readonly>
            </div>
            <div class="mb-3">
                <label for="payAmount">Amount to Pay:</label>
                <input type="text" class="form-control" id="payAmount" name="payAmount" placeholder="Enter amount to pay" required>
            </div>
            <div>
                <button type="submit" name="paynow" class="btn btn-success">Pay Now</button>
                <button type="submit" name="updatefee" class="btn btn-warning">Update</button>
                <a href="StudentServlet" class="btn btn-secondary">Cancel</a>
            </div>
        </form>
        <%} %>
    </div>
</body>
</html>
