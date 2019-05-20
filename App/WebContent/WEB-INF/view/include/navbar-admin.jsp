<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="navbar-fixed">
	<c:url var="profilLink" value="${pageContext.request.contextPath}/admin/profil"><c:param name="id" value="${admin.adminId}"/></c:url>
	<!-- Dropdown Structure -->
	<ul id="dropdown1" class="dropdown-content">
		<li><a href="${profilLink}" class="purple-text text-darken-3">Lihat Profil</a></li>
		<li class="divider"></li>
		<li><a href="${pageContext.request.contextPath}/admin/logout" class="purple-text text-darken-3">Keluar</a></li>
	</ul>
	
	<nav class="purple lighten-2 z-depth-0" role="navigation">
		<div class="nav-wrapper container">
			<a id="logo-container" href="${pageContext.request.contextPath}/admin/" class="brand-logo">C&amp;D</a>
			
			<!-- PC Navigation bar -->
			<ul class="right hide-on-med-and-down">
				<% if(session.getAttribute("admin")==null){ %>
					<li><a href="${pageContext.request.contextPath}/admin/login"> <i class="material-icons left">exit_to_app</i>LOGIN</a></li>
				<% } else {%>
					<li><a class="dropdown-trigger" href="#!" data-target="dropdown1">${admin.adminNama}<i class="material-icons right">arrow_drop_down</i></a></li>
				<% }%>
			</ul>

			<!-- Mobile Navigation bar -->
			<ul id="nav-mobile" class="sidenav">
				<% if(session.getAttribute("admin")==null){ %>
					<li><a href="${pageContext.request.contextPath}/admin/login">Login</a></li>
				<% } else {%>
					<li><a href="#!">${admin.adminNama}</a></li>
					<li><a href="${profilLink}" class="purple-text text-darken-3">Lihat Profil</a></li>
					<li class="divider"></li>
					<li><a href="${pageContext.request.contextPath}/admin/logout" class="purple-text text-darken-3">Keluar</a></li>
				<% }%>
			</ul>

			<a href="#" data-target="nav-mobile" class="sidenav-trigger"><i
				class="material-icons">menu</i></a>
		</div>
	</nav>
</div>