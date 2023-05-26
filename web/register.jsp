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
     <link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
    
    
<!--    Register Form validation-->
     
     <script type="text/javascript">
            function validateForm() {
                var name = document.forms["registerForm"]["userName"].value;
                var email = document.forms["registerForm"]["userEmail"].value;
                var password = document.forms["registerForm"]["userPwd"].value;
                var phone = document.forms["registerForm"]["userPhone"].value;
                var nic = document.forms["registerForm"]["userNic"].value;
               // var nameRegex = /^[a-zA-Z ]+$/;
                var emailRegex = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
                var phoneRegex = /^\d{10}$/;
                //var nicRegex = /^[0-9]{9}[vVxX]$/;
                if (name.length < 4) {
                    alert("Please enter a valid name");
                    return false;
                }
                if (!emailRegex.test(email)) {
                    alert("Please enter a valid email address");
                    return false;
                }
                if (password.length < 5) {
                    alert("Password must be at least 8 characters long");
                    return false;
                }
                if (!phoneRegex.test(phone) || phone.length != 10 ) {
                    alert("Please enter a valid phone number");
                    return false;
                }
                if (nic.length < 10) {
                    alert("Please enter a valid NIC number");
                    return false;
                }
            }
        </script>
    
    
    
    
    
    
</head>
<body >
    <div class="container position-sticky z-index-sticky top-0">
        <div class="row">
            <div class="col-12">

                <!-- include navbar-->
                <%@ include file="layout/navbar.jsp" %>
            </div>
        </div>
    </div>

                <%--    display alert if success--%>
                <% if ("true".equals(request.getParameter("success"))) { %>
                <div class="alert alert-success" role="alert">
                    User Registration successfully !
                </div>
                <script>
               // Clear success parameter from URL
               if (window.location.search.includes('success')) {
                   history.replaceState({}, document.title, window.location.pathname);
               }
                </script>
                <% } else if ("false".equals(request.getParameter("success"))) { %>
                <div class="alert alert-danger" role="alert">
                    Error!
                </div>
                <%
                }%>




            <main class="main-content  mt-0">
                <section class="min-vh-100 mb-8">
                    <div class="page-header align-items-start min-vh-50 pt-5 pb-11 m-3 border-radius-lg" style="background-image: url('images/curved6.jpg');">
                        <span class="mask bg-gradient-dark opacity-6"></span>
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-lg-5 text-center mx-auto">
                                    <h1 class="text-white mb-2 mt-3">Welcome!</h1>
                                    <p class="text-lead text-white">Use these forms to create new account</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="container mt-0">
                        <div class="row mt-lg-n10 mt-md-n11 mt-n2 mt-2">
                            <div class="col-xl-4 col-lg-5 col-md-7 mx-auto">
                                <div class="card z-index-0">

                                    <div class="card-body">
                                        <form action="registerController" method="POST" onsubmit=" return validateForm();" name="registerForm">

                                            <div class="form-group">
                                                <label for="">Name</label>
                                                <input type="text" name="userName" id="userName" placeholder="Enter Your Name" class="form-control" required="">
                                            </div>
                                            <div class="form-group mt-2">
                                                <label for="">Email </label>
                                                <input type="email" name="userEmail" id="userEmail" placeholder="Enter Your Email" class="form-control">
                                            </div>
                                            <div class="form-group mt-2">
                                                <label for="">Password</label>
                                                <input type="password" name="userPwd" id="userPwd" placeholder="Enter Your Password" class="form-control">
                                            </div>
                                            <div class="form-group mt-2">
                                                <label for="">Phone Number</label>
                                                <input type="text" name="userPhone" id="userPhone" placeholder="Enter Your Phone" class="form-control">
                                            </div>
                                            <div class="form-group mt-2">
                                                <label for="">NIC Number</label>
                                                <input type="text" name="userNic" id="userNic" placeholder="Enter Your NIC" class="form-control">
                                            </div>


                                            <div class="form-check form-check-info text-left">
                                                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" checked>
                                                <label class="form-check-label" for="flexCheckDefault">
                                                    I agree the <a href="javascript:;" class="text-dark font-weight-bolder">Terms and Conditions</a>
                                                </label>
                                            </div>
                                            <div class="text-center">
                                                <button type="submit" name="btnSave" id="btnsave" class="btn bg-gradient-dark w-100 my-4 mb-2">Sign up</button>
                                            </div>
                                            <p class="text-sm mt-3 mb-0">Already have an account? <a href="login.jsp" class="text-dark font-weight-bolder">Sign in</a></p>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>

                <!--        import footer-->
<%@ include file="layout/footer.jsp" %>
</main>
</body>
</html>