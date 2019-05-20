<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<jsp:include page="include/head.jsp"/>
		<title>Daftar Transaksi</title>
	</head>
	<body>

		<jsp:include page="include/navbar.jsp" />  
		<div class="section purple lighten-2" id="index-banner">
			<div class="container">
				<h1 class="header center yellow-text text-lighten-2">Daftar Transaksi</h1>
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
						        <th>Check In</th>
						        <th>Check Out</th>
						        <th>Total Bayar</th>
						        <th>Status Bayar</th>
						        <th>Actions</th>
						    </tr>
						  </thead>
						
						  <tbody>
							<c:forEach var="transaksi" items="${transaksis}">
								<c:url var="editLink" value="/transaksi-edit">
						  			<c:param name="id" value="${transaksi.trId}"/>
						  		</c:url>
								<tr>
							      <td><c:out value="${transaksi.trId}"/></td>
							      <td><c:out value="${transaksi.trTglCekin}"/></td>
							      <td><c:out value="${transaksi.trTglCekout}"/></td>
							      <td><c:out value="${transaksi.trTotalBayar}"/></td>
							      <td><c:out value="${transaksi.trStatusBayar}"/></td>
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