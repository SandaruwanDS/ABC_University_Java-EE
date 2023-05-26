<%-- 
    Document   : navbar
    Created on : May 20, 2023, 2:55:59 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>navbar</title>

        <!-- Link bootstrap css -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link href="css/nucleo-icons.css" rel="stylesheet" >
        <link href="css/nucleo-svg.css" rel="stylesheet" >
        <link href="css/nucleo-svg.css" rel="stylesheet" >
        <link id="pagestyle" href="css/soft-ui-dashboard.css?v=1.0.7" rel="stylesheet" >

        <!-- Link jquery and Javascript -->
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>

    </head>
    <body>

        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg blur blur-rounded top-0 z-index-3 shadow position-absolute my-3 py-2 start-0 end-0 mx-4">
            <div class="container-fluid pe-0">
                <a class="navbar-brand font-weight-bolder ms-lg-0 ms-3 " href="index.jsp">
                    <img src="images/logo1.png" width="30" height="30" class="d-inline-block align-top " alt="">
                    &nbsp; ABC UNIVERSITY
                </a>
                <button class="navbar-toggler shadow-none ms-2" type="button" data-bs-toggle="collapse" data-bs-target="#navigation" aria-controls="navigation" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon mt-2">
                        <span class="navbar-toggler-bar bar1"></span>
                        <span class="navbar-toggler-bar bar2"></span>
                        <span class="navbar-toggler-bar bar3"></span>
                    </span>
                </button>
                <div class="collapse navbar-collapse" id="navigation">
                    <ul class="navbar-nav mx-auto ms-xl-auto me-xl-7">
                        <!--                        <li class="nav-item">
                                                    <a class="nav-link d-flex align-items-center me-2 active" aria-current="page" href="index.jsp">
                                <i class="fa fa-chart-pie opacity-6 text-dark me-1"></i>
                                Home
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link me-2" href="#">
                                <i class="fa fa-user opacity-6 text-dark me-1"></i>
                                Profile
                            </a>
                                                </li>-->
<!--                        <li class="nav-item">
                                                    <a class="nav-link me-2" href="../pages/sign-up.html">
                                <i class="fas fa-user-circle opacity-6 text-dark me-1"></i>
                                Sign Up
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link me-2" href="../pages/sign-in.html">
                                <i class="fas fa-key opacity-6 text-dark me-1"></i>
                                Sign In
                            </a>
                                                </li>-->
                    </ul>
                    <li class="nav-item d-flex align-items-center">
                        <a class="btn btn-round btn-sm mb-0 btn-outline-primary me-2" href="login.jsp">Login</a>
                    </li>
                    <ul class="navbar-nav d-lg-block d-none">
                        <li class="nav-item">
                            <a href="register.jsp" class="btn btn-sm btn-round mb-0 me-1 bg-gradient-dark">Sign Up</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>









        <script src="js/core/popper.min.js"></script>
        <script src="js/core/bootstrap.min.js"></script>
        <script src="js/plugins/perfect-scrollbar.min.js"></script>
        <script src="js/plugins/smooth-scrollbar.min.js"></script>

        <!-- Github buttons -->
        <script async defer src="https://buttons.github.io/buttons.js"></script>
        <!-- Control Center for Soft Dashboard: parallax effects, scripts for the example pages etc -->
        <script src="js/soft-ui-dashboard.min.js?v=1.0.7"></script>

    </body>
</html>
