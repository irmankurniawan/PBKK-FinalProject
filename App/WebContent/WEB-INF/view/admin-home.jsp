<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<jsp:include page="include/head.jsp"/>
		<title>Admin - Home</title>
	</head>
	<body>
		<jsp:include page="include/navbar-admin.jsp" />  
		<div class="section blue-grey lighten-5" id="index-banner">
			<div class="container">
				<h1 class="header center grey-text text-darken-1">Halo, ${admin.adminNama}!</h1>
			</div>
		</div>

		<div class="section blue-grey lighten-5">
			<div class="container">
				<div class="section">
		
					<!--   Icon Section   -->
					<div class="row">
						<div class="col s12 m6">
							<div class="icon-block center">
								<h2 class="center purple-text text-lighten-2">
									<i class="material-icons">people</i>
								</h2>
								<h5 class="center">Lihat Member</h5>
								<p class="light">Lihat semua member terdaftar</p>
								<a href="${pageContext.request.contextPath}/admin/member-list" class="btn-large waves-effect waves-light purple lighten-2">LIHAT MEMBER</a>
							</div>
						</div>
		
						<%-- <div class="col s12 m4">
							<div class="icon-block center">
								<h2 class="center purple-text text-lighten-2">
									<i class="material-icons">pets</i>
								</h2>
								<h5 class="center">Lihat Hewan</h5>
								<p class="light">Lihat semua hewan masuk</p>
								<a href="${pageContext.request.contextPath}/admin/transaksi-list" class="btn-large waves-effect waves-light purple lighten-2">LIHAT HEWAN</a>
							</div>
						</div> --%>
		
						<div class="col s12 m6">
							<div class="icon-block center">
								<h2 class="center purple-text text-lighten-2">
									<i class="material-icons">assignment</i>
								</h2>
								<h5 class="center">Lihat Transaksi</h5>
								<p class="light">Lihat semua transaksi masuk</p>
								<a href="${pageContext.request.contextPath}/transaksi-list" class="btn-large waves-effect waves-light purple lighten-2">LIHAT TRANSAKSI</a>
							</div>
						</div>
					</div>
		
				</div>
				<div class="section"></div>
				<div class="section"></div>
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