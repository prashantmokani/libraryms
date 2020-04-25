<div class="wrapper d-flex align-items-stretch">
    <nav id="sidebar">
        <div class="custom-menu">
            <button type="button" id="sidebarCollapse" class="btn btn-primary">
                <i class="fa fa-bars"></i>
                <span class="sr-only">Toggle Menu</span>
            </button>
        </div>
        <h1><a href="#" class="logo text-center bg-info pt-5 pb-5">Library Management</a></h1>
        <ul class="list-unstyled components mb-5">
            <li>
                <a href="dashboard"><span class="fa fa-user mr-3"></span>Dashboard</a>
            </li>
            <li>
                <a id="studentDropdown" role="button" data-toggle="dropdown" aria-expanded="false" ><span class="fa fa-group mr-3"></span>Student</a>
                <div class="dropdown-menu text-info bg-dark" aria-labelledby="studentDropdown">
                    <a class="dropdown-item" href="viewAllStudents">Student List</a>
                    <a class="dropdown-item" href="studentReg">Student Registration</a>
                </div>
            </li>
            <li>
                <a id="bookDropdown" role="button" data-toggle="dropdown" aria-expanded="false" ><span class="fa fa-book mr-3"></span> Books</a>
                <div class="dropdown-menu bg-dark text-info" aria-labelledby="bookDropdown">
                    <a class="dropdown-item" href="showBookList">Book List</a>
                    <a class="dropdown-item" href="showBookRegForm">Book Registration</a>
                </div>
            </li>
            <li>
                <a id="courseDropdown" role="button" data-toggle="dropdown" aria-expanded="false" ><span class="fa fa-bank mr-3"></span> Course</a>
                <div class="dropdown-menu bg-dark text-info" aria-labelledby="courseDropdown">
                    <a class="dropdown-item" href="showCourse">Course List</a>
                    <a class="dropdown-item" href="courseForm">Course Registration</a>
                </div>
            </li>
            <li>
                <a href="showIssueBook"><span class="fa fa-ticket mr-3"></span> Issue Book</a>
            </li>
            <li>
                <a href="returnBookList"><span class="fa fa-times mr-3"></span> Return Book</a>
            </li>
        </ul>
    </nav>
    <div id="content" class="p-4 p-md-5 pt-5">