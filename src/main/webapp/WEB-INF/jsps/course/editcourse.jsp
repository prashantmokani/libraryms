<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Edit ${courseEntity.courses} -> ${courseEntity.branch}</title>
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
<body>
<jsp:include page="./../templates/navbar.jsp"/>
<h1 class="font-weight-bold text-center text-danger p-5">Edit Course</h1>
<form action="saveEditedCourse" method="post">
    <div class="row">
        <input type="text" value="${courseEntity.id}" name="id" hidden>
        <div class="col-lg-4">
            <input type="text" name="courses" placeholder="Course" value="${courseEntity.courses}" class="form-control" required="required">
        </div>
        <div class="col-lg-4">
            <input type="text" name="branch" placeholder="Branch" class="form-control" value="${courseEntity.branch}" required="required">
        </div>
        <div class="col-lg-4">
            <select name="duration" id="duration" class="form-control p-2" required="required">
                <option value=0>Course Duration</option>
                <option value=1>1</option>
                <option value=2>2</option>
                <option value=3>3</option>
                <option value=4>4</option>
                <option value=5>5</option>
            </select>
        </div>
    </div>
    <div class="row mt-5">
        <input type="submit" value="Save Changes" class="btn btn-info m-3" role="button">
        <a class="btn btn-danger m-3" href="cancelEditCourse ">Cancel</a>
    </div>
</form>
<jsp:include page="../templates/footer.jsp"></jsp:include>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        document.getElementById("duration").value=${courseEntity.duration};

    });
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
</body>
</html>