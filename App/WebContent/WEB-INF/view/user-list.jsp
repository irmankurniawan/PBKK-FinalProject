<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<jsp:include page="include/head.jsp"/>
		<title>Welcome!</title>
	</head>
	<body>

		<jsp:include page="include/navbar.jsp" />  
		<div class="section purple lighten-2" id="index-banner">
			<div class="container">
				<h1 class="header center yellow-text text-lighten-2">Daftar User</h1>
			</div>
		</div>

		<div class="container">
			<div class="section">
				<div class="row">
					<div class="col s12 m2">
					</div>
	
					<div class="col s12 m8">
						<table class="centered highlight responsive-table">
						  <thead>
						    <tr>
						        <th>ID</th>
						        <th>Nama</th>
						        <th>Email</th>
						        <th>No. HP</th>
						        <th>Action</th>
						    </tr>
						  </thead>
						
						  <tbody>
							<c:forEach var="user" items="${users}">
								<c:url var="editLink" value="/user-edit">
						  			<c:param name="id" value="${user.userId}"/>
						  		</c:url>
								<tr>
							      <td><c:out value="${user.userId}"/></td>
							      <td><c:out value="${user.userNama}"/></td>
							      <td><c:out value="${user.userEmail}"/></td>
							      <td><c:out value="${user.userHp}"/></td>
							      <td>
							      	<a class="waves-effect waves-purple btn-flat" href="${editLink}"><i class="material-icons">edit</i></a>
							      </td>
							    </tr>
							</c:forEach>
						  </tbody>
						</table>

					</div>
	
					<div class="col s12 m2">
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