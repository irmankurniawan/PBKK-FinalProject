<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
	<head>
		<jsp:include page="include/head.jsp"/>
		<title>Edit Transaksi</title>
	</head>
	<body>

		<jsp:include page="include/navbar-admin.jsp" />  
		<div class="section blue-grey lighten-5" id="index-banner">
			<div class="container">
				<h1 class="header center grey-text text-darken-1">Edit Transaksi</h1>
			</div>
		</div>

		<div class="section blue-grey lighten-5" style="min-height:380px;">
		<div class="container">
			<div class="section">
				<div class="row">
					<div class="col s12 m2">
					</div>
	
					<div class="col s12 m8">
						<div class="card grey lighten-5">
						<div class="card-content grey-text text-darken-4">
							<span class="card-title">Edit Transaksi Form</span>
							
							<form:form method="POST" action="updateTransaksi" modelAttribute="modelTransaksi">
								<form:hidden path="trId" value="${transaksi.trId}"/>
								<%-- <form:hidden path="trIdPath" value="${transaksi.pet.getPetId()}"/>
								<form:hidden path="trIdUser" value="${transaksi.user.getUserId()}"/> --%>
								<div class="row" style="margin-bottom:0;">
									<div class="input-field col s12">
										<form:input type="date" path="trTglCekin" value="${transaksi.trTglCekin}"/>
          								<form:label path="trTglCekin">Tanggal Cek-In</form:label>          								
									</div>
									<div class="input-field col s12">
										<form:input type="date" path="trTglCekout" value="${transaksi.trTglCekout}"/>
          								<form:label path="trTglCekout">Tanggal Cek-Out</form:label>          								
									</div>
									<div class="input-field col s12">
										<form:input path="trTotalBayar" value="${transaksi.trTotalBayar}"/>
          								<form:label path="trTotalBayar">Total Bayar</form:label>          								
									</div>
									<div class="input-field col s12">
										<form:label path="trStatusBayar" class="active">Status Pembayaran</form:label>
										<div class="row" style="margin-bottom:0;margin-top:10px;">
											<div class="col s12 m6 l4">
											    <label>
											      <form:radiobutton checked="${transaksi.trStatusBayar=='BELUM' ? 'checked':''}" class="with-gap" path="trStatusBayar" value="BELUM" name="group1" />
											      <span>Belum Lunas</span>
											    </label>
										    </div>
										    <div class="col s12 m6 l4">
											    <label>
											      <form:radiobutton checked="${transaksi.trStatusBayar=='LUNAS' ? 'checked':''}" class="with-gap" path="trStatusBayar" value="LUNAS" name="group1" />
											      <span>Lunas</span>
											    </label>
										    </div>
										  </div>
									</div>

									<div class="input-field col s12 center">
										<button class="btn purple waves-effect waves-light" type="submit">Save
										    <i class="material-icons left">save</i>
										</button>
									</div>
								</div>
							</form:form>
						</div>
					</div>
				</div>
					</div>
	
					<div class="col s12 m2">
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