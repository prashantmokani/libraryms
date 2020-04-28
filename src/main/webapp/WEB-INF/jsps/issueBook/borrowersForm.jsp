<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Borrowers' Form</title>
    <link rel="stylesheet" type="text/css" href="./css/style.css"/>
    <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Karla&display=swap" rel="stylesheet">
    <style>
        body, h1 {
            font-family: 'Karla', sans-serif;
        }
    </style>
</head>
<body class="bg-light align-content-center">
<jsp:include page="../templates/navbar.jsp"></jsp:include>
<h1 class="text-danger font-weight-bold text-center">Issue Book</h1>
<form action="submitIssueBook" method="post">
    <div class="row">
        <div class="col-lg-4">
            <span class="font-weight-bold">Book ID: </span> <span class="font-weight-bold text-danger">${bookData.id}</span>
            <input type="text" value="${bookData.id}" name="bookId" hidden>
        </div>
        <div class="col-lg-4">
            <input type="text" value="${bookData.bkTitle}" disabled class="form-control m-2">

        </div>
        <div class="col-lg-4">
            <select name="stId" id="stId" class="form-control m-2" required="required">
                <option value="default">Select Student</option>
                <c:forEach items="${studentData}" var="student">
                    <option value=${student.id}>${student.id} ${student.firstName} ${student.lastName}</option>
                </c:forEach>
            </select>
            <%--<input type="text" class="form-control m-2" placeholder="Enter Student Id" name="stId" required>--%>
        </div>
        <div class="col-lg-4">
            <input type="text" class="form-control m-2" placeholder="Enter Staff Id" name="sfId" required>
        </div>
        <div class="col-lg-4">
            <input type="number" class="form-control m-2" placeholder="Enter Number of Copies" name="noCopies" required>
        </div>
        <div class="col-lg-4">
            <input type="date" id="releaseDate" class="form-control m-2" placeholder="Date of Issue" name="releaseDate" required>
        </div>
        <div class="col-lg-4">
            <input type="date" name="dueDate" class="form-control m-2" placeholder="Due Date"  required>
        </div>
    </div>
    <div class="row">
        <input type="submit" class="btn btn-danger m-4" value="Issue Book">
    </div>
</form>
<jsp:include page="../templates/footer.jsp"></jsp:include>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        var now = new Date();

        var day = ("0" + now.getDate()).slice(-2);
        var month = ("0" + (now.getMonth() + 1)).slice(-2);

        var today = now.getFullYear()+"-"+(month)+"-"+(day) ;

        $('#releaseDate').val(today);
    });
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
</body>
</html>