<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Edit ${bookEntity.bkTitle}</title>
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
<h1 class="text-danger font-weight-bold text-center">Edit Book ${bookEntity.bkTitle}</h1>

<form action="saveEditedBook" method="post">
    <input type="text" name="id" value="${bookEntity.id}" class="form-control m-2" hidden>
    <div class="row">
        <div class="col-lg-4">
            <input type="text" name="bkTitle" placeholder="Book Name" class="form-control m-2" required value="${bookEntity.bkTitle}">
        </div>
        <div class="col-lg-4">
            <input type="number" name="bkEdition" placeholder="Edition of Book" class="form-control m-2" required value="${bookEntity.bkEdition}">
        </div>
        <div class="col-lg-4">
            <input type="text" name="bkAuthor" placeholder="Author's Name" class="form-control m-2" required value="${bookEntity.bkAuthor}">
        </div>
        <div class="col-lg-4">
            <input type="text" name="bkPublisher" placeholder="Book Publisher" class="form-control m-2" required value="${bookEntity.bkPublisher}">
        </div>
        <div class="col-lg-4">
            <input type="number" name="bkCopies" placeholder="Total Copies" class="form-control m-2" required value="${bookEntity.bkCopies}">
        </div>
        <div class="col-lg-4">
            <input type="number"  name="bkAvailable" placeholder="Copies Available" class="form-control m-2" required value="${bookEntity.bkAvailable}">
        </div>
        <div class="col-lg-4">
            <input type="number"  name="bkCost" placeholder="Price of One Copy" class="form-control m-2" required value="${bookEntity.bkCost}">
        </div>
    </div>
    <div class="row">
        <input type="submit" role="button" class="btn btn-info m-3" value="Save Book">
        <a href="cancelBook" role="button" class="btn btn-danger m-3">Cancel</a>
    </div>
</form>


<jsp:include page="../templates/footer.jsp"></jsp:include>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
</body>
</html>