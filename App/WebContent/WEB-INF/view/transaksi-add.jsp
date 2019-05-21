<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
	<head>
		<jsp:include page="include/head.jsp"/>
		<title>Tambah Transaksi Baru</title>
	</head>
	<body>
		<jsp:include page="include/navbar.jsp" />

		<div class="section purple lighten-2" id="index-banner">
			<div class="container">
				<h1 class="header center yellow-text text-lighten-2">Tambah Transaksi Baru</h1>
			</div>
		</div>

		<div class="section purple lighten-2">
		<div class="container">
			<div class="row">
			<div class="container">
				<div class="col s12 m2 l2"></div>
				<div class="col s12 m8 l8">
					<div class="card grey lighten-5">
						<div class="card-content grey-text text-darken-4">
							<span class="card-title">Form Tambah Transaksi</span>
							
							<form:form method="POST" action="addTransaksi?uid=${userId}&pid=${petId}" modelAttribute="modelTransaksi">
								<%-- <input name="pid" value="${petId}"/>
								<input name="uid" value="${userId}"/> --%>
								<form:hidden path="trId"/>
								<form:hidden path="trStatusBayar" value="BELUM"/>
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
				<div class="col s12 m2 l2"></div>
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