<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="navbar-fixed">
	<c:url var="updateLink" value="/user-profil">
		<c:param name="id" value="${user.userId}"/>
	</c:url>
	<!-- Dropdown Structure -->
	<ul id="dropdown1" class="dropdown-content">
		<li><a href="${updateLink}" class="purple-text text-darken-3">Lihat Profil</a></li>
		<li><a href="user-pet" class="purple-text text-darken-3">Lihat Pet</a></li>
		<li class="divider"></li>
		<li><a href="user-logout" class="purple-text text-darken-3">Keluar</a></li>
	</ul>
	
	<nav class="purple lighten-2 z-depth-0" role="navigation">
		<div class="nav-wrapper container">
			<a id="logo-container" href="${pageContext.request.contextPath}" class="brand-logo">C&amp;D</a>
			
			<!-- PC Navigation bar -->
			<ul class="right hide-on-med-and-down">
				<%
				//HttpSession session2 = request.getSession();
				if(session.getAttribute("user")==null){
				%>
					<li><a href="login"> <i class="material-icons left">exit_to_app</i>LOGIN</a></li>
					<li><a class="waves-effect waves-light btn-flat yellow lighten-2 grey-text text-darken-3" href="register">
							<i class="material-icons left">account_circle</i>REGISTER
					</a></li>
				<% } else {%>
					<li><a class="dropdown-trigger" href="#!" data-target="dropdown1">${user.userNama}<i class="material-icons right">arrow_drop_down</i></a></li>
				<% }%>
			</ul>

			<!-- Mobile Navigation bar -->
			<ul id="nav-mobile" class="sidenav">
				<li><a href="login">Login</a></li>
				<li><a href="register">Register</a></li>
			</ul>

			<a href="#" data-target="nav-mobile" class="sidenav-trigger"><i
				class="material-icons">menu</i></a>
		</div>
	</nav>
</div>