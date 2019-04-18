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
		<title>Login - D&amp;C Daycare</title>
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
						<li><a href="#"> <i class="material-icons left">exit_to_app</i>LOGIN
						</a></li>
						<li><a
							class="waves-effect waves-light btn-flat yellow lighten-2 grey-text text-darken-3" href="#">
								<i class="material-icons left">account_circle</i>REGISTER
						</a></li>
					</ul>
		
					<!-- Mobile Navigation bar -->
					<ul id="nav-mobile" class="sidenav">
						<li><a href="#">Login</a></li>
						<li><a href="#">Register</a></li>
					</ul>
		
					<a href="#" data-target="nav-mobile" class="sidenav-trigger"><i
						class="material-icons">menu</i></a>
				</div>
			</nav>
		</div>

		<div class="section purple lighten-2" id="index-banner">
			<div class="container">
				<h1 class="header center yellow-text text-lighten-2">Login</h1>
				<br/><br/>
			</div>
		</div>

		<div class="container">
			<div class="row">
				<div class="col s12 m3 l2"></div>
				<div class="col s12 m6 l8">
					<div class="card grey lighten-5">
						<div class="card-content grey-text text-darken-4">
							<span class="card-title">Login Form</span>
							<form:form method="POST" action="addMember" modelAttribute="member">
								<div class="row">
									<div class="input-field col s12">
										<form:input id="name" type="name" class="validate" path="name"/>
          								<form:label for="name" path="name">Username</form:label>
									</div>
									<div class="input-field col s12">
										<form:input id="password" type="password" class="validate" path="password"/>
          								<form:label for="password" path="password">Password</form:label>
									</div>
								</div>
							</form:form>
						</div>
					</div>
				</div>
				<div class="col s12 m3 l2"></div>
			</div>
		</div>
	
		<footer class="page-footer purple lighten-2">
			<div class="container">
				<div class="row">
					<div class="col s12 m6 l8">
						<h5 class="white-text">Tentang Kami</h5>
						<p class="grey-text text-lighten-4">Cat&amp;Dog Daycare In dolor labore ex dolor cillum ad non adipisicing magna culpa sit minim commodo veniam consectetur ex commodo deserunt voluptate et consequat anim.</p>
					</div>
					<div class="col s12 m6 l4">
						<h5 class="white-text">Hubungi Kami</h5>
						<ul>
							<li><a class="yellow-text" href="#!">Facebook</a></li>
							<li><a class="yellow-text" href="#!">Twitter</a></li>
							<li><a class="yellow-text" href="#!">Instagram</a></li>
						</ul>
					</div>
				</div>
			</div>
	
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