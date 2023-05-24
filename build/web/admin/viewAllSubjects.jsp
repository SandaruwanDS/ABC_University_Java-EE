<%@ page import="bean.Subject" %>
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
        <%@ include file="../layout/navbarAdminView.jsp" %>

        <div class="container" style=" background-size:cover;background-position:center;">

            <%--    display alert if success--%>
            <% if ("true".equals(request.getParameter("subDel"))) { %>
            <div class="alert alert-danger" role="alert">
                Subject Deleted successfully !
            </div>
            <script>
                   // Clear subDel parameter from URL
                   if (window.location.search.includes('subDel')) {
                       history.replaceState({}, document.title, window.location.pathname);
                   }
            </script>

            <% } else if ("true".equals(request.getParameter("editSuccess"))) { %>
            <div class="alert alert-primary" role="alert">
                Subject Updated successfully !
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



                    <h4 class="align-items-center mt-3"> All Subjects</h4>


                </div>
                <div class="card-body">
                    <table class="table">

                        <thead>
                            <tr>
                                <th>Subject Code</th>
                                <th>Subject Name</th>
                                <th>Subject Credits</th>
                                <th>Delete Subject</th>
                                <th>Edit Subject</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% for (Subject subject : (List<Subject>) request.getAttribute("subjects")) {%>
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
                                <button type="submit" class="btn btn-danger btn-rounded">Delete&nbsp;&nbsp; <i class="fa fa-trash-alt"></i>
                                </button>
                            </td>
                        </form>
                        <form method="post" action="editSubjectForm">
                            <td>
                                <input type="hidden" name="subjectCode" value="<%= subject.getSubjectCode()%>"/>
                                <button type="submit" class="btn btn-warning btn-rounded">Edit&nbsp;&nbsp; <i class="fa fa-edit"></i></button>
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
