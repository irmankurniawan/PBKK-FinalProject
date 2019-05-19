<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
	<head>
		<jsp:include page="include/head.jsp"/>
		<title>Daftar Hewan</title>
	</head>
	<body>

		<jsp:include page="include/navbar.jsp" />  
		<div class="section purple lighten-2" id="index-banner">
			<div class="container">
				<h1 class="header center yellow-text text-lighten-2">Daftar Hewan</h1>
			</div>
		</div>

		<div class="container">
			<div class="section">
				<div class="row">
					<div class="col s12 m2">
					</div>
	
					<div class="col s12 m8">
					<c:choose>
					<c:when test="${fn:length(pets)>0}">
						<table class="centered highlight responsive-table">
						  <thead>
						    <tr>
						        <!-- <th>ID</th> -->
						        <th>Nama</th>
						        <th>Jenis</th>
						        <th>Gender</th>
						        <th>Action</th>
						    </tr>
						  </thead>
						
						  <tbody>
						  	
							<c:forEach var="pet" items="${pets}">
								<tr>
								<c:url var="petEdit" value="/pet-edit"><c:param name="id" value="${pet.petId}"/></c:url>
							      <%-- <td><c:out value="${pet.petId}"/></td> --%>
							      <td><c:out value="${pet.petName}"/></td>
							      <td><c:out value="${pet.petJenis}"/></td>
							      <td><c:out value="${pet.petGender}"/></td>
							      <td>
							      	<a class="waves-effect waves-light btn purple" href="${petEdit}"><i class="material-icons">edit</i></a>
							      	<a class="waves-effect waves-light btn red" href="#!"><i class="material-icons">delete</i></a>
							      </td>
							    </tr>
							</c:forEach>
						  </tbody>
						</table>
						<div class="center" style="margin-top:2em;">
							<a href="pet-add" id="download-button"
								class="btn-large waves-effect waves-light green lighten-2">Tambahkan Hewan</a>
						</div>
					</c:when>
					<c:otherwise>
					<div style="margin:5em 0;">
						<div class="center">
							<h5 class="grey-text">Kamu belum pernah mengisi data hewan</h5>
						</div>
						<div class="center" style="margin-top:4em;">
							<a href="pet-add" id="download-button"
								class="btn-large waves-effect waves-light green lighten-2">Tambahkan Hewan</a>
						</div>
					</div>
					</c:otherwise>
					</c:choose>
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