<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>:: Course List ::</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css" >
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
<jsp:include page="../templates/navbar.jsp"></jsp:include>
<h1 class="font-weight-bold text-danger text-center">Course List</h1>
<a class="btn btn-info mt-4 mb-4" href="courseForm" role="button">Add new course</a>
<table class="table table-borderless table-striped table-responsive-sm text-center">
    <tr>
        <th>Course</th>
        <th>Branch</th>
        <th>Duration</th>
        <th colspan="2"></th>
    </tr>
    <c:forEach items="${courseList}" var="course">
        <tr>
            <td>${course.courses}</td>
            <td>${course.branch}</td>
            <td>${course.duration}</td>
            <td><a href="editCourse?cId=${course.id}" role="button" class="btn btn-info">Edit</a> </td>
            <td><a href="#" data-target="#my_modal" data-toggle="modal" class="identifyingClass btn btn-danger" data-id=${course.id}>Delete</a></td>
        </tr>
    </c:forEach>
</table>

<!-- Modal -->
<div class="modal fade" id="my_modal" tabindex="-1" role="dialog" aria-labelledby="my_modalLabel">
    <div class="modal-dialog modal-dialog-centered" role="dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel">Delete Student</h4>
                <button type="button" class="close ml-auto" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body">
                Do you really want to delete this Student data?
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

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        crossorigin="anonymous"></script>
<script src="js/main.js"></script>
    <script type="text/javascript">
        $(function () {
            $(".identifyingClass").click(function () {
                var my_id_value = $(this).data('id');
                $("#deleteButton"). attr("href","deleteCourse?cId="+my_id_value);
            })
        });
    </script>
</body>
</html>