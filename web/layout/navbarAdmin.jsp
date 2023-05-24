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

        <title>navbarAdmin</title>

        <!-- Link bootstrap css -->
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link href="../css/nucleo-icons.css" rel="stylesheet" >
        <link href="../css/nucleo-svg.css" rel="stylesheet" >
                <link href="../css/nucleo-svg.css" rel="stylesheet" >
                <!--                <link id="pagestyle" href="../css/soft-ui-dashboard.css?v=1.0.7" rel="stylesheet" >-->
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <!--                 Link jquery and Javascript -->
        <script src="../js/jquery.js"></script>
        <script src="../js/bootstrap.min.js"></script>

        <!--        new dash board-->
        <!-- plugins:css -->
        <link rel="stylesheet" href="../css/dash/themify-icons.css">
        <link rel="stylesheet" href="../css/dash/vendor.bundle.base.css">

                <!-- inject:css -->
                <link rel="stylesheet" href="../css/dash/style.css">
                <!--  external icons-->
                <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
                <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>

    </head>
    <body>


        <!-- Navbar -->
        <nav class="navbar navbar-main fixed-top navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl position-sticky blur shadow-blur mt-0 left-auto top-1 z-index-sticky" id="navbarBlur" navbar-scroll="true">
            <div class="container-fluid py-1 px-3">
                <nav aria-label="breadcrumb">
                    <a class="navbar-brand font-weight-bolder ms-lg-0 ms-3 " href="admin.jsp">
                        <img src="../images/logo1.png" width="30" height="30" class="d-inline-block align-top " alt="">
                        &nbsp; ABC UNIVERSITY
                    </a>
                </nav>
                <div class="collapse navbar-collapse mt-sm-0 mt-1 me-md-0 me-sm-4" id="navbar">
                    <div class="ms-md-auto pe-md-3 d-flex align-items-center">
                        <div class="input-group">
                            <span class="input-group-text text-body"><i class="fas fa-search" aria-hidden="true"></i></span>
                            <input type="text" class="form-control" placeholder="Type here...">
                        </div>
                    </div>
                    <ul class="navbar-nav  justify-content-end">

                        <li class="nav-item d-flex align-items-center">
                            <a href="../logout.jsp" class="nav-link text-body font-weight-bold px-0">
                                <i class="fa fa-user me-sm-1" aria-hidden="true"></i>
                                <span class="d-sm-inline d-none">Sign out</span>
                            </a>
                        </li>
                        <li class="nav-item d-xl-none ps-3 d-flex align-items-center">
                            <a href="javascript:;" class="nav-link text-body p-0" id="iconNavbarSidenav">
                                <div class="sidenav-toggler-inner">
                                    <i class="sidenav-toggler-line"></i>
                                    <i class="sidenav-toggler-line"></i>
                                    <i class="sidenav-toggler-line"></i>
                                </div>
                            </a>
                        </li>
                        <li class="nav-item px-3 d-flex align-items-center">
                            <a href="javascript:;" class="nav-link text-body p-0">
                                <i class="fa fa-cog fixed-plugin-button-nav cursor-pointer" aria-hidden="true"></i>
                            </a>
                        </li>
                        <li class="nav-item dropdown pe-2 d-flex align-items-center">
                            <a href="javascript:;" class="nav-link text-body p-0" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
                                <i class="fa fa-bell cursor-pointer" aria-hidden="true"></i>
                            </a>
                            <ul class="dropdown-menu  dropdown-menu-end  px-2 py-3 me-sm-n4" aria-labelledby="dropdownMenuButton">

                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>









        <script src="../js/core/popper.min.js"></script>
                <script src="../js/core/bootstrap.min.js"></script>
                <script src="../js/plugins/perfect-scrollbar.min.js"></script>
        <script src="../js/plugins/smooth-scrollbar.min.js"></script>

        <!--                 Github buttons -->
        <script async defer src="https://buttons.github.io/buttons.js"></script>
                <!--                 Control Center for Soft Dashboard: parallax effects, scripts for the example pages etc -->
                <script src="../js/soft-ui-dashboard.min.js?v=1.0.7"></script>



        <!--        new dash board-->
        <!-- plugins:js -->
        <script src="../js/dash/vendor.bundle.base.js"></script>
        <!-- endinject -->
        <!-- Plugin js for this page-->
        <script src="../js/dash/Chart.min.js"></script>
        <script src="../js/dash/jquery.cookie.js" type="text/javascript"></script>
        <!-- End plugin js for this page-->
        <!-- inject:js -->
        <script src="../js/dash/off-canvas.js"></script>
        <script src="../js/dash/hoverable-collapse.js"></script>
        <script src="../js/dash/template.js"></script>
        <script src="../js/dash/todolist.js"></script>
        <!-- endinject -->
        <!-- Custom js for this page-->
        <script src="../js/dash/dashboard.js"></script>
        <!-- End custom js for this page-->




    </body>
</html>
