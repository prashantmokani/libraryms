<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>::Student Registration::</title>
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
<body>
<jsp:include page="../templates/navbar.jsp"></jsp:include>
    <h1 class="mt-lg-1 font-weight-bold text-danger text-center">Student Registration</h1>
    <form action="saveStudent" method="post">
        <div class="row">
            <div class="col-lg-4">
                <input type="text" name="firstName" placeholder="First Name" class="form-control m-2" required="required">
            </div>
            <div class="col-lg-4">
                <input type="text" name="middleName" placeholder="Middle Name" class="form-control m-2" required="required">
            </div>
            <div class="col-lg-4">
                <input type="text" name="lastName" placeholder="Last Name" class="form-control m-2" required="required">
            </div>
            <div class="col-lg-4">
                <input type="number" name="age" placeholder="Age" class="form-control m-2" required="required">
            </div>
            <div class="col-lg-4">
                <input type="date" name="birthDate" placeholder="First Name" class="form-control m-2" required="required">
            </div>
            <div class="col-lg-4">
                <select name="stGender" id="stGender" required="required" class="form-control m-2">
                    <option value="default" selected="selected">Select Gender...</option>
                    <option value="male">Male</option>
                    <option value="female">Female</option>
                    <option value="other">Other</option>
                </select>
            </div>
            <div class="col-lg-4">
                <input type="text" name="stContact" placeholder="Contact No." class="form-control m-2" required="required">
            </div>
            <div class="col-lg-4">
                <select name="courseid" id="courseid" class="form-control m-2" required="required">
                    <option value="default" selected="selected">Please Select Branch..</option>
                    <c:forEach items="${course}" var="course">
                        <option value=${course.id}>${course.branch}</option>
                    </c:forEach>
                </select>
            </div>
            <div class="col-lg-4">
                <select name="stYear" id="stYear" class="form-control m-2" required="required">
                    <option value="default" selected="selected">Select Academic Year</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                </select>
            </div>
        </div>
        <div class="align-content-center">
            <input type="submit" onclick="return Validate()" value="Register" role="button" class="btn btn-danger m-4"  >
            <a href="viewAllStudentPage?page=1" role="button" class="btn btn-info m-4 text-center">View All Students</a>
        </div>
    </form>

    <p class="text-danger text-center font-weight-bold">${sid}</p>
</div>
<script type="text/javascript">
    function x() {
        alert("checking");

    }
    function Validate() {

        var gender = document.getElementById("stGender").value;
        var aYear = document.getElementById("stYear").value;
        var course = document.getElementById("courseid").value;

        if(gender=="default"||aYear=="default" || course=="default"){
            alert("Please Select from Dropdown !! Gender, Year, Branch");
            return false;
        }

        return true;

    }
</script>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        crossorigin="anonymous"></script>
<script src="js/main.js"></script>
</body>
</html>