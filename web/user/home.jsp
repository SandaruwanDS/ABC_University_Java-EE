<%@ page import="util.DashboardStatus" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>User Dashboard</title>


    </head>
    <!--    Check if session empty or not-->
    <%
        if (session.getAttribute("UN") == null) {
            response.sendRedirect("../login.jsp");
        }
    %>

    <body class="  bg-gray-100">
        <!-- include navbar-->

        <%@ include file="../layout/navbarUser.jsp" %>
        <!-- Admin page content here -->

        <!-- partial -->
        <div class="container-fluid page-body-wrapper mt-0 ">
            <!-- partial:partials/_sidebar.html -->
            <nav class="sidebar sidebar-offcanvas mt-0 conta" id="sidebar">
                <ul class="nav">
                    <li class="nav-item">
                        <a class="nav-link" href="home.jsp">
                            <ion-icon name="desktop-outline"></ion-icon> &nbsp;&nbsp;&nbsp;
                            <h4 class="font-weight mb-0">User Dashboard</h4>
                            <!--                            <span class="menu-title">Dashboard</span>-->
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-bs-toggle="collapse" href="#ui-basic" aria-expanded="true" aria-controls="ui-basic">


                            <h4 class="font-weight mb-0">
                                <ion-icon name="book-outline"></ion-icon>&nbsp;&nbsp;

                                Subject Manage
                                &nbsp;&nbsp;
                                <ion-icon name="caret-down-outline"></ion-icon>
                            </h4>

                        </a>
                        <div class="collapse" id="ui-basic">
                            <ul class="nav flex-column sub-menu">


                                <li class="nav-item">
                                    <form action="../viewUserSubject" method="get">
                                        <button class="btn nav-link"><h5>View Subjects</h5></button>
                                    </form>
                                </li>

                                <li class="nav-item">
                                    <form action="../viewUserDegree" method="get">
                                        <button class="btn nav-link"><h5>Add Subjects to Degree</h5></button>
                                    </form>
                                </li>

                                <li class="nav-item">
                                    <form action="../viewUserDegree" method="get">
                                        <button class="btn nav-link"><h5>Enroll Students to Subjects</h5></button>
                                    </form>
                                </li>



                            </ul>
                        </div>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" data-bs-toggle="collapse" href="#ui-basic" aria-expanded="true" aria-controls="ui-basic">

                            <h4 class="font-weight mb-0">
                                <ion-icon name="stats-chart-outline"></ion-icon>&nbsp;&nbsp;
                                Grading Manage&nbsp;&nbsp;
                                <ion-icon name="caret-down-outline">
                            </ion-icon></h4>
                        </a>
                        <div class="collapse" id="ui-basic">
                            <ul class="nav flex-column sub-menu">


                                <li class="nav-item">
                                    <form action="../viewUserSubject" method="get">
                                        <button class="btn nav-link"><h5>Grade Students</h5></button>
                                    </form>
                                </li>



                            </ul>
                        </div>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" data-bs-toggle="collapse" href="#ui-basic" aria-expanded="true" aria-controls="ui-basic">

                            <h4 class="font-weight mb-0">
                                <ion-icon name="ribbon-outline"></ion-icon>&nbsp;&nbsp;
                                Results Manage&nbsp;&nbsp;&nbsp;
                                <ion-icon name="caret-down-outline"></ion-icon>
                            </h4>

                        </a>
                        <div class="collapse" id="ui-basic">
                            <ul class="nav flex-column sub-menu">
                                <li class="nav-item">
                                    <form action="viewUserDegree.jsp" method="post">
                                        <button class="btn nav-link"><h5>Semester Results</h5></button>
                                    </form>
                                </li>
                                <li class="nav-item">
                                    <form action="../viewUserDegree" method="get">
                                        <button class="btn nav-link"><h5>Final Results</h5></button>
                                    </form>
                                </li>
                                <!--                                <li class="nav-item">
                                                                    <form action="addSubject.jsp" method="get">
                                        <button class="btn nav-link"><h5>Add Subject</h5></button>
                                    </form>
                                </li>
                                <li class="nav-item">
                                    <form action="../viewAllSubjects" method="get">
                                        <button class="btn nav-link"><h5>View / Edit Subject</h5></button>
                                    </form>
                                                                </li>-->
<!--                                <li class="nav-item">
                                                                    <form action="../viewStudents" method="get">
                                        <button class="btn nav-link"><h5>Add Subject to Degree</h5></button>
                                    </form>
                                                                </li>-->

                            </ul>
                        </div>
                    </li>
                </ul>
            </nav>





            <div class="main-panel">
                <div class="content-wrapper">
                    <div class="row">
                        <div class="col-md-12 grid-margin">
                            <div class="d-flex justify-content-between align-items-center">
                                <div>
                                    <h4 class="font-weight-bold mb-0">User Dashboard</h4>
                                </div>
                                <div>
                                    <button type="button" class="btn btn-primary btn-icon-text btn-rounded">
                                        <ion-icon name="print-outline"></ion-icon> &nbsp;  Report
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3 grid-margin stretch-card">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="font-weight text-md-center mb-0">All Users</h4>
                                    <div class="d-flex flex-wrap justify-content-between justify-content-md-center justify-content-xl-between align-items-center">
                                        <h3 class="mb-0 mb-md-2 mb-xl-0 order-md-1 order-xl-0 mt-4"><%=DashboardStatus.getUserCount()%></h3>
                                        <h2> <ion-icon name="person-outline"></ion-icon></h2>
                                    </div>
                                    <!--                                    <p class="mb-0 mt-2 text-danger">0.12% <span class="text-black ms-1"><small>(30 days)</small></span></p>-->
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 grid-margin stretch-card">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="font-weight text-md-center mb-0">All Students</h4>

                                    <div class="d-flex flex-wrap justify-content-between justify-content-md-center justify-content-xl-between align-items-center">
                                        <h3 class="mb-0 mb-md-2 mb-xl-0 order-md-1 order-xl-0 mt-4"><%=DashboardStatus.getStudentCount()%></h3>
                                        <h2><ion-icon name="people-outline"></ion-icon></h2>
                                    </div>
                                    <!--                                    <p class="mb-0 mt-2 text-danger">0.47% <span class="text-black ms-1"><small>(30 days)</small></span></p>-->
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 grid-margin stretch-card">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="font-weight text-md-center mb-0">All Degrees</h4>
                                    <div class="d-flex flex-wrap justify-content-between justify-content-md-center justify-content-xl-between align-items-center">
                                        <h3 class="mb-0 mb-md-2 mb-xl-0 order-md-1 order-xl-0 mt-4"><%=DashboardStatus.getDegreeCount()%></h3>
                                        <h2><ion-icon name="school-outline"></ion-icon></h2>
                                    </div>
                                    <!--                                    <p class="mb-0 mt-2 text-success">64.00%<span class="text-black ms-1"><small>(30 days)</small></span></p>-->
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 grid-margin stretch-card">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="font-weight text-md-center mb-0">All Subjects</h4>
                                    <div class="d-flex flex-wrap justify-content-between justify-content-md-center justify-content-xl-between align-items-center">
                                        <h3 class="mb-0 mb-md-2 mb-xl-0 order-md-1 order-xl-0 mt-4"><%=DashboardStatus.getSubjectCount()%></h3>
                                        <h2><ion-icon name="book-outline"></ion-icon></h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>



                                        <div class="row">
                                            <div class="col-md-6 grid-margin stretch-card">
                                                <div class="card border-bottom-0">
                                                    <div class="card-body pb-0">
                                                        <p class="card-title">Diagram</p>
                                                        <p class="text-muted font-weight-light"></p>
                                                        <div class="d-flex flex-wrap mb-5">
                    <div class="me-5 mt-3">
                        <p class="text-muted">Status</p>
                        <h3>362</h3>
                    </div>
                    <div class="me-5 mt-3">
                        <p class="text-muted">New users</p>
                        <h3>187</h3>
                    </div>
                    <div class="me-5 mt-3">
                        <p class="text-muted">Chats</p>
                        <h3>524</h3>
                    </div>
                    <div class="mt-3">
                        <p class="text-muted">Feedbacks</p>
                        <h3>509</h3>
                    </div>
                </div>
            </div>
            <canvas id="order-chart" class="w-100"></canvas>
        </div>
</div>

                                            <div class="col-md-6 grid-margin stretch-card">
                                                <div class="card">
                                                <div class="card-body">
                                                    <h4 class="card-title">To Do Lists</h4>
                                                    <div class="list-wrapper pt-2">
                                                        <ul class="d-flex flex-column-reverse todo-list todo-list-custom">
                                                            <li>
                                                                <div class="form-check form-check-flat">
                                                                    <label class="form-check-label">
                                                                        <input class="checkbox" type="checkbox">
                                                                        Become A Travel Pro In One Easy Lesson
                                                                    </label>
                                                                </div>
                                                                <i class="remove ti-trash"></i>
                                                            </li>
                                                            <li class="completed">
                                                                <div class="form-check form-check-flat">
                                                                    <label class="form-check-label">
                                                                        <input class="checkbox" type="checkbox" checked>
                                                                        See The Unmatched Beauty Of The Great Lakes
                                                                    </label>
                                                                </div>
                                                                <i class="remove ti-trash"></i>
                                                            </li>
                                                            <li>
                                                                <div class="form-check form-check-flat">
                                                                    <label class="form-check-label">
                                                                        <input class="checkbox" type="checkbox">
                                                                        Copper Canyon
                                                                    </label>
                                                                </div>
                                                                <i class="remove ti-trash"></i>
                                                            </li>
                                                            <li class="completed">
                                                                <div class="form-check form-check-flat">
                                                                    <label class="form-check-label">
                                                                        <input class="checkbox" type="checkbox" checked>
                                                                        Top Things To See During A Holiday In Hong Kong
                                                                    </label>
                                                                </div>
                                                                <i class="remove ti-trash"></i>
                                                            </li>
                                                            <li>
                                                                <div class="form-check form-check-flat">
                                                                    <label class="form-check-label">
                                                                        <input class="checkbox" type="checkbox">
                                                                        Travelagent India
                                                                    </label>
                                                                </div>
                                                                <i class="remove ti-trash"></i>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="add-items d-flex mb-0 mt-4">
                                                        <input type="text" class="form-control todo-list-input me-2"  placeholder="Add new task">
                                                        <button class="add btn btn-icon text-primary todo-list-add-btn bg-transparent"><i class="ti-location-arrow"></i></button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>





                                        </div>


                </div>



            </div>

            </div>



        <!--        import footer-->
        <%@ include file="../layout/footer.jsp" %>


    </body>
</html>

