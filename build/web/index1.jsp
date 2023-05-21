<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>navbar</title>

        <!-- Link bootstrap css -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link href="css/nucleo-icons.css" rel="stylesheet" >
        <link href="css/nucleo-svg.css" rel="stylesheet" >
        <link href="css/nucleo-svg.css" rel="stylesheet" >
        <link id="pagestyle" href="css/soft-ui-dashboard.css?v=1.0.7" rel="stylesheet" >
        <%@include file="components/styles.jsp" %>  
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
                        <li class="nav-item">
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
                        </li>
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



        <div class="jumbotron p-3 p-md-5 text-white  rounded bg-dark mt-5"
             style="background-image: url('images/back_ground7.jpg'); background-size: cover;">
            <div class="col-md-6 px-0">
                <h1 class="display-4 font-italic fw-bold mt-5" style="color:white">Welcome to the ABC University!</h1>
                <p class="lead my-3">We are thrilled that you
                    have chosen to explore the opportunities
                    and resources available to you as a member of our academic community.</p>
                <p class="lead mb-0"><a href="#" class="text-white font-weight-bold">Continue reading...</a></p>
            </div>
        </div>


                    <div class="container">
                        <div class="row mb-2 ">

                <div class="col-md-3 mt-5 ">
                    <div class="card flex-md-row mb-4 box-shadow h-md-250" >
                        <div class="card-body d-flex flex-column align-items-start rounded  bg-dark" >
                            <strong class="d-inline-block mb-2 text-info">Courses</strong>
                            <h3 class="mb-0">
                                <a class="text-light" href="#">Top Courses</a>
                            </h3>
                            <div class="mb-1 text-muted">Feb 04</div>
                            <p class="card-text mb-auto">This is a...</p>
                            <a href="#">Continue reading</a>
                        </div>
                        <img class="card-img-right flex-auto d-none d-md-block" style="background-image: url('images/OIP.jpg'); background-size: cover;"
                             alt="Card image cap">
                    </div>
                </div>

                <div class="col-md-3 mt-5">
                    <div class="card flex-md-row mb-4 box-shadow h-md-250">
                        <div class="card-body d-flex flex-column align-items-start rounded  bg-dark">
                            <strong class="d-inline-block mb-2 text-danger">Teachers</strong>
                            <h3 class="mb-0">
                                <a class="text-light" href="#">Best Teachers</a>
                            </h3>
                            <div class="mb-1 text-muted">Feb 02</div>
                            <p class="card-text mb-auto">This is a ....</p>
                            <a href="#">Continue reading</a>
                        </div>
                        <img class="card-img-right flex-auto d-none d-md-block" style="background-image: url('images/OIP2.jpg'); background-size: cover;"
                             alt="Card image cap">
                    </div>
                </div>

                <div class="col-md-3 mt-5">
                    <div class="card flex-md-row mb-4 box-shadow h-md-250">
                        <div class="card-body d-flex flex-column align-items-start rounded  bg-dark">
                            <strong class="d-inline-block mb-2 text-warning">Gallery</strong>
                            <h3 class="mb-0">
                                <a class="text-light" href="#">Featured Gallery</a>
                            </h3>
                            <div class="mb-1 text-muted">Feb 02</div>
                            <p class="card-text mb-auto">This is a ...</p>
                            <a href="#">Continue reading</a>
                        </div>
                        <img class="card-img-right flex-auto d-none d-md-block" style="background-image: url('images/OIP3.jpg'); background-size: cover;"
                             alt="Card image cap">
                    </div>
                </div>

                <div class="col-md-3 mt-5">
                    <div class="card flex-md-row mb-4 box-shadow h-md-250">
                        <div class="card-body d-flex flex-column align-items-start rounded  bg-dark">
                            <strong class="d-inline-block mb-2 text-success">Services</strong>
                            <h3 class="mb-0">
                                <a class="text-light" href="#">Best Services</a>
                            </h3>
                            <div class="mb-1 text-muted">Feb 03</div>
                            <p class="card-text mb-auto">This is a ...</p>
                            <a href="#">Continue reading</a>
                        </div>
                        <img class="card-img-right flex-auto d-none d-md-block" style="background-image: url('images/OIP4.jpg'); background-size: cover;"
                             alt="Card image cap">
                    </div>
                </div>
            </div>
                            </div>









    <!--        import footer-->
    <%@ include file="layout/footer.jsp" %>
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
