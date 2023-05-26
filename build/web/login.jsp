<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Login Page</title>


        <script type="text/javascript">
                function validateForm() {

                    var email = document.forms["loginForm"]["userEmail"].value;
                    var password = document.forms["loginForm"]["userPwd"].value;
                    var emailRegex = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;

                if (!emailRegex.test(email)) {
                    alert("Please enter a valid email address");
                    return false;
                }
                if (password.length < 5) {
                    alert("Please enter a valid Password");
                    return false;
                }
            }
        </script>

    
    
    
    
</head>
<body>

    <div class="container position-sticky z-index-sticky top-0">
        <div class="row">
            <div class="col-12">

                <!-- include navbar-->
    <%@ include file="layout/navbar.jsp" %>
      </div>
    </div>
    </div>

    <main class="main-content  mt-0">
        <section>
            <div class="page-header min-vh-75">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-4 col-lg-5 col-md-6 d-flex flex-column mx-auto">
                            <div class="card card-plain mt-8">
                                <div class="card-header pb-0 text-left bg-transparent">


                                    <div class="container">
                                        <%--    display alert if success--%>

                                        <% if (request.getAttribute("Message") != null) {
                                                if (request.getAttribute("success") != null) {
                                                    if (request.getAttribute("success").equals(true)) {
                                        %>
                                        <div class="alert alert-success" role="alert">
                                            <%= request.getAttribute("Message")%>
                                        </div>
                                        <script>
                                                // Clear success parameter from URL
                                                if (window.location.search.includes('Message','success')) {
                                                    history.replaceState({}, document.title, window.location.pathname);
                                                }
                                        </script>

                                        <% }
                                        } else {%>

                                        <div class="alert alert-danger" role="alert">
                                            <%= request.getAttribute("Message")%>
                                        </div>
                                        <% }
                                            }%>

                                    </div>


                                    <h3 class="font-weight-bolder text-info text-gradient">Welcome back</h3>
                                    <p class="mb-0">Enter your email and password to sign in</p>
                                </div>
                                <div class="card-body">
                                    <form action="loginController" method="POST" onsubmit=" return validateForm();" name="loginForm">
                                        <label>Email</label>
                                        <div class="mb-3">
                                            <input type="email" name="userEmail" id="userName" class="form-control" placeholder="Email"  aria-describedby="email-addon">
                                        </div>
                                        <label>Password</label>
                                        <div class="mb-3">
                                            <input type="password" name="userPwd" id="userPwd" class="form-control" placeholder="Password" aria-describedby="password-addon">
                                        </div>
                                        <div class="form-check form-switch">
                                            <input class="form-check-input" type="checkbox" id="rememberMe" checked="">
                                            <label class="form-check-label" for="rememberMe">Remember me</label>
                                        </div>
                                        <div class="text-center">
                                            <button type="submit" name="btnLogin" class="btn bg-gradient-info w-100 mt-4 mb-0">Sign in</button>
                                        </div>
                                    </form>
                                </div>
                                <div class="card-footer text-center pt-0 px-lg-2 px-1">
                                    <p class="mb-4 text-sm mx-auto">
                                        Don't have an account?
                                        <a href="register.jsp" class="text-info text-gradient font-weight-bold">Sign up</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">

                            <div class="oblique position-absolute top-0 h-100 d-md-block d-none me-n1">
                                <div class="oblique-image bg-cover  fixed-top ms-auto h-100 z-index-0 ms-n8" style="background-image:url('images/curved6.jpg')"></div>
                            </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>



    <%@ include file="layout/footer.jsp" %>

    <script src="js/core/popper.min.js"></script>
    <script src="js/core/bootstrap.min.js"></script>
           <script src="js/plugins/perfect-scrollbar.min.js"></script>
           <script src="js/plugins/smooth-scrollbar.min.js"></script>

           <!-- Github buttons -->
           <script async defer src="https://buttons.github.io/buttons.js"></script>
           <!-- Control Center for Soft Dashboard: parallax effects, scripts for the example pages etc -->
           <script src="js/soft-ui-dashboard.min.js?v=1.0.7"></script>

       </body>
</html>



