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
        
        
        <title>User Dashboard</title>
    </head>
    
    <!--    Check if session empty or not-->
    <%
    if(session == null || session.getAttribute("user") == null){
        response.sendRedirect("login.jsp");
    }
    %> 
    
    <body>
        <!-- User page content here -->
        <h1>Welcome User!</h1>
        <a href="logout.jsp" class="btn btn-danger">logout</a>
        
        
    </body>
</html>