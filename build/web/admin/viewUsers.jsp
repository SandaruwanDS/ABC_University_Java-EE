<%-- 
    Document   : viewUsers
    Created on : May 21, 2023, 10:52:15 AM
    Author     : PC
--%>
<%@ page import="bean.User" %>
<%@ page import="java.util.List" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Users</title>

    </head>
    <%
        if (session.getAttribute("UN") == null) {
            response.sendRedirect("index.jsp");
        }
    %>
    <body>
        <!-- partial:partials/_navbar.html -->
        <%@ include file="../layout/navbarAdminView.jsp" %>



        <div class="container" style="margin-top:0px;background-size:cover;background-position:center;">
            <%--    display alert if success--%>
            <% if ("true".equals(request.getParameter("success"))) { %>
            <div class="alert alert-danger" role="alert">
                User successfully Deleted!
            </div>
            <% } else if ("true".equals(request.getParameter("editSuccess"))) { %>
            <div class="alert alert-primary" role="alert">
                User successfully Updated!
            </div>
            <%
                }
            %>

            <div class="card" style="background-color:rgba(255, 255, 255, 0.5)">
                <div class="card-header">
                    <div class="container">
                        <a class="btn btn-primary btn-icon-text btn-rounded mb-2" href="admin/admin.jsp">
                            <ion-icon name="arrow-back-outline"></ion-icon> &nbsp;  Back
                    </a>
                </div>

                    Users
                </div>
                <div class="card-body">
                    <table class="table ">
                        <tr>
                            <th>User ID</th>
                            <th>Username</th>
                            <th>Email</th>
                            <th>NIC</th>
                            <th>Phone Number</th>
                            <th>Edit</th>
                            <th>Delete</th>
                        </tr>
                        <tbody>

                            <% for (User user : (List<User>) request.getAttribute("users")) {%>
                            <tr>
                                <td><%= user.getId()%>
                                </td>
                                <td><%= user.getName()%>
                                </td>
                                <td><%= user.getEmail()%>
                                </td>
                                <td><%= user.getNic()%>
                                </td>
                                <td><%= user.getPhone()%>
                                </td>
                        <form method="post" action="editUserForm">
                            <td>
                                <input type="hidden" name="userId" value="<%= user.getId()%>"/>
                                <button type="submit" class="btn btn-warning btn-rounded ">Edit&nbsp;&nbsp; <i class="fa fa-edit"></i></button>
                            </td>
                        </form>

                        <form method="post" action="deleteUserController">
                            <td>
                                <input type="hidden" name="userId" value="<%= user.getId()%>"/>
                                <button type="submit" class="btn btn-danger btn-rounded ">Delete&nbsp;&nbsp; <i class="fa fa-trash-alt"></i></button>
                            </td>
                        </form>


                        </tr>
                        <% }%>
                        </tbody>
                    </table>
                </div>
            </div>













            <!-- import footer-->
            <%@ include file="../layout/footer.jsp" %>


    </body>
</html>
