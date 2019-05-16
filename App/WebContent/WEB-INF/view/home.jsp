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
				<h1 class="header center yellow-text text-lighten-2">Selamat Datang</h1>
				<div class="container center">
					<h5 class="header light white-text">Selamat datang di Cat&amp;Dog Daycare. Titipkan hewan peliharaan kesayanganmu disini sekarang.</h5>
				</div>
				<br/><br/>
				<div class="center">
					<a href="register" id="download-button"
						class="btn-large waves-effect waves-light yellow lighten-2 grey-text text-darken-3">Register</a>
				</div>
				<br/><br/>
			</div>
		</div>

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
	
		<footer class="page-footer purple lighten-2">
			<div class="container">
				<div class="row">
					<div class="col s12 m6 l8">
						<h5 class="white-text">Tentang Kami</h5>
						<p class="grey-text text-lighten-4">Cat&amp;Dog Daycare In dolor labore ex dolor cillum ad non adipisicing magna culpa sit minim commodo veniam consectetur ex commodo deserunt voluptate et consequat anim.</p>
					</div>
					<div class="col s12 m6 l4">
						<h5 class="white-text">Hubungi Kami</h5>
						<ul>
							<li><a class="yellow-text" href="#!">Facebook</a></li>
							<li><a class="yellow-text" href="#!">Twitter</a></li>
							<li><a class="yellow-text" href="#!">Instagram</a></li>
						</ul>
					</div>
				</div>
			</div>
	
			<jsp:include page="include/footer-c.jsp" />
		</footer>
		
		<script src="resources/js/init.js"></script>
	</body>
</html>