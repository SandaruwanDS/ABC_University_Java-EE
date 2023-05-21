<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>--%>

<html>
<head>
<title>User Management </title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: blue">
			<div>
				<a href="list" class="navbar-brand"> User
					Management  </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Users</a></li>
			</ul>
		</nav>
	</header>
	<br>

	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center">List of Users</h3>
			<hr>
			<div class="container text-left">

				<a href="<%=request.getContextPath()%>/new" class="btn btn-success">Add New User</a>
			</div>
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>ID</th>
						<th>Name</th>
						<th>Email</th>
						<th>Phone</th>
						<th>NIC</th>
                                                <th>Password</th>
                                                <th>Role</th>
                                                <th>Action</th>
                                               
                                       
                                                
					</tr>
				</thead>
				<tbody>
				
					<c:forEach var="user" items="${listUser}">

						<tr>
							<td><c:out value="${user.userId}" /></td>
							<td><c:out value="${user.userName}" /></td>
							<td><c:out value="${user.userEmail}" /></td>
							<td><c:out value="${user.userPhone}" /></td>
                                                        <td><c:out value="${user.userNic}" /></td>
                                                        <td><c:out value="${user.userPwd}" /></td>
                                                        <td><c:out value="${user.userRole}" /></td>
							<td><a href="edit?userId=<c:out value='${user.userId}' />" class="btn btn-primary">Edit</a>
								&nbsp;&nbsp; <a
								href="delete?userId=<c:out value='${user.userId}' />" class="btn btn-danger">Delete</a></td>
						</tr>
					</c:forEach>
		
				</tbody>

			</table>
		</div>
	</div>
</body>
</html>