<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>${borrowerData.book.bkTitle} issued to ${borrowerData.student.firstName}</title>
    <link rel="stylesheet" type="text/css" href="./css/style.css"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Karla&display=swap" rel="stylesheet">
    <style>
        body, h1,h4 {
            font-family: 'Karla', sans-serif;
        }
    </style>
</head>
<body>
<jsp:include page="../templates/navbar.jsp"></jsp:include>
<h4 class="font-weight-bold text-danger">${borrowerData.book.bkTitle} Issued to ${borrowerData.student.firstName}</h5>
Issue Id : ${borrowerData.id} <br>
Book Title : ${borrowerData.book.bkTitle} <br>
Issued To : ${borrowerData.student.firstName} ${borrowerData.student.lastName}<br>
Issued From : ${borrowerData.users.sfFname} ${borrowerData.users.sfLname}<br>
Issue Date : ${borrowerData.releaseDate}<br>
Due Date: ${borrowerData.dueDate}<br>

<a href="showIssueBook" class="btn btn-danger">Issue New Book</a>
<jsp:include page="../templates/footer.jsp"></jsp:include>



<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>