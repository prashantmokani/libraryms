<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>:: Book Registration ::</title>
    <link rel="stylesheet" href="css/style.css" >
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../lib/bootstrap/css/bootstrap.min.css"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Karla&display=swap" rel="stylesheet">
    <style>
        body,h1 {
            font-family: 'Karla', sans-serif;
        }
    </style>
</head>
<body class="bg-light">
<jsp:include page="../templates/navbar.jsp"></jsp:include>
<h1 class="mt-lg-1 mb-lg-5 font-weight-bold text-danger text-center">Book Registration</h1>
<form action="registerBook" method="post">
    <div class="row">
        <div class="col-lg-4">
            <input type="text" name="bkTitle" placeholder="Book Name" class="form-control m-2" required="required">
        </div>
        <div class="col-lg-4">
            <input type="number" name="bkEdition" placeholder="Edition of Book" class="form-control m-2" required="required" >
        </div>
        <div class="col-lg-4">
            <input type="text" name="bkAuthor" placeholder="Author's Name" class="form-control m-2" required >
        </div>
        <div class="col-lg-4">
            <input type="text" name="bkPublisher" placeholder="Book Publisher" class="form-control m-2" required>
        </div>
        <div class="col-lg-4">
            <input type="number" name="bkCopies" placeholder="Total Copies" class="form-control m-2" required>
        </div>
        <div class="col-lg-4">
            <input type="number"  name="bkAvailable" placeholder="Copies Available" class="form-control m-2" required>
        </div>
        <div class="col-lg-4">
            <input type="number"  name="bkCost" placeholder="Price of One Copy" class="form-control m-2" required>
        </div>
    </div>
    <div class="text-center align-content-center">
        <input type="submit" role="button" class="btn btn-danger mt-4 mr-2" value="Add to Library" >
        <a href="showBookList" role="button" class="btn btn-info mt-4 ml-2">View All Books</a>
    </div>
</form>

<p class="font-weight-bold text-danger text-center mt-5">${bookId}</p>

</div>


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
</body>
</html>