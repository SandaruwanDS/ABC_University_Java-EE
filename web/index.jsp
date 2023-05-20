<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index Page</title>


        <%@include file="components/styles.jsp" %>

    </head>
    <body>

        <!-- include navbar-->
            <div class="container position-sticky z-index-sticky top-0">
                <div class="row">
                    <div class="col-12">

                        <!-- include navbar-->
                        <%@ include file="layout/navbar.jsp" %>
                    </div>
                </div>
            </div>


        <div class="jumbotron p-3 p-md-5 text-white  rounded bg-dark mt-5"
             style="background-image: url('images/back_ground7.jpg'); background-size: cover;">
            <div class="col-md-6 px-0">
                <h1 class="display-4 font-italic fw-bold mt-5" style="color:white">Welcome to the ABC University!</h1>
                <p class="lead my-3">We are thrilled that you
                    have chosen to explore the opportunities
                    and resources available to you as a member of our academic community.</p>
                <p class="lead mb-0"><a href="#" class="text-white font-weight-bold">Continue reading...</a></p>
            </div>
        </div>


        <div class="container">
            <div class="row mb-2 ">

                <div class="col-md-3 mt-5 ">
                    <div class="card flex-md-row mb-4 box-shadow h-md-250" >
                        <div class="card-body d-flex flex-column align-items-start rounded  bg-dark" >
                            <strong class="d-inline-block mb-2 text-info">Courses</strong>
                            <h3 class="mb-0">
                                <a class="text-light" href="#">Top Courses</a>
                            </h3>
                            <div class="mb-1 text-muted">Feb 04</div>
                            <p class="card-text mb-auto">This is a...</p>
                            <a href="#">Continue reading</a>
                        </div>
                        <img class="card-img-right flex-auto d-none d-md-block" style="background-image: url('images/OIP.jpg'); background-size: cover;"
                             alt="Card image cap">
                    </div>
                </div>

                <div class="col-md-3 mt-5">
                    <div class="card flex-md-row mb-4 box-shadow h-md-250">
                        <div class="card-body d-flex flex-column align-items-start rounded  bg-dark">
                            <strong class="d-inline-block mb-2 text-danger">Teachers</strong>
                            <h3 class="mb-0">
                                <a class="text-light" href="#">Best Teachers</a>
                            </h3>
                            <div class="mb-1 text-muted">Feb 02</div>
                            <p class="card-text mb-auto">This is a ....</p>
                            <a href="#">Continue reading</a>
                        </div>
                        <img class="card-img-right flex-auto d-none d-md-block" style="background-image: url('images/OIP2.jpg'); background-size: cover;"
                             alt="Card image cap">
                    </div>
                </div>

                <div class="col-md-3 mt-5">
                    <div class="card flex-md-row mb-4 box-shadow h-md-250">
                        <div class="card-body d-flex flex-column align-items-start rounded  bg-dark">
                            <strong class="d-inline-block mb-2 text-warning">Gallery</strong>
                            <h3 class="mb-0">
                                <a class="text-light" href="#">Featured Gallery</a>
                            </h3>
                            <div class="mb-1 text-muted">Feb 02</div>
                            <p class="card-text mb-auto">This is a ...</p>
                            <a href="#">Continue reading</a>
                        </div>
                        <img class="card-img-right flex-auto d-none d-md-block" style="background-image: url('images/OIP3.jpg'); background-size: cover;"
                             alt="Card image cap">
                    </div>
                </div>

                <div class="col-md-3 mt-5">
                    <div class="card flex-md-row mb-4 box-shadow h-md-250">
                        <div class="card-body d-flex flex-column align-items-start rounded  bg-dark">
                            <strong class="d-inline-block mb-2 text-success">Services</strong>
                            <h3 class="mb-0">
                                <a class="text-light" href="#">Best Services</a>
                            </h3>
                            <div class="mb-1 text-muted">Feb 03</div>
                            <p class="card-text mb-auto">This is a ...</p>
                            <a href="#">Continue reading</a>
                        </div>
                        <img class="card-img-right flex-auto d-none d-md-block" style="background-image: url('images/OIP4.jpg'); background-size: cover;"
                             alt="Card image cap">
                    </div>
                </div>
            </div>
        </div>









    <!--        import footer-->
    <%@ include file="layout/footer.jsp" %>
    </body>
</html>
