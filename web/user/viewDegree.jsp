<%@ page import="bean.Degree" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html>
    <head>

        <title>View Degrees</title>

    </head>
    <%
        if (session.getAttribute("UN") == null) {
            response.sendRedirect("index.jsp");
        }
    %>
    <body>
        <%@ include file="../layout/navbarUserView.jsp" %>

        <div class="container" style=" background-size:cover;background-position:center;">

            <%--    display alert if success--%>
            <% if ("true".equals(request.getParameter("success"))) { %>
            <div class="alert alert-danger" role="alert">
                Degree Deleted successfully !
            </div>

            <script>
            // Clear success parameter from URL
            if (window.location.search.includes('success')) {
                history.replaceState({}, document.title, window.location.pathname);
            }
            </script>

            <% } else if ("true".equals(request.getParameter("editSuccess"))) { %>
            <div class="alert alert-primary" role="alert">
                Degree Updated successfully !
            </div>
            <script>
            // Clear success parameter from URL
            if (window.location.search.includes('editSuccess')) {
                history.replaceState({}, document.title, window.location.pathname);
            }
            </script>

            <% } else if ("true".equals(request.getParameter("subDelFromDeg"))) { %>
            <div class="alert alert-warning" role="alert">
                Subject deleted from the degree!
            </div>
            <script>
           // Clear success parameter from URL
                if (window.location.search.includes('subDelFromDeg')) {
                    history.replaceState({}, document.title, window.location.pathname);
                }
            </script>

            <%
                }
            %>

            <div class="card" style="background-color:rgba(255, 255, 255, 0.5)">
                <div class="card-header">

                    <div class="row">
                        <div class="col-sm">
                            <a class="btn btn-info btn-icon-text btn-rounded mb-2" href="user/home.jsp">
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



                    <h4 class="align-items-center mt-3"> Degrees</h4>


                </div>
                <div class="card-body">
                    <table class="table">

                        <thead>
                            <tr>
                                <th>Code</th>
                                <th>Name</th>
                                <th>Duration (years)</th>
                                <th>Credits</th>

                                <th>Add Subjects</th>

                            </tr>
                        </thead>
                        <tbody>
                            <% for (Degree degree : (List<Degree>) request.getAttribute("degrees")) {%>
                            <tr>
                                <td><%=degree.getDegreeCode()%>
                                </td>
                                <td><%=degree.getDegreeName()%>
                                </td>
                                <td><%=degree.getDegreeDuration()%>
                                </td>
                                <td><%=degree.getDegreeCredits()%>
                                </td>

                        <form method="get" action="addSubjectToDegree">
                            <td>
                                <input type="hidden" name="degreeCode" value="<%= degree.getDegreeCode()%>"/>
                                <input type="hidden" name="degreeName" value="<%= degree.getDegreeName()%>"/>
                                <button type="submit" class="btn btn-success btn-rounded">
                                    <ion-icon name="layers-outline"></ion-icon> &nbsp; Add Subjects
                                </button>
                            </td>
                        </form>




                        <% }%>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <!-- import footer-->
        <%@ include file="../layout/footer.jsp" %>
    </body>
</html>
