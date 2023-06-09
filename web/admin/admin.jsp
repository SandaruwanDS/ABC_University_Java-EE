<%@ page import="util.DashboardStatus" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Admin Dashboard</title>


    </head>
    <!--    Check if session empty or not-->
    <%
        if (session.getAttribute("UN") == null) {
            response.sendRedirect("../login.jsp");
        }
    %>

    <body class="  bg-gray-100">
        <!-- include navbar-->

        <%@ include file="../layout/navbarAdmin.jsp" %>
        <!-- Admin page content here -->

        <!-- partial -->
        <div class="container-fluid page-body-wrapper mt-0 ">
            <!-- partial:partials/_sidebar.html -->
            <nav class="sidebar sidebar-offcanvas mt-0 conta" id="sidebar">
                <ul class="nav">
                    <li class="nav-item">
                        <a class="nav-link" href="admin.jsp">
                            <ion-icon name="desktop-outline"></ion-icon> &nbsp;&nbsp;&nbsp;
                            <h4 class="font-weight mb-0">Dashboard</h4>
                            <!--                            <span class="menu-title">Dashboard</span>-->
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-bs-toggle="collapse" href="#ui-basic" aria-expanded="true" aria-controls="ui-basic">
                            <ion-icon name="people-outline"></ion-icon>&nbsp;&nbsp;

                            <h4 class="font-weight mb-0">User Manage</h4>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <ion-icon name="caret-down-outline"></ion-icon>
                        </a>
                        <div class="collapse" id="ui-basic">
                            <ul class="nav flex-column sub-menu">

                                <li class="nav-item">
                                    <a class="nav-link" href="addUser.jsp"><h5>Add New User</h5></a>
                                </li>
                                <li class="nav-item">
                                    <form action="../viewUsers" method="get">
                                        <button class="btn nav-link"><h5>View /Edit Users</h5></button>
                                    </form>
                                </li>



                            </ul>
                        </div>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" data-bs-toggle="collapse" href="#ui-basic" aria-expanded="true" aria-controls="ui-basic">
                            <ion-icon name="people-circle-outline"></ion-icon>&nbsp;&nbsp;
                            <h4 class="font-weight mb-0">Student Manage</h4>&nbsp;&nbsp;
                            <ion-icon name="caret-down-outline"></ion-icon>
                        </a>
                        <div class="collapse" id="ui-basic">
                            <ul class="nav flex-column sub-menu">
                                <!--                                <li class="nav-item"> <a class="nav-link" href="#"><h5 class="font-weight mb-0">View Students</h5></a></li>
                                                                <li class="nav-item"> <a class="nav-link" href="#"><h5 class="font-weight mb-0">Add Student</h5></a></li>
                                <li class="nav-item"> <a class="nav-link" href="#"><h5 class="font-weight mb-0">Edit/Delete Student</h5></a></li>
-->

<li class="nav-item">
    <a class="nav-link" href="addStudent.jsp"><h5>Add New Student</h5></a>
</li>
<li class="nav-item">
    <form action="../viewStudents" method="get">
        <button class="btn nav-link"><h5>View / Edit Students</h5></button>
    </form>
</li>



                            </ul>
                        </div>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" data-bs-toggle="collapse" href="#ui-basic" aria-expanded="true" aria-controls="ui-basic">
                            <ion-icon name="school-outline"></ion-icon>&nbsp;&nbsp;
                            <h4 class="font-weight mb-0">Degree Manage</h4>&nbsp;&nbsp;&nbsp;
                            <ion-icon name="caret-down-outline"></ion-icon>
                        </a>
                        <div class="collapse" id="ui-basic">
                            <ul class="nav flex-column sub-menu">
                                <li class="nav-item">
                                    <form action="addDegree.jsp" method="post">
                                        <button class="btn nav-link"><h5>Add Degree</h5></button>
                                    </form>
                                </li>
                                <li class="nav-item">
                                    <form action="../viewDegree" method="get">
                                        <button class="btn nav-link"><h5>View / Edit Degree</h5></button>
                                    </form>
                                </li>
                                <li class="nav-item">
                                    <form action="addSubject.jsp" method="get">
                                        <button class="btn nav-link"><h5>Add Subject</h5></button>
                                    </form>
                                </li>
                                <li class="nav-item">
                                    <form action="../viewAllSubjects" method="get">
                                        <button class="btn nav-link"><h5>View / Edit Subject</h5></button>
                                    </form>
                                </li>
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
                                    <h4 class="font-weight-bold mb-0">Admin Dashboard</h4>
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
                                    <p class="mb-0 mt-2 text-danger">0.12% <span class="text-black ms-1"><small>(30 days)</small></span></p>
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
                                    <p class="mb-0 mt-2 text-danger">0.47% <span class="text-black ms-1"><small>(30 days)</small></span></p>
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
                                    <p class="mb-0 mt-2 text-success">64.00%<span class="text-black ms-1"><small>(30 days)</small></span></p>
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
                                    <p class="mb-0 mt-2 text-success">23.00%<span class="text-black ms-1"><small>(30 days)</small></span></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 grid-margin stretch-card">
                            <div class="card">
                                <div class="card-body">
                                    <p class="card-title">Sales details</p>
                                    <p class="text-muted font-weight-light">Received overcame oh sensible so at an. Formed do change merely to county it. Am separate contempt domestic to to oh. On relation my so addition branched.</p>
                                    <div id="sales-legend" class="chartjs-legend mt-4 mb-2"></div>
                                    <canvas id="sales-chart"></canvas>
                                </div>
                                <div class="card border-right-0 border-left-0 border-bottom-0">
                                    <div class="d-flex justify-content-center justify-content-md-end">
                                        <div class="dropdown flex-md-grow-1 flex-xl-grow-0">
                                            <button class="btn btn-lg btn-outline-light dropdown-toggle rounded-0 border-top-0 border-bottom-0" type="button" id="dropdownMenuDate2" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                                Today
                                            </button>
                                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuDate2">
                                                <a class="dropdown-item" href="#">January - March</a>
                                                <a class="dropdown-item" href="#">March - June</a>
                                                <a class="dropdown-item" href="#">June - August</a>
                                                <a class="dropdown-item" href="#">August - November</a>
                                            </div>
                                        </div>
                                        <button class="btn btn-lg btn-outline-light text-primary rounded-0 border-0 d-none d-md-block" type="button"> View all </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 grid-margin stretch-card">
                            <div class="card border-bottom-0">
                                <div class="card-body pb-0">
                                    <p class="card-title">Purchases</p>
                                    <p class="text-muted font-weight-light">The argument in favor of using filler text goes something like this: If you use real content in the design process, anytime you reach a review</p>
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
                    </div>
                    <div class="row">
                        <div class="col-md-7 grid-margin stretch-card">
                            <div class="card">
                                <div class="card-body">
                                    <p class="card-title mb-0">Top Products</p>
                                    <div class="table-responsive">
                                        <table class="table table-hover">
                                            <thead>
                                                <tr>
                                                    <th>User</th>
                                                    <th>Product</th>
                                                    <th>Sale</th>
                                                    <th>Status</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>Jacob</td>
                                                    <td>Photoshop</td>
                                                    <td class="text-danger"> 28.76% <i class="ti-arrow-down"></i></td>
                                                    <td><label class="badge badge-danger">Pending</label></td>
                                                </tr>
                                                <tr>
                                                    <td>Messsy</td>
                                                    <td>Flash</td>
                                                    <td class="text-danger"> 21.06% <i class="ti-arrow-down"></i></td>
                                                    <td><label class="badge badge-warning">In progress</label></td>
                                                </tr>
                                                <tr>
                                                    <td>John</td>
                                                    <td>Premier</td>
                                                    <td class="text-danger"> 35.00% <i class="ti-arrow-down"></i></td>
                                                    <td><label class="badge badge-info">Fixed</label></td>
                                                </tr>
                                                <tr>
                                                    <td>Peter</td>
                                                    <td>After effects</td>
                                                    <td class="text-success"> 82.00% <i class="ti-arrow-up"></i></td>
                                                    <td><label class="badge badge-success">Completed</label></td>
                                                </tr>
                                                <tr>
                                                    <td>Dave</td>
                                                    <td>53275535</td>
                                                    <td class="text-success"> 98.05% <i class="ti-arrow-up"></i></td>
                                                    <td><label class="badge badge-warning">In progress</label></td>
                                                </tr>
                                                <tr>
                                                    <td>Messsy</td>
                                                    <td>Flash</td>
                                                    <td class="text-danger"> 21.06% <i class="ti-arrow-down"></i></td>
                                                    <td><label class="badge badge-info">Fixed</label></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-5 grid-margin stretch-card">
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
                    <div class="row">
                        <div class="col-md-12 grid-margin stretch-card">
                            <div class="card position-relative">
                                <div class="card-body">
                                    <p class="card-title">Detailed Reports</p>
                                    <div class="row">
                                        <div class="col-md-12 col-xl-3 d-flex flex-column justify-content-center">
                                            <div class="ml-xl-4">
                                                <h1>33500</h1>
                                                <h3 class="font-weight-light mb-xl-4">Sales</h3>
                                                <p class="text-muted mb-2 mb-xl-0">The total number of sessions within the date range. It is the period time a user is actively engaged with your website, page or app, etc</p>
                                            </div>
                                        </div>
                                        <div class="col-md-12 col-xl-9">
                                            <div class="row">
                                                <div class="col-md-6 mt-3 col-xl-5">
                                                    <canvas id="north-america-chart"></canvas>
                                                    <div id="north-america-legend"></div>
                                                </div>
                                                <div class="col-md-6 col-xl-7">
                                                    <div class="table-responsive mb-3 mb-md-0">
                                                        <table class="table table-borderless report-table">
                                                            <tr>
                                                                <td class="text-muted">Illinois</td>
                                                                <td class="w-100 px-0">
                                                                    <div class="progress progress-md mx-4">
                                                                        <div class="progress-bar bg-primary" role="progressbar" style="width: 70%" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"></div>
                                                                    </div>
                                                                </td>
                                                                <td><h5 class="font-weight-bold mb-0">524</h5></td>
                                                            </tr>
                                                            <tr>
                                                                <td class="text-muted">Washington</td>
                                                                <td class="w-100 px-0">
                                                                    <div class="progress progress-md mx-4">
                                                                        <div class="progress-bar bg-primary" role="progressbar" style="width: 30%" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100"></div>
                                                                    </div>
                                                                </td>
                                                                <td><h5 class="font-weight-bold mb-0">722</h5></td>
                                                            </tr>
                                                            <tr>
                                                                <td class="text-muted">Mississippi</td>
                                                                <td class="w-100 px-0">
                                                                    <div class="progress progress-md mx-4">
                                                                        <div class="progress-bar bg-primary" role="progressbar" style="width: 95%" aria-valuenow="95" aria-valuemin="0" aria-valuemax="100"></div>
                                                                    </div>
                                                                </td>
                                                                <td><h5 class="font-weight-bold mb-0">173</h5></td>
                                                            </tr>
                                                            <tr>
                                                                <td class="text-muted">California</td>
                                                                <td class="w-100 px-0">
                                                                    <div class="progress progress-md mx-4">
                                                                        <div class="progress-bar bg-primary" role="progressbar" style="width: 60%" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
                                                                    </div>
                                                                </td>
                                                                <td><h5 class="font-weight-bold mb-0">945</h5></td>
                                                            </tr>
                                                            <tr>
                                                                <td class="text-muted">Maryland</td>
                                                                <td class="w-100 px-0">
                                                                    <div class="progress progress-md mx-4">
                                                                        <div class="progress-bar bg-primary" role="progressbar" style="width: 40%" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"></div>
                                                                    </div>
                                                                </td>
                                                                <td><h5 class="font-weight-bold mb-0">553</h5></td>
                                                            </tr>
                                                            <tr>
                                                                <td class="text-muted">Alaska</td>
                                                                <td class="w-100 px-0">
                                                                    <div class="progress progress-md mx-4">
                                                                        <div class="progress-bar bg-primary" role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
                                                                    </div>
                                                                </td>
                                                                <td><h5 class="font-weight-bold mb-0">912</h5></td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
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

