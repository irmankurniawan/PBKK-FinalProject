<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    	<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
		<title>Registration - D&amp;C Daycare</title>
		<meta name="theme-color" content="#ba68c8">
		<style>
			.icon-block {padding: 0 15px;}
			.icon-block .material-icons {font-size: inherit;}
			.sidenav-overlay {z-index:995;}
</style>
	</head>
	<body>
		<jsp:include page="include/navbar.jsp" />

		<div class="section purple lighten-2" id="index-banner">
			<div class="container">
				<h1 class="header center yellow-text text-lighten-2">C&amp;D Registration</h1>
			</div>
		</div>

		<div class="section purple lighten-2">
		<div class="container">
			<div class="row">
			<div class="container">
				<div class="col s12 m2 l2"></div>
				<div class="col s12 m8 l8">
					<div class="card grey lighten-5">
						<div class="card-content grey-text text-darken-4">
							<span class="card-title">Registration Form</span>
							<form:form method="POST" action="addMember" modelAttribute="member">
								<div class="row" style="margin-bottom:0;">
									<div class="input-field col s12">
										<form:input path="memberName"/>
          								<form:label path="memberName">Nama Lengkap</form:label>          								
									</div>
									<div class="input-field col s12">
										<form:input path="memberEmail"/>
          								<form:label path="memberEmail">Email</form:label>          								
									</div>
									<div class="input-field col s12">
										<form:input path="memberUname"/>
          								<form:label path="memberUname">Username</form:label>          								
									</div>
									<div class="input-field col s12">
										<form:input path="memberPhone"/>
          								<form:label path="memberPhone">Phone Number</form:label>          								
									</div>
									<div class="input-field col s12">
										<form:input type="password" path="memberPassword"/>
          								<form:label path="memberPassword">Password</form:label>          								
									</div>
									<div class="input-field col s12 center">
										<button class="btn purple waves-effect waves-light" type="submit">Register
										    <i class="material-icons right">send</i>
										</button>
									</div>
									<div class="input-field col s12 center">
										<span>Already have an account? <a href="login" class="purple-text">Login here</a></span>
									</div>
								</div>
							</form:form>
						</div>
					</div>
				</div>
				<div class="col s12 m2 l2"></div>
			</div>
			</div>
		</div>
		</div>
	
		<footer class="page-footer purple lighten-2">	
			<jsp:include page="include/footer-c.jsp" />
		</footer>
		
		<script src="resources/js/init.js"></script>
	</body>
</html>