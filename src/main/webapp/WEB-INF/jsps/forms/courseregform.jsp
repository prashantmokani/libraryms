<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>:: Course Registration ::</title>
    <link rel="stylesheet" href="css/style.css" >
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Karla&display=swap" rel="stylesheet">
    <style>
        body,h1 {
            font-family: 'Karla', sans-serif;
        }
    </style>
</head>
<body class="bg-light">
<jsp:include page="../templates/navbar.jsp"/>
<div class="align-content-center">
    <h2 class="font-weight-bold text-center text-danger p-5">Course Registration</h2>
    <form action="saveCourse" method="post">
        <div class="row">
            <div class="col-lg-4">
                <input type="text" name="courses" placeholder="Course" class="form-control" required="required">
            </div>
            <div class="col-lg-4">
                <input type="text" name="branch" placeholder="Branch" class="form-control" required="required">
            </div>
            <div class="col-lg-4">
                <select name="duration" class="form-control p-2" required="required">
                    <option value=0>Course Duration</option>
                    <option value=1>1</option>
                    <option value=2>2</option>
                    <option value=3>3</option>
                    <option value=4>4</option>
                    <option value=5>5</option>
                </select>
            </div>
        </div>
        <input type="submit" value="Submit" class="btn btn-danger mt-5" role="button">
    </form>
    <a class="mt-5 btn btn-info" href="showCourse" role="button">All Courses</a>
</div>


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
</body>
</html>