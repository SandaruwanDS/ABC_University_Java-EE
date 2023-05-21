<%-- 
    Document   : addUsers
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
                User successfully added!
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
                        <a class="btn btn-primary btn-icon-text btn-rounded mb-2" href="admin.jsp">
                            <ion-icon name="arrow-back-outline"></ion-icon> &nbsp;  Back
                        </a>
                    </div>

                    Add Student
                </div>
                <div class="card-body">
                    <form class="forms-sample "action="../addStudent" method="post">
                        <div class="form-group mt-2">
                            <label for="userName">Student Name</label>
                            <input type="text" name="userName" id="userName" placeholder="Enter Your Name" class="form-control">
                        </div>
                        <div class="form-group mt-2">
                            <label for="userEmail">Student Email Address</label>
                            <input type="email" name="userEmail" id="userEmail" placeholder="Enter Your Email"
                                   class="form-control" required="">
                        </div>

                        <div class="form-group mt-2">
                            <label for="userPhone">Student Contact Number</label>
                            <input type="text" name="userPhone" id="userPhone" placeholder="Enter Your Phone"
                                   class="form-control">
                        </div>
                        <div class="form-group mt-2">
                            <label for="userNic">Student NIC Number</label>
                            <input type="text" name="userNic" id="userNic" placeholder="Enter Your NIC" class="form-control">
                        </div>
                        <div class="form-group mt-2">
                            <input type="submit" value="Add Student" name="btnSave" id="btnSave" class="btn btn-success">
                            <input type="reset" class="btn btn-warning">
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- import footer-->
        <%@ include file="../layout/footer.jsp" %>
    </body>
</html>
