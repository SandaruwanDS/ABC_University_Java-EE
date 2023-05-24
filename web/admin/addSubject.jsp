<%-- 
    Document   : addSubject
    Created on : May 21, 2023, 10:58:12 AM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Add Subject</title>

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
                Subject Added successfully !
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


                    <h4 class="align-items-center mt-3"> Add New Subject</h4>
                </div>
                <div class="card-body">
                    <form class="forms-sample "action="../addSubject" method="post">

                        <div class="form-group mt-2">
                            <label for="subject_code"> Subject Code</label>
                            <input type="text" name="subject_code" id="subject_code" placeholder="Enter subject Code"
                                   class="form-control" required="">
                        </div>
                        <div class="form-group mt-2">
                            <label for="Subject_name"> Subject Name</label>
                            <input type="text" name="subject_name" id="Subject_name" placeholder="Enter Your Subject Name"
                                   class="form-control">
                        </div>
                        <div class="form-group mt-2">
                            <label for="subject_credits"> Subject Credits</label>
                            <input type="text" name="subject_credits" id="subject_credits"
                                   placeholder="Enter Your Subject Credits"
                                   class="form-control">
                        </div>

                        <div class="form-group mt-2">
                            <input type="submit" value="Add Subject" name="btnSave" id="btnSave"
                                   class="btn btn-success btn-rounded">
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
