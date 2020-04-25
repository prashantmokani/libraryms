<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Active Book List</title>
    <link rel="stylesheet" type="text/css" href="./css/style.css"/>
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
<body class="bg-light">
<jsp:include page="../templates/navbar.jsp"></jsp:include>
<h1 class="text-danger text-center font-weight-bold">Active Book List</h1>
<table class="table table-responsive-sm table-striped">
    <tr>
        <th>ID</th>
        <th>Student Name</th>
        <th>Book Name</th>
        <th>Number of Copies</th>
        <th>Issue Date</th>
        <th>Due Date</th>
        <th></th>
    </tr>
    <c:forEach items="${bList}" var="data">
        <tr>
            <td>${data.id}</td>
            <td>${data.student.firstName} ${data.student.lastName}</td>
            <td>${data.book.bkTitle}</td>
            <td>${data.noCopies}</td>
            <td>${data.releaseDate}</td>
            <td>${data.dueDate}</td>
            <td><a href="#" data-target="#my_modal" data-toggle="modal" class="identifyingClass btn btn-danger" data-id=${data.id}>Return Book</a></td>
        </tr>
    </c:forEach>
</table>
<!--Modal Form of delete-->
<div class="modal fade" id="my_modal" tabindex="-1" role="dialog" aria-labelledby="my_modalLabel">
    <div class="modal-dialog modal-dialog-centered" role="dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel">Delete Student</h4>
                <button type="button" class="close ml-auto" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body">
                Do you really want to accept return book?
                <input type="hidden" name="hiddenValue" id="hiddenValue" value="" />
            </div>
            <div class="modal-footer">
                <a href="" id="deleteButton" class="btn btn-danger ">Yes</a>
                <button type="button" class="btn btn-info" data-dismiss="modal">No</button>
            </div>
        </div>
    </div>
</div>
<jsp:include page="../templates/footer.jsp"></jsp:include>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script type="text/javascript">
    $(function () {
        $(".identifyingClass").click(function () {
            var my_id_value = $(this).data('id');
            $("#deleteButton"). attr("href","returnBook?issueId="+my_id_value);
        })
    });
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
</body>
</html>