<%-- 
    Document   : editUser
    Created on : May 21, 2023, 11:35:03 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Edit User</title>

    </head>
    <%
        if (session.getAttribute("UN") == null) {
            response.sendRedirect("../index.jsp");
        }
    %>
    <body>

        <%@ include file="../layout/navbarAdminView.jsp" %>


        <div class="container" style="margin-top:0px;background-size:cover;background-position:center;padding: 20px;width: 1000px">

            <%--    display alert if success--%>
            <% if ("true".equals(request.getParameter("success"))) { %>
            <div class="alert alert-success" role="alert">
                User successfully added!
            </div>
            <% } else if ("false".equals(request.getParameter("success"))) { %>
            <div class="alert alert-danger" role="alert">
                Error!
            </div>
            <%
                }%>

            <div class="card" style="background-color:rgba(255, 255, 255, 0.5)">
                <div class="card-header">
                    <div class="container">
                        <a class="btn btn-primary btn-icon-text btn-rounded mb-2" href="viewUsers?.jsp">
                            <ion-icon name="arrow-back-outline"></ion-icon> &nbsp;  Back
                        </a>
                    </div>

                    Edit User
                </div>
                <div class="card-body">
                    <form class="forms-sample "action="EditUsers" method="post">
                        <div class="form-group mt-2">
                            <label for="userId">User ID</label>
                            <input type="text" name="userId" id="userId" placeholder="Enter Your ID" class="form-control"
                                   required="" readonly value="${userId}">
                        </div>
                        <div class="form-group mt-2">
                            <label for="userName">Name</label>
                            <input type="text" name="userName" id="userName" placeholder="Enter Your Name" class="form-control"
                                   required="" value="${userName}">
                        </div>
                        <div class="form-group mt-2">
                            <label for="userEmail">Email Address</label>
                            <input type="email" name="userEmail" id="userEmail" placeholder="Enter Your Email"
                                   class="form-control" value="${email}">
                        </div>
                        <div class="form-group mt-2">
                            <label for="userPhone">Phone Number</label>
                            <input type="text" name="userPhone" id="userPhone" placeholder="Enter Your Phone"
                                   class="form-control" value="${phone}">
                        </div>
                        <div class="form-group mt-2">
                            <label for="userNic">NIC Number</label>
                            <input type="text" name="userNic" id="userNic" placeholder="Enter Your NIC" class="form-control" value="${nic}">
                        </div>
                        <div class="form-group mt-2">
                            <input type="submit" value="Update User" name="btnSave" id="btnSave" class="btn btn-success">
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- import footer-->
        <%@ include file="../layout/footer.jsp" %>

    </body>
</html>
