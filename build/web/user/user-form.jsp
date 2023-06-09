

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>User Management </title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">


    <script type="text/javascript">
            function validateForm() {
                var name = document.forms["registerForm"]["userName"].value;
                var email = document.forms["registerForm"]["userEmail"].value;
                var phone = document.forms["registerForm"]["userPhone"].value;
                var nic = document.forms["registerForm"]["userNic"].value;
                var password = document.forms["registerForm"]["userPwd"].value;
                var nameRegex = /^[a-zA-Z ]+$/;
                var emailRegex = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
                var phoneRegex = /^\d{10}$/;
               // var nicRegex = /^[0-9]{9}[vVxX]$/;
                if (!nameRegex.test(name)) {
                    alert("Please enter a valid name");
                    return false;
                }
                if (!emailRegex.test(email)) {
                    alert("Please enter a valid email address");
                    return false;
                }
                
                if (!phoneRegex.test(phone)) {
                    alert("Please enter a valid phone number");
                    return false;
                }
                if (nic.length < 10) {
                    alert("Please enter a valid NIC number");
                    return false;
                }
                if (password.length < 8) {
                    alert("Password must be at least 8 characters long");
                    return false;
                }
            }
        </script>




</head>
<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: blue">
			<div>
				<a href="list" class="navbar-brand"> User Management </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Users</a></li>
			</ul>
		</nav>
	</header>
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${user != null}">
					<form action="update" method="post" onsubmit=" return validateForm(); " name="registerForm" >
				</c:if>
				<c:if test="${user == null}">
					<form action="insert" method="post" onsubmit=" return validateForm();"name="registerForm" >
				</c:if>

				<caption>
					<h2>
						<c:if test="${user != null}">
            			Edit User
            		</c:if>
						<c:if test="${user == null}">
            			Add New User
            		</c:if>
					</h2>
				</caption>

				<c:if test="${user != null}">
					<input type="hidden"  value="<c:out value='${user.userId}' />" name="userId">
				</c:if>

                      
                                        
				<fieldset class="form-group">
					<label>User Name</label> <input type="text"
						value="<c:out value='${user.userName}' />" class="form-control"
						name="userName" id="userName" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>User Email</label> <input type="email"
						value="<c:out value='${user.userEmail}' />" class="form-control"
						name="userEmail" id="userEmail" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>User Phone</label> <input type="text"
						value="<c:out value='${user.userPhone}' />" class="form-control"
						name="userPhone" required="required">
				</fieldset>
                                                
                                <fieldset class="form-group">
					<label>User NIC</label> <input type="text"
						value="<c:out value='${user.userNic}' />" class="form-control"
						name="userNic" required="required">
				</fieldset>
                                
                                <fieldset class="form-group">
					<label>User Password</label> <input type="password"
						value="<c:out value='${user.userPwd}' />" class="form-control"
						name="userPwd" required="required">
				</fieldset>

				<button type="submit" class="btn btn-success">Save</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>