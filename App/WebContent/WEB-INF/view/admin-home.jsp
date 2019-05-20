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
						<div class="col s12 m4">
							<div class="icon-block">
								<h2 class="center purple-text text-lighten-2">
									<i class="material-icons">flash_on</i>
								</h2>
								<h5 class="center">In veniam elit sit ea</h5>
								<p class="light">Lorem ipsum enim occaecat culpa aliqua est ea eu excepteur dolore pariatur aliquip sint ullamco eu non esse aliqua nisi commodo.</p>
							</div>
						</div>
		
						<div class="col s12 m4">
							<div class="icon-block">
								<h2 class="center purple-text text-lighten-2">
									<i class="material-icons">group</i>
								</h2>
								<h5 class="center">Velit do sunt</h5>
								<p class="light">Eu dolor pariatur amet velit aliquip est reprehenderit ex sed dolor adipisicing tempor eu fugiat enim consectetur cupidatat duis velit amet aliqua quis nisi tempor nulla aute mollit esse laborum non in et consequat officia.</p>
							</div>
						</div>
		
						<div class="col s12 m4">
							<div class="icon-block">
								<h2 class="center purple-text text-lighten-2">
									<i class="material-icons">settings</i>
								</h2>
								<h5 class="center">Consequat nostrud</h5>
								<p class="light">Ut cillum culpa sunt consequat eiusmod dolor mollit nostrud proident cillum amet incididunt ullamco reprehenderit mollit nisi consectetur.</p>
							</div>
						</div>
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