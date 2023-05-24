<%-- 
    Document   : editSubject
    Created on : May 21, 2023, 11:35:03 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Edit Subject</title>

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
                Subject Updated Successfully !
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
                        <a class="btn btn-info btn-icon-text btn-rounded mb-2" href="viewAllSubjects">
                            <ion-icon name="arrow-back-outline"></ion-icon> &nbsp;  Back
                        </a>
                    </div>
                    <h4 class="align-items-center mt-3"> Edit Subject</h4>

                </div>
                <div class="card-body">
                    <form class="forms-sample "action="editSubject" method="post">

                        <div class="form-group mt-2">
                            <label for="subject_code"> Subject Code</label>
                            <input type="text" name="subject_code" id="subject_code" placeholder="Enter subject Code"
                                   class="form-control" value="${subjectCode}"
                                   required="" readonly>
                        </div>
                        <div class="form-group mt-2">
                            <label for="Subject_name"> Subject Name</label>
                            <input type="text" name="subject_name" id="Subject_name" placeholder="Enter Your Subject Name"
                                   class="form-control" value="${subjectName}">
                        </div>
                        <div class="form-group mt-2">
                            <label for="subject_credits"> Subject Credits</label>
                            <input type="text" name="subject_credits" id="subject_credits" placeholder="Enter Your Subject Credits"
                                   class="form-control" value="${subjectCredits}">
                        </div>

                        <div class="form-group mt-2">
                            <input type="submit" value="Save Details" name="btnSave" id="btnSave" class="btn btn-success btn-rounded">
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
