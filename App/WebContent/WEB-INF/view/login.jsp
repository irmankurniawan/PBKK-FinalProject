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
		<jsp:include page="include/navbar.jsp" />

		<div class="section purple lighten-2" id="index-banner">
			<div class="container">
				<h1 class="header center yellow-text text-lighten-2">Login</h1>
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
							<form:form method="POST" action="user-check" modelAttribute="user">
								<div class="row" style="margin-bottom:0;">
									<div class="input-field col s12">
										<form:input type="email" path="userEmail"/>
          								<form:label path="userEmail">Email</form:label>          								
									</div>
									<div class="input-field col s12">
										<form:input type="password" path="userPassword"/>
          								<form:label path="userPassword">Password</form:label>          								
									</div>
									<div class="input-field col s12 center">
										<button class="btn purple waves-effect waves-light" type="submit">Login
										    <i class="material-icons right">send</i>
										</button>
									</div>
									<div class="input-field col s12 center">
										<span>Don't have an account? <a href="register" class="purple-text">Register here</a></span>
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
		<div class="container">
<%-- 			<c:forEach var="entry" items="${users}">
				<c:out value="${entry.userId}"/>
				<c:out value="${entry.userNama}"/>
			</c:forEach> --%>
		</div>
		</div>
	
		<footer class="page-footer purple lighten-2">	
			<jsp:include page="include/footer-c.jsp" />
		</footer>
		
		<script src="resources/js/init.js"></script>
	</body>
</html>