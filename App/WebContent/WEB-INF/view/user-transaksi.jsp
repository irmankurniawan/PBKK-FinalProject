<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
					<c:choose>
					<c:when test="${fn:length(transaksis)>0}">
						<table class="centered highlight responsive-table">
						  <thead>
						    <tr>
						        <th>ID</th>
						        <th>Pet</th>
						        <th>Check In</th>
						        <th>Check Out</th>
						        <th>Total Bayar</th>
						        <th>Status Bayar</th>
						    </tr>
						  </thead>
						
						  <tbody>
						  	
							<c:forEach var="transaksi" items="${transaksis}">
								<tr>
								<c:url var="petEdit" value="/pet-edit"><c:param name="id" value="${pet.petId}"/></c:url>
								<c:url var="petDelete" value="/pet-delete"><c:param name="id" value="${pet.petId}"/></c:url>
								<c:url var="petTitip" value="/pet-titip"><c:param name="uid" value="${user.userId}"/><c:param name="pid" value="${pet.petId}"/></c:url>
							      
							      <td><c:out value="${transaksi.trId}"/></td>
							      <td><c:out value="${transaksi.pet.getPetId()}"/></td>
							      <td><c:out value="${transaksi.trTglCekin}"/></td>
							      <td><c:out value="${transaksi.trTglCekout}"/></td>
							      <td><c:out value="${transaksi.trTotalBayar}"/></td>
							      <td><c:out value="${transaksi.trStatusBayar}"/></td>
							      
							    </tr>
							</c:forEach>
						  </tbody>
						</table>
						<div class="center" style="margin-top:2em;">
							<!-- <a href="pet-add" id="download-button"
								class="btn-large waves-effect waves-light green lighten-2">Tambahkan Hewan</a> -->
						</div>
					</c:when>
					<c:otherwise>
					<div style="margin:5em 0;">
						<div class="center">
							<h5 class="grey-text">Kamu belum pernah melakukan transaksi</h5>
						</div>
						<div class="center" style="margin-top:4em;">
							<a href="user-pet?uid=${user.userId}" id="download-button"
								class="btn-large waves-effect waves-light green lighten-2">Tambahkan Transaksi</a>
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