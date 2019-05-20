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

		<div class="section purple lighten-2" id="index-banner">
			<div class="container">
				<h1 class="header center yellow-text text-lighten-2">Login Admin</h1>
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
									<span class="card-title">Login Form</span>
									<form:form method="POST" action="admin-check" modelAttribute="admin">
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
	
		<footer class="page-footer purple lighten-2">	
			<jsp:include page="include/footer-c.jsp" />
		</footer>
		
		<script src="<c:url value="/resources/js/init.js" />"></script>
	</body>
</html>