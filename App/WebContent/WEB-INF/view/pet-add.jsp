<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
	<head>
		<jsp:include page="include/head.jsp"/>
		<title>Tambah Pet Baru</title>
	</head>
	<body>
		<jsp:include page="include/navbar.jsp" />

		<div class="section purple lighten-2" id="index-banner">
			<div class="container">
				<h1 class="header center yellow-text text-lighten-2">Tambah Pet Baru</h1>
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
							<span class="card-title">Form Tambah Pet</span>
							
							<form:form method="POST" action="addPet" modelAttribute="modelPet">
								<form:hidden path="petId" value="${pet.petId}"/>
								<div class="row" style="margin-bottom:0;">
									<div class="input-field col s12">
										<form:input path="petName" />
          								<form:label path="petName">Nama Pet</form:label>          								
									</div>
									<div class="input-field col s12">
										<form:label path="petJenis" class="active">Jenis Pet</form:label>
										<div class="row" style="margin-bottom:0;margin-top:10px;">
											<div class="col s12 m6 l4">
											    <label>
											      <form:radiobutton class="with-gap" path="petJenis" value="KUCING" name="group1" />
											      <span>Kucing</span>
											    </label>
										    </div>
										    <div class="col s12 m6 l4">
											    <label>
											      <form:radiobutton class="with-gap" path="petJenis" value="ANJING" name="group1" />
											      <span>Anjing</span>
											    </label>
										    </div>
										  </div>
									</div>

									<div class="input-field col s12">
										<form:label path="petGender" class="active">Gender Pet</form:label>
										<div class="row" style="margin-bottom:0;margin-top:10px;">
											<div class="col s12 m6 l4">
											    <label>
											      <form:radiobutton class="with-gap" path="petGender" value="JANTAN" name="group2" />
											      <span>Jantan</span>
											    </label>
										    </div>
										    <div class="col s12 m6 l4">
											    <label>
											      <form:radiobutton class="with-gap" path="petGender" value="BETINA" name="group2" />
											      <span>Betina</span>
											    </label>
										    </div>
										  </div>      								
									</div>

									<div class="input-field col s12 center">
										<button class="btn purple waves-effect waves-light" type="submit">Tambah
										    <i class="material-icons left">add</i>
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