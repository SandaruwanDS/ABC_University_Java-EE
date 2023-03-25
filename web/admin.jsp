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
        
        
        <title>Admin Dashboard</title>
    </head>
    
    <!--    Check if session empty or not-->
    <%
    if(session == null || session.getAttribute("admin") == null){
        response.sendRedirect("login.jsp");
    }
    %> 
    
    <body>
        <!-- Admin page content here -->
        <h1>Welcome Admin !</h1>
        <a href="logout.jsp" class="btn btn-danger">logout</a>
                

    </body>
</html>

