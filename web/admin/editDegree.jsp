<%-- 
    Document   : editDegree
    Created on : May 21, 2023, 11:35:03 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Edit Degree</title>

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
                        <a class="btn btn-info btn-icon-text btn-rounded mb-2" href="viewDegree">
                            <ion-icon name="arrow-back-outline"></ion-icon> &nbsp;  Back
                        </a>
                    </div>
                    <h4 class="align-items-center mt-3"> Edit Degree</h4>

                </div>
                <div class="card-body">
                    <form class="forms-sample "action="editDegree" method="post">
                        <div class="form-group mt-2">
                            <label for="degree_code"> Degree Code</label>
                            <input type="text" name="degree_code" id="degree_code" placeholder="Enter degree Code"
                                   class="form-control" value="${degreeCode}"
                                   required="" readonly>
                        </div>
                        <div class="form-group mt-2">
                            <label for="Degree_name"> Degree Name</label>
                            <input type="text" name="degree_name" id="Degree_name" placeholder="Enter Your Degree Name"
                                   class="form-control" value="${degreeName}">
                        </div>

                        <div class="form-group mt-2">
                            <label for="degree_duration"> Degree Duration (Years)</label>
                            <input type="text" name="degree_duration" id="degree_duration" placeholder="Enter Degree Duration"
                                   class="form-control" value="${degreeDuration}">
                        </div>
                        <div class="form-group mt-2">
                            <label for="degree_credits"> Degree Credits</label>
                            <input type="text" name="degree_credits" id="degree_credits" placeholder="Enter Your Degree Credits"
                                   class="form-control" value="${degreeCredits}">
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
