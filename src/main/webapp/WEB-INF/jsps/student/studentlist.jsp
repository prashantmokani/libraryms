<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title> Student List </title>
    <link rel="stylesheet" href="css/style.css" >
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Google font link -->
    <link href="https://fonts.googleapis.com/css2?family=Karla&display=swap" rel="stylesheet">
    <style>
        body,h1 {
            font-family: 'Karla', sans-serif;
        }
    </style>
</head>
<body class="bg-light">
<%--Including Navigation Bar--%>
<jsp:include page="../templates/navbar.jsp"></jsp:include>
    <h1 class="text-center text-danger font-weight-bold mt-lg-1 mt-sm-2">Student List</h1>
        <form action="searchStudent" method="post">
            <div class="row">
                <div class="col-lg-3 col-sm-4">
                    <a class="btn btn-info m-lg-3 m-sm-3" href="studentReg" role="button">Add New Student</a>
                </div>
                <div class="col-lg-3 col-md-3 ml-auto col-sm-2  p-1 m-1">
                    <input type="text" name="srchTxt" class="form-control " placeholder="Search Student Name" required="required">
                </div>
                <div class="col-lg-1 col-sm-1  m-1">
                    <input type="submit" class="btn btn-warning" value="Search" role="button" />
                </div>
            </div>
        </form>
    <table class="table table-borderless table-striped table-responsive-sm">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Gender</th>
            <th>DOB</th>
            <th>Contact No.</th>
            <th>Branch</th>
            <th></th>
            <th></th>
        </tr>
        <c:forEach items="${stdList}" var="studentList">
            <tr>
                <td>${studentList.id}</td>
                <td>${studentList.firstName} ${studentList.lastName}</td>
                <td>${studentList.stGender}</td>
                <td>${studentList.birthDate}</td>
                <td>${studentList.stContact}</td>
                <td>${studentList.course.branch}</td>

                <td><a href="editStudent?sId=${studentList.id}" role="button" class="btn btn-info">Edit</a> </td>
                <td><a href="#" data-target="#my_modal" data-toggle="modal" class="identifyingClass btn btn-danger" data-id=${studentList.id}>Delete</a></td>
                    <%-- Confirmation Dialog in BootStrap $ --%>

            </tr>
        </c:forEach>
    </table>
<%--For displaying Page numbers.
    The when condition does not display a link for the current page--%>
<table border="1" cellpadding="5" cellspacing="5">
    <tr>
        <c:forEach begin="1" end="${noOfPages}" var="i">
            <c:choose>
                <c:when test="${currentPage eq i}">
                    <td>${i}</td>
                </c:when>
                <c:otherwise>
                    <td><a href="viewAllStudentPage?page=${i}">${i}</a></td>
                </c:otherwise>
            </c:choose>
        </c:forEach>
    </tr>
</table>
    <p class="font-weight-bold text-danger">${error}</p>
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


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
<script type="text/javascript">
    $(function () {
        $(".identifyingClass").click(function () {
            var my_id_value = $(this).data('id');
            $("#deleteButton"). attr("href","deleteStudent?sId="+my_id_value);
        })
    });

</script>
</body>
</html>