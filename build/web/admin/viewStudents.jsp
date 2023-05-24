<%-- 
    Document   : viewStudents
    Created on : May 21, 2023, 10:52:15 AM
    Author     : PC
--%>
<%@ page import="bean.Student" %>
<%@ page import="java.util.List" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Students</title>

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
                Student Deleted Successfully !
            </div>

            <script>
            // Clear success parameter from URL
            if (window.location.search.includes('success')) {
                history.replaceState({}, document.title, window.location.pathname);
            }
            </script>

            <% } else if ("true".equals(request.getParameter("editSuccess"))) { %>
            <div class="alert alert-primary" role="alert">
                Student Updated Successfully !
            </div>
            <script>
            // Clear editSuccess parameter from URL
            if (window.location.search.includes('editSuccess')) {
                history.replaceState({}, document.title, window.location.pathname);
            }
            </script>
            <%
                }
            %>

            <div class="card" style="background-color:rgba(255, 255, 255, 0.5)">
                <div class="card-header">
                    <div class="container">

                        <div class="row">
                            <div class="col-sm">
                                <a class="btn btn-info btn-icon-text btn-rounded mb-2" href="admin/admin.jsp">
                                    <ion-icon name="arrow-back-outline"></ion-icon> &nbsp;  Back
                                </a>
                            </div>
                            <div class="col-sm">
                                <div class="input-group pe-md-3 d-flex align-items-right" >
                                    <span class="input-group-text text-body"><i class="fas fa-search" aria-hidden="true"></i></span>
                                    <input type="text" class="form-control" placeholder="Type here...">
                                </div>
                            </div>

                        </div>


                    </div>

                    <h4 class="align-items-center mt-3">Students</h4>

                </div>
                <div class="card-body">
                    <table class="table ">
                        <tr>
                            <th>Student Registration Number</th>
                            <th>Student Name</th>
                            <th>Student Email</th>
                            <th>Student NIC</th>
                            <th>Student Phone Number</th>
                            <th>Edit</th>
                            <th>Delete</th>
                        </tr>
                        <tbody>

                            <% for (Student student : (List<Student>) request.getAttribute("students")) {%>
                            <tr>
                                <td><%= student.getNumber()%>
                                </td>
                                <td><%= student.getName()%>
                                </td>
                                <td><%= student.getEmail()%>
                                </td>
                                <td><%= student.getNic()%>
                                </td>
                                <td><%= student.getPhone()%>
                                </td>
                        <form method="post" action="editStudentForm">
                            <td>
                                <input type="hidden" name="studentId" value="<%= student.getId()%>"/>
                                <button type="submit" class="btn btn-warning btn-rounded btn-rounded ">Edit&nbsp;&nbsp; <i class="fa fa-edit"></i></button>
                            </td>
                        </form>

                        <form method="get" action="deleteStudent">
                            <td>
                                <input type="hidden" name="studentId" value="<%= student.getId()%>"/>
                                <button type="submit" class="btn btn-danger btn-rounded btn-rounded">Delete&nbsp;&nbsp; <i class="fa fa-trash-alt"></i></button>
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
