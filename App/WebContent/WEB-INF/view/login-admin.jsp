<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
	<head>
		<jsp:include page="include/head.jsp"/>
		<title>Login - D&amp;C Daycare</title>
	</head>
	<body>
		<jsp:include page="include/navbar-admin.jsp" />

		<div class="section blue-grey lighten-5" id="index-banner">
			<div class="container">
				<h1 class="header center grey-text text-darken-3 light">Login Admin</h1>
			</div>
		</div>

		<div class="section blue-grey lighten-5">
			<div class="container">
				<div class="row">
					<div class="container">
						<div class="col s12 m3 l2"></div>
						<div class="col s12 m6 l8">
							<div class="card grey lighten-5">
								<div class="card-content grey-text text-darken-4">
									<span class="card-title">Login Form</span>
									<form:form method="POST" action="check" modelAttribute="admin">
										<div class="row" style="margin-bottom:0;">
											<div class="input-field col s12">
												<form:input type="email" path="adminEmail"/>
		          								<form:label path="adminEmail">Email</form:label>          								
											</div>
											<div class="input-field col s12">
												<form:input type="password" path="adminPassword"/>
		          								<form:label path="adminPassword">Password</form:label>          								
											</div>
											<div class="input-field col s12 center">
												<button class="btn purple waves-effect waves-light" type="submit">Login
												    <i class="material-icons right">send</i>
												</button>
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
	
		<footer class="page-footer blue-grey lighten-5">	
			<div class="footer-copyright">
				<div class="container center grey-text text-darken-3">
					Dibuat oleh <a class="purple-text"
						href="https://github.com/irmankurniawan/PBKK-FinalProject"
						target="">PBKK B - Kelompok 8</a>
				</div>
			</div>
		</footer>
		
		<script src="<c:url value="/resources/js/init.js" />"></script>
	</body>
</html>