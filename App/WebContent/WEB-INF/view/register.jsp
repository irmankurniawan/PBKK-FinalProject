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
		<div class="navbar-fixed">
			<nav class="purple lighten-2 z-depth-0" role="navigation">
				<div class="nav-wrapper container">
					<a id="logo-container" href="#" class="brand-logo">C&amp;D</a>
		
					<!-- PC Navigation bar -->
					<ul class="right hide-on-med-and-down">
						<li><a href="login"> <i class="material-icons left">exit_to_app</i>LOGIN
						</a></li>
						<li><a
							class="waves-effect waves-light btn-flat yellow lighten-2 grey-text text-darken-3" href="register">
								<i class="material-icons left">account_circle</i>REGISTER
						</a></li>
					</ul>
		
					<!-- Mobile Navigation bar -->
					<ul id="nav-mobile" class="sidenav">
						<li><a href="login">Login</a></li>
						<li><a href="register">Register</a></li>
					</ul>
		
					<a href="#" data-target="nav-mobile" class="sidenav-trigger"><i
						class="material-icons">menu</i></a>
				</div>
			</nav>
		</div>

		<div class="section purple lighten-2" id="index-banner">
			<div class="container">
				<h1 class="header center yellow-text text-lighten-2">C&amp;D Registration</h1>
			</div>
		</div>

		<div class="section purple lighten-2">
		<div class="container">
			<div class="row">
			<div class="container">
				<div class="col s12 m3 l2"></div>
				<div class="col s12 m6 l8">
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
				<div class="col s12 m3 l2"></div>
			</div>
			</div>
		</div>
		</div>
	
		<footer class="page-footer purple lighten-2">	
			<div class="footer-copyright">
				<div class="container center">
					Dibuat oleh <a class="yellow-text"
						href="https://github.com/irmankurniawan/PBKK-FinalProject"
						target="">Kelompok 8</a>
				</div>
			</div>
		</footer>
		
		<script src="resources/js/init.js"></script>
	</body>
</html>