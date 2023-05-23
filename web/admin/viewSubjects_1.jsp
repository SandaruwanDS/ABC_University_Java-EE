<%@ page import="bean.Subject" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html>
    <head>

        <title>View Subjects</title>

    </head>
    <%
        if (session.getAttribute("UN") == null) {
            response.sendRedirect("index.jsp");
        }
    %>
    <body>
        <%@ include file="../layout/navbarAdminView.jsp" %>

        <div class="container" style=" background-size:cover;background-position:center;">

            <%--    display alert if success--%>
            <% if ("true".equals(request.getParameter("subDelFromDeg"))) { %>
            <div class="alert alert-danger" role="alert">
                Subject Deleted successfully !
            </div>
            <% } else if ("true".equals(request.getParameter("success"))) { %>
            <div class="alert alert-success" role="alert">
                Subjects Added successfully !
            </div>
            <%
                }
            %>

            <div class="card" style="background-color:rgba(255, 255, 255, 0.5)">
                <div class="card-header">
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

                    <!-- Degree name display-->
                    <div class="row">
                        <div class="col-sm">
                            <h4 class="align-items-center mt-3"> Subjects in ------ <ion-icon name="send-outline"></ion-icon> &nbsp;${degreeName}</h4>
                        </div>

                        <!--  subject add button-->
                        <div class="col-sm">
                            <form action="addSubjectToDegree" method="get">
                                <input type="hidden" name="degreeCode" value="${degreeCode}"/>
                                <input type="hidden" name="degreeName" value="${degreeName}"/>
                                <button type="submit" class="btn btn-success btn-rounded"><i class="fas fa-plus"></i>
                                    Add New Subject
                                </button>
                            </form>
                        </div>
                    </div>
                </div>

                <div class="card-body">

                    <table class="table table-dark">
                        <thead>
                            <tr>
                                <th>Subject Code</th>
                                <th>Subject Name</th>
                                <th>Subject Credits</th>
                                <th>Remove Subject from this degree</th>

                            </tr>
                        </thead>
                        <tbody>
                            <% for (Subject subject : (List<Subject>) request.getAttribute("subjectList")) {%>
                            <tr>
                                <td><%=subject.getSubjectCode()%>
                                </td>
                                <td><%=subject.getSubjectName()%>
                                </td>
                                <td><%=subject.getSubjectCredits()%>
                                </td>
                        <form method="get" action="deleteSubject">
                            <td>
                                <input type="hidden" name="subjectCode" value="<%= subject.getSubjectCode()%>"/>
                                <input type="hidden" name="degreeCode" value="${degreeCode}"/>
                                <input type="hidden" name="degreeName" value="${degreeName}"/>
                                <button type="submit" class="btn btn-danger btn-rounded">Remove&nbsp;&nbsp;
                                    <ion-icon name="remove-circle-outline"></ion-icon>
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
