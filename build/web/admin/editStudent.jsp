<%-- 
    Document   : editStudent
    Created on : May 21, 2023, 11:35:03 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Edit Student</title>

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
                Student Updated Successfully !
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
                        <a class="btn btn-info btn-icon-text btn-rounded mb-2" href="viewStudents?.jsp">
                            <ion-icon name="arrow-back-outline"></ion-icon> &nbsp;  Back
                        </a>
                    </div>
                    <h4 class="align-items-center mt-3"> Edit Student</h4>

                </div>
                <div class="card-body">
                    <form class="forms-sample "action="editStudent" method="post">
                        <div class="form-group mt-2">
                            <label for="studentNumber">Student Number</label>
                            <input type="text" name="studentNumber" id="studentNumber" placeholder="Student Number" class="form-control"
                                   required="" readonly value="${studentNumber}">
                        </div>
                        <div class="form-group mt-2">
                            <label for="studentName">Enter Student Name</label>
                            <input type="text" name="studentName" id="studentName" placeholder="Enter Student Name" class="form-control"
                                   required="" value="${studentName}">
                        </div>
                        <div class="form-group mt-2">
                            <label for="studentEmail">Enter Student Email Address</label>
                            <input type="email" name="studentEmail" id="studentEmail" placeholder="Enter Student Email"
                                   class="form-control" value="${studentEmail}">
                        </div>
                        <div class="form-group mt-2">
                            <label for="studentPhone">Please Enter Student Phone Number</label>
                            <input type="text" name="studentPhone" id="studentPhone" placeholder="Enter Student Phone"
                                   class="form-control" value="${studentPhone}">
                        </div>
                        <div class="form-group mt-2">
                            <label for="studentNic">Please Enter Student NIC Number</label>
                            <input type="text" name="studentNic" id="studentNic" placeholder="Enter Student NIC" class="form-control" value="${studentNic}">
                        </div>
                        <div class="form-group mt-2">
                            <input type="hidden" value="${studentId}" name="studentId">
                            <input type="submit" value="Update Student" name="btnSave" id="btnSave" class="btn btn-success btn-rounded">
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
