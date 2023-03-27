<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Login Page</title>
    <!-- Link bootstrap css -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Link jquery and Javascript -->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    
    <script type="text/javascript">
            function validateForm() {
                
                var email = document.forms["loginForm"]["userEmail"].value;
                var password = document.forms["loginForm"]["userPwd"].value;
                var emailRegex = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
                            
                if (!emailRegex.test(email)) {
                    alert("Please enter a valid email address");
                    return false;
                }
                if (password.length < 8) {
                    alert("Please enter a valid Password");
                    return false;
                }
                
            }
        </script>
    
    
    
    
    
</head>
<body>
    <div class="container" style="margin-top:80px;background-image:url('images/Boat.jpg');background-size:cover;background-position:center;padding-left:20px;padding-top:20px;padding-right:20px;padding-bottom:20px">
       <div class="row">
           <div class="col-md-6">
           <div class="card text-dark  mb-3" style="background-color:rgba(255, 255, 255, 0.9)">
                <div class="card-header">
                   Login Section
                </div>
                <div class="card-body">
                   <form action="loginController" method="POST" onsubmit=" return validateForm();" name="loginForm">
                       <div class="form-group mt-3">
                            <label for="">Enter Your Email</label>
                            <input type="text" name="userEmail" id="userName" class="form-control" placeholder="Enter Your Email">
                       </div>

                        <div class="form-group mt-3">
                            <label for="">Enter Your Password</label>
                           <input type="password" name="userPwd" id="userPwd" class="form-control" placeholder="Enter Your Password"> 
                        </div>

                        <div class="form-group mt-3">
                            <input type="submit" class="btn btn-primary btn-sm" name="btnLogin" style="background-color: black;">
                            <input type="reset" class="btn btn-outline-warning btn-sm">
                            <a class="btn btn-primary" href="index.jsp" role="button">Home</a>
                            <a class="btn btn-primary" href="register.jsp" role="button" 
                               onclick="window.location='register.jsp'">Register</a>
                        </div>
                   </form>
                </div>
                </div>
           </div>
</body>
</html>



