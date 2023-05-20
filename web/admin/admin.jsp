<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index Page</title>

        <title>Admin Dashboard</title>
    </head>
    <!--    Check if session empty or not-->
    <%
        if (session.getAttribute("UN") == null) {
            response.sendRedirect("../login.jsp");
        }
    %>

    <body>
        <!-- include navbar-->
        <div class="container position-sticky z-index-sticky top-0">
            <div class="row">
                <div class="col-12">

                    <!-- include navbar-->
                    <%@ include file="../layout/navbarAdmin.jsp" %>
                </div>
            </div>
        </div>


        <!-- Admin page content here -->
        <h1> Welcome Admin !</h1>


        <a href="../logout.jsp" class="btn btn-danger">logout</a>



        <div class="collapse show" id="userCollapse">
            <ul class="nav flex-column sub-menu">
                <li class="nav-item">
                    <a class="nav-link" href="addUser.jsp">Add New User</a>
                </li>
                <li class="nav-item">
                    <form action="../viewUsers" method="get">
                        <button class="btn nav-link">View Users</button>
                    </form>
                </li>
                <li class="nav-item">
                    <form action="../ViewUsers" method="get">
                        <button class="btn nav-link">Edit / Delete Users</button>
                    </form>
                </li>
            </ul>

        </div>





        <!--        import footer-->
        <%@ include file="../layout/footer.jsp" %>


        <script src="../js/core/popper.min.js"></script>
        <script src="../js/core/bootstrap.min.js"></script>
        <script src="../js/plugins/perfect-scrollbar.min.js"></script>
        <script src="../js/plugins/smooth-scrollbar.min.js"></script>



    </body>
</html>

