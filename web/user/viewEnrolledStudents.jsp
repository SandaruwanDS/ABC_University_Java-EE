<%@ page import="bean.Subject" %>
<%@ page import="java.util.List" %>
<%@ page import="bean.Student" %>

<!DOCTYPE html>
<html>
    <head>

        <title>Enrolled Student</title>

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
            <% if ("true".equals(request.getParameter("subDel"))) { %>
            <div class="alert alert-danger" role="alert">
                Student Deleted successfully !
            </div>
            <script>
                   // Clear subDel parameter from URL
                   if (window.location.search.includes('subDel')) {
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
                            <a class="btn btn-info btn-icon-text btn-rounded mb-2" href="viewUserSubject">
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



                    <h4 class="align-items-center mt-3"> Enrolled Students &nbsp;&nbsp;&nbsp; &nbsp;
                    </ion-icon><ion-icon name="send-outline"></ion-icon> <ion-icon name="send-outline"></ion-icon>

                &nbsp;&nbsp;&nbsp;&nbsp;${subjectCode}</h4>


                </div>
                <div class="card-body">
                    <table class="table">

                        <thead>
                            <tr>
                                <th>Student Number</th>
                                <th>Student Name</th>
                                <th>Remove Students</th>

                            </tr>
                        </thead>
                        <tbody>
                            <% for (Student studentSubject : (List<Student>) request.getAttribute("studentSubjects")) {%>
                            <tr>
                                <td><%=studentSubject.getNumber()%>
                                </td>
                                <td><%=studentSubject.getName()%>
                                </td>

                        <form method="get" action="deleteStudentFromSubject">
                            <td>
                                <input type="hidden" name="studentNumber" value="<%=studentSubject.getNumber()%>"/>
                                <input type="hidden" name="subjectCode" value="${subjectCode}"/>
                                <button type="submit" class="btn btn-danger btn-rounded">Remove Student&nbsp; <i class="fa fa-trash-alt"></i></button>
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
