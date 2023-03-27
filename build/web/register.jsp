<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Register Page</title>
    <!-- Link bootstrap css -->
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <!-- Link jquery and Javascript -->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    
    
<!--    Register Form validation-->
     
     <script type="text/javascript">
            function validateForm() {
                var name = document.forms["registerForm"]["userName"].value;
                var email = document.forms["registerForm"]["userEmail"].value;
                var password = document.forms["registerForm"]["userPwd"].value;
                var phone = document.forms["registerForm"]["userPhone"].value;
                var nic = document.forms["registerForm"]["userNic"].value;
                var nameRegex = /^[a-zA-Z ]+$/;
                var emailRegex = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
                var phoneRegex = /^\d{10}$/;
                var nicRegex = /^[0-9]{9}[vVxX]$/;
                if (!nameRegex.test(name)) {
                    alert("Please enter a valid name");
                    return false;
                }
                if (!emailRegex.test(email)) {
                    alert("Please enter a valid email address");
                    return false;
                }
                if (password.length < 8) {
                    alert("Password must be at least 8 characters long");
                    return false;
                }
                if (!phoneRegex.test(phone)) {
                    alert("Please enter a valid phone number");
                    return false;
                }
                if (!nicRegex.test(nic)) {
                    alert("Please enter a valid NIC number");
                    return false;
                }
            }
        </script>
    
    
    
    
    
    
</head>
<body style="background-image:url('images/Boat.jpg');">
    <div class="container" style="margin-top:80px;background-size:cover;background-position:center;padding-left:20px;padding-top:20px;padding-right:20px;padding-bottom:20px">
                <div class="card" style="background-color:rgba(255, 255, 255, 0.5)">
                <div class="card-header">
                    Registration View
                </div>
                <div class="card-body">
                    
                    <!-- onsubmit="return validateForm();"-->
                    
                    <form action="registerController" method="POST" onsubmit=" return validateForm();" name="registerForm">
                        <div class="form-group mt-2">
                            <label for="">Enter Your Name</label>
                            <input type="text" name="userName" id="userName" placeholder="Enter Your Name" class="form-control" required="">
                        </div>
                        <div class="form-group mt-2">
                            <label for="">Enter Your Email Address</label>
                            <input type="email" name="userEmail" id="userEmail" placeholder="Enter Your Email" class="form-control">
                        </div>
                        <div class="form-group mt-2">
                            <label for="">Please Enter Your Password</label>
                            <input type="password" name="userPwd" id="userPwd" placeholder="Enter Your Password" class="form-control">
                        </div>
                        <div class="form-group mt-2">
                            <label for="">Please Enter Your Phone Number</label>
                            <input type="text" name="userPhone" id="userPhone" placeholder="Enter Your Phone" class="form-control">
                        </div>
                        <div class="form-group mt-2">
                            <label for="">Please Enter Your NIC Number</label>
                            <input type="text" name="userNic" id="userNic" placeholder="Enter Your NIC" class="form-control">
                        </div>
                        <div class="form-group mt-2">
                            <input type="submit" name="btnSave" id="btnsave" class="btn btn-success btn-sm">
                            <input type="reset" class="btn btn-danger btn-sm">
                            <input type="button" value="Login" name="CreateCourse" class="btn btn-warning btn-sm"
                            onclick="window.location='login.jsp'" />
                        </div>
                    </form>
                </div>
                </div>
           </div>
       </div>
    </div>
</body>
</html>