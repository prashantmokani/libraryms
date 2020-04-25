<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Edit ${studentData.firstName}</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Karla&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        body,h1 {
            font-family: 'Karla', sans-serif;
        }
    </style>
</head>
<body class="bg-light">
<jsp:include page="../templates/navbar.jsp"></jsp:include>
<h1 class="m-2 font-weight-bold text-danger text-center">Edit Student</h1>
<span class="font-weight-bold text-danger m-2">Student Id : ${studentData.id}</span>
<form action="saveEditedStudent" method="post">
    <input name="id" value="${studentData.id}" hidden>
    <div class="row">
        <div class="col-lg-4">
            <input type="text" name="firstName" value="${studentData.firstName}" placeholder="First Name"
                   class="form-control m-2" required="required">
        </div>
        <div class="col-lg-4">
            <input type="text" name="middleName" value="${studentData.middleName}" placeholder="Middle Name"
                   class="form-control m-2" required="required">
        </div>
        <div class="col-lg-4">
            <input type="text" name="lastName" value="${studentData.lastName}" placeholder="Last Name"
                   class="form-control m-2" required="required">
        </div>
        <div class="col-lg-4">
            <input type="number" name="age" value="${studentData.age}" placeholder="Age" class="form-control m-2"
                   required="required">
        </div>
        <div class="col-lg-4">
            <input type="date" name="birthDate" value="${studentData.birthDate}" class="form-control m-2"
                   required="required">
        </div>
        <div class="col-lg-4">
            <select name="stGender" id="stGender" required="required" class="form-control m-2">
                <option value="male">Male</option>
                <option value="female">Female</option>
                <option value="other">Other</option>
            </select>
        </div>
        <div class="col-lg-4">
            <input type="text" name="stContact" value="${studentData.stContact}" placeholder="Contact No."
                   class="form-control m-2" required="required">
        </div>
        <div class="col-lg-4">
            <select name="courseid" id="courseid" class="form-control m-2" required="required">
                <option value="default">Please Select Branch..</option>
                <c:forEach items="${course}" var="course">
                    <option value=${course.id}>${course.branch}</option>
                </c:forEach>
            </select>
        </div>
        <div class="col-lg-4">
            <select name="stYear" id="stYear" class="form-control m-2" required="required">
                <option value="default">Select Academic Year</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
            </select>
        </div>
    </div>
    <div class="row">
        <input type="submit" class="btn btn-info m-3" value="Save Student" role="button">
        <a href="cancelStudentEdit" class="btn btn-danger m-3" role="button">Cancel</a>
    </div>
</form>

<jsp:include page="../templates/footer.jsp"></jsp:include>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        document.getElementById("stYear").value="${studentData.stYear}";
        document.getElementById("courseid").value=${studentData.course.id};
        document.getElementById("stGender").value="${studentData.stGender}";

    });
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="js/main.js"></script>

</body>
</html>