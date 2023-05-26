<%-- 
    Document   : addStudent
    Created on : May 21, 2023, 10:58:12 AM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Add Student</title>

    </head>
    <%
        if (session.getAttribute("UN") == null) {
            response.sendRedirect("../login.jsp");
        }
    %>
    <body>
        <%@ include file="../layout/navbarAdmin.jsp" %>


        <div class="container" style="margin-top:0px;background-size:cover;background-position:center;padding: 20px;width: 1000px">

            <%--    display alert if success--%>
            <% if ("true".equals(request.getParameter("success"))) { %>
            <div class="alert alert-success" role="alert">
                User added successfully !
            </div>
            <script>
           // Clear success parameter from URL
           if (window.location.search.includes('success')) {
               history.replaceState({}, document.title, window.location.pathname);
           }
            </script>
            <% } else if ("false".equals(request.getParameter("success"))) { %>
            <div class="alert alert-danger" role="alert">
                Error!
            </div>
            <%
        }%>

            <div class="card" style="background-color:rgba(255, 255, 255, 0.5)">
                <div class="card-header">
                    <div class="container">
                        <a class="btn btn-info btn-icon-text btn-rounded mb-2" href="admin.jsp">
                            <ion-icon name="arrow-back-outline"></ion-icon> &nbsp;  Back
                        </a>
                    </div>
                    <h4 class="align-items-center mt-3"> Add Student </h4>

                </div>
                <div class="card-body">
                    <form class="forms-sample" action="../addStudents" method="post">
                        <div class="form-group mt-2">
                            <label for="studentReg">Student Registration Number</label>
                            <input type="text" name="studentReg" id="userPhone" placeholder="Enter Student Registration Number"
                                   class="form-control" required="">
                        </div>

                        <div class="form-group mt-2">
                            <label for="userName">Student Name</label>
                            <input type="text" name="studentName" id="userName" placeholder="Enter Student Name"
                                   class="form-control" required="">
                        </div>
                        <div class="form-group mt-2">
                            <label for="userEmail">Student Email Address</label>
                            <input type="email" name="studentEmail" id="userEmail" placeholder="Enter Student Email"
                                   class="form-control" required="">
                        </div>

                        <div class="form-group mt-2">
                            <label for="userPhone">Student Contact Number</label>
                            <input type="text" name="studentPhone" id="userPhone" placeholder="Enter Student Phone"
                                   class="form-control" required="">
                        </div>
                        <div class="form-group mt-2">
                            <label for="userNic">Student NIC Number</label>
                            <input type="text" name="studentNic" id="userNic" placeholder="Enter Student NIC" class="form-control" required="">
                        </div>
                        <div class="form-group mt-2">
                            <input type="submit" value="Add Student" name="btnSave" id="btnSave" class="btn btn-success btn-rounded">
                            <input type="reset" class="btn btn-warning btn-rounded">
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- import footer-->
        <%@ include file="../layout/footer.jsp" %>
    </body>
</html>
