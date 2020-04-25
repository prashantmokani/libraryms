<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Book List For Issue</title>
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
<h1 class="font-weight-bold text-center text-danger">Book List for Issue</h1>
<form action="searchBookList" method="post">
    <div class="row">
        <div class="col-lg-3 col-sm-4 m-2 p-1 ml-auto">
            <input type="text" name="srchTxt" class="form-control" placeholder="Search Book by Title" required >
        </div>
        <div class="col-lg-1 col-sm-4 m-2 p-1">
            <input type="submit" class="btn btn-warning" value="Search" role="button" />
        </div>
    </div>
</form>
<table class="table table-striped table-borderless">
    <tr>
        <td>Book Id</td>
        <td>Book Title</td>
        <td>Book Edition</td>
        <td>Book Author</td>
        <td>Copies Available</td>
        <td></td>
    </tr>
    <c:forEach items="${bookList}" var="books">
        <tr>
            <td>${books.id}</td>
            <td>${books.bkTitle}</td>
            <td>${books.bkEdition}</td>
            <td>${books.bkAuthor}</td>
            <td>${books.bkAvailable}</td>
            <td><a href="bookIssue?bookId=${books.id}" class="btn btn-danger">Issue</a></td>
        </tr>
    </c:forEach>
</table>
${viewAllButton}
<jsp:include page="../templates/footer.jsp"></jsp:include>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="./js/main.js"></script>
</body>
</html>