<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index Page</title>
        <!-- Link bootstrap css -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- Link jquery and Javascript -->
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
         <link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
        
        <title>User Dashboard</title>
    </head>
    
    <!--    Check if session empty or not-->
    <%
        if (session.getAttribute("UN") == null) {
            response.sendRedirect("../login.jsp");
        }
    %>

    <body>
        <!-- User page content here -->
        <h1>Welcome User!</h1>
        <a href="logout.jsp" class="btn btn-danger">logout</a>
        
        
    </body>
</html>