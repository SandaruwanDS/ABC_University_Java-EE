<%@ page import="java.util.List" %>
<%@ page import="bean.Student" %>

<!DOCTYPE html>
<html>
    <head>

        <title>View Grades</title>

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
            <div class="alert alert-success" role="alert">
                Students Graded Successfully !
            </div>

            <script>
                       // Clear subDel parameter from URL
                       if (window.location.search.includes('success')) {
                           history.replaceState({}, document.title, window.location.pathname);
                       }
            </script>

            <% } else if ("false".equals(request.getParameter("success"))) { %>
            <div class="alert alert-danger" role="alert">
                Grading Failed!
            </div>
            <script>
                      // Clear subDel parameter from URL
                      if (window.location.search.includes('success')) {
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

                    <h4 class="align-items-center mt-3"> Subject &nbsp;&nbsp;&nbsp; &nbsp;
                    </ion-icon><ion-icon name="send-outline"></ion-icon> <ion-icon name="send-outline"></ion-icon>
                &nbsp;&nbsp;&nbsp;&nbsp;
                ${subjectCode}</h4>
            </div>
                <div class="card-body">
                    <table class="table">

                        <thead>
                            <tr>
                                <th>Student Number</th>
                                <th>Student Name</th>
                                <th>Current Grade</th>
                                <th>Select / Update Grade</th>

                            </tr>
                        </thead>
                        <tbody>
                            <% for (Student student : (List<Student>) request.getAttribute("students")) {%>
                            <tr>

                                <td><%=student.getNumber()%>
                                </td>
                                <td><%=student.getName()%>
                                </td>
                                <td><%=student.getGrade()%>
                                </td>

                        <form action="editGrade" method="post">
                            <td>
                                <label for="grade">Choose a Grade :</label>
                            <select name="grade" id="grade">
                                <option value="A+">A+</option>
                                <option value="A">A</option>
                                <option value="A-">A-</option>
                                <option value="B+">B+</option>
                                <option value="B">B</option>
                                <option value="B-">B-</option>
                                <option value="C+">C+</option>
                                <option value="C">C</option>
                                <option value="C-">C-</option>
                                <option value="D">D</option>
                                <option value="F">F</option>

                            </select>
                                &nbsp; &nbsp; &nbsp; &nbsp;
                                <input type="hidden" name="studentNumber" value="<%= student.getNumber()%>"/>
                                <input type="hidden" name="studentName" value="<%= student.getName()%>"/>
                                <button type="submit" class="btn  btn-rounded btn-outline-success">Update Grade</button>
                            </td>
                        </form>
                        <!--
                                                        <form method="get" action="studentGrade">
                            <td>
                                                                <input type="hidden" name="subjectCode" value="<%= student.getGrade()%>"/>
                                                                <button type="submit" class="btn btn-dark btn-rounded">Grade Students
                                                                    in <%= student.getGrade()%>
                                                                </button>
                            </td>
                                                        </form>-->

                        <% }%>
                        </tr>
                        </tbody>

                    </table>
                </div>
            </div>
        </div>
        <!-- import footer-->
        <%@ include file="../layout/footer.jsp" %>
        <script src=
                "https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js">
        </script>
        </body>
</html>
