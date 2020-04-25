<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>:: Admin Dashboard ::</title>
    <link rel="stylesheet" href="css/style.css" >
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Google font link -->
    <link href="https://fonts.googleapis.com/css2?family=Karla&display=swap" rel="stylesheet">
    <style>
        body,h1,h5 {
            font-family: 'Karla', sans-serif;
        }
        .largeText{
            font-size: 52px;
        }
    </style>
</head>
<body class="bg-light">
<jsp:include page="./templates/navbar.jsp"></jsp:include>

<h1 class="text-center text-danger font-weight-bold">Admin Dashboard</h1>

<div class="container">
    <div class="row mt-5 align-content-center">
        <div class="card shadow m-4" style="width: 18rem;">
            <div class="card-body">
                <h5 class="card-title text-center">Total Books In Library</h5>
                <div class="row">
                    <div class="col-3 m-auto">
                        <img src="https://img.icons8.com/ios-filled/64/000000/book.png"/>
                    </div>
                    <div class="col-4 m-auto">
                        <span class="text-info font-weight-bold largeText">${totalBooks}</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="card shadow m-4"  style="width: 18rem;">
            <div class="card-body">
                <h5 class="card-title text-center">Total Books Available</h5>
                <div class="row">
                    <div class="col-3 m-auto">
                        <img src="https://img.icons8.com/ios-filled/64/000000/book.png"/>
                    </div>
                    <div class="col-4 m-auto">
                        <span class="text-info font-weight-bold largeText">${toalAvailableBooks}</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="card shadow m-4" style="width: 18rem;">
            <div class="card-body">
                <h5 class="card-title text-center">Total Registered Student</h5>
                <div class="row">
                    <div class="col-3 m-auto">
                        <img src="https://img.icons8.com/ios-filled/80/000000/student-registration.png"/>
                    </div>
                    <div class="col-5 m-auto">
                        <span class="text-info font-weight-bold largeText">${totalStudents}</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="card shadow  m-4" style="width: 18rem;">
            <div class="card-body">
                <h5 class="card-title text-center">Active Issued Book</h5>
                <div class="row">
                    <div class="col-3 m-auto">
                        <img src="https://img.icons8.com/cute-clipart/64/000000/double-tick.png"/>
                    </div>
                    <div class="col-4 m-auto">
                        <span class="text-info font-weight-bold largeText">${activeBorrowers}</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="card shadow m-4" style="width: 18rem;">
            <div class="card-body">
                <h5 class="card-title text-center">Total Issued Book</h5>
                <div class="row">
                    <div class="col-3 m-auto">
                        <img src="https://img.icons8.com/metro/64/000000/book.png"/>
                    </div>
                    <div class="col-4 m-auto">
                        <span class="text-info font-weight-bold largeText">${totalIssueBooks}</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="card shadow m-4" style="width: 18rem;">
            <div class="card-body">
                <h5 class="card-title text-center">Total Fine Collected</h5>
                <div class="row">
                    <div class="col-3 m-auto">
                        <img src="https://img.icons8.com/carbon-copy/80/000000/money.png"/>
                    </div>
                    <div class="col-7 m-auto">
                        <span class="text-danger font-weight-bold largeText">${totalFine}</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>




<jsp:include page="./templates/footer.jsp"></jsp:include>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="js/main.js"></script>

</body>
</html>