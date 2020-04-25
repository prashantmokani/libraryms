<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>User Registration</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="../../webapp/WEB-INF/bootstrap.min.css"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Karla&display=swap" rel="stylesheet">
    <style>
        body,h1 {
            font-family: 'Karla', sans-serif;
        }
    </style>
</head>
<body>
<div class="container align-content-center text-center bg-light p-5">
    <h1 class="font-weight-bold text-info">Create Account</h1>
    <form action="regUser" method="post">
        <div class="row">
            <div class="col-lg-6 p-2">
                <input type="text" name="sfFname" placeholder="First Name" class="form-control" required="required">
            </div>
            <div class="col-lg-6 p-2">
                <input type="text" name="sfLname" placeholder="Last Name" class="form-control" required="required">
            </div>
            <div class="col-lg-6 p-2">
                <input type="text" name="sfContact" placeholder="Contact No." class="form-control" required="required">
            </div>
            <div class="col-lg-6 p-2">
                <input type="text" name="sfEmail" id="sfEmail" placeholder="Email" class="form-control"  required="required" onblur="validateEmail(this);">
            </div>
            <div class="col-lg-6 p-2">
                <input type="password" name="sfPass" id="sfPass" placeholder="Password" class="form-control" required="required">
            </div>
            <div class="col-lg-6 p-2">
                <input type="password" name="sf_cpass" id="sf_cpass" placeholder="Confirm Password" class="form-control" required="required" >
            </div>
            <div class="col-lg-6 p-2">
                <input type="text" name="sfAddress" placeholder="City" class="form-control" required="required">
            </div>
        </div>
        <input type="submit" class="btn btn-danger text-center" value="Signup" onclick="return Validate()" role="button">
        <p class="mt-lg-5">${error}</p>
    </form>
</div>
<script type="text/javascript">
    var flag=true;
    function validateEmail(emailField){
        var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
        if (reg.test(emailField.value) == false)
        {
            alert('Invalid Email Address');
            flag=false;
            return flag;
        }
        flag=true;
        return true;
    }
    function Validate() {
        var password = document.getElementById("sfPass").value;
        var confirmPassword = document.getElementById("sf_cpass").value;
        if (password != confirmPassword) {
            alert("Passwords do not match with confirm password.");
            return false;
        }
        if(flag==false){
            alert("Invalid Email Id!!");
        }
        return flag;
    }
</script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>

</body>
</html>