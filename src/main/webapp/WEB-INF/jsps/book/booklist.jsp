<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Book List</title>
    <link rel="stylesheet" type="text/css" href="./css/style.css"/>
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
<jsp:include page="../templates/navbar.jsp"></jsp:include>
<h1 class="font-weight-bold mb-4 text-center text-danger">Book List</h1>
<form action="searchBook" method="post">
    <div class="row">
        <div class="col-lg-3 col-sm-4">
            <a href="showBookRegForm" role="button" class="btn btn-info m-lg-3 ">Add New Book</a>
        </div>
        <div class="col-lg-3 col-sm-4 m-2 p-1 ml-auto">
            <input type="text" name="srchTxt" class="form-control" placeholder="Search Book by Title" required >
        </div>
        <div class="col-lg-1 col-sm-4 m-2 p-1">
            <input type="submit" class="btn btn-warning" value="Search" role="button" />
        </div>
    </div>
</form>

<table class="table table-borderless table-responsive-sm table-striped">
    <tr>
        <th>Book Title</th>
        <th>Edition</th>
        <th>Author</th>
        <th>Publisher</th>
        <th>Copies Available</th>
        <th colspan="2"></th>
    </tr>
    <c:forEach var="bookList" items="${bookList}">
        <tr>
            <td>${bookList.bkTitle}</td>
            <td>${bookList.bkEdition}</td>
            <td>${bookList.bkAuthor}</td>
            <td>${bookList.bkPublisher}</td>
            <td>${bookList.bkAvailable}</td>
            <td><a href="editBook?bookId=${bookList.id}" role="button" class="btn btn-info">Edit</a></td>
            <td><a href="#" data-target="#my_modal" data-toggle="modal" class="identifyingClass btn btn-danger" data-id=${bookList.id}>Delete</a></td>
        </tr>
    </c:forEach>
</table>
${viewAllButton}
<!--Modal Form of delete-->
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

</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
    <script type="text/javascript">
        $(function () {
            $(".identifyingClass").click(function () {
                var my_id_value = $(this).data('id');
                $("#deleteButton"). attr("href","deleteBook?bId="+my_id_value);
            })
        });
    </script>
</body>
</html>