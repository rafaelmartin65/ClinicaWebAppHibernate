<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Paciente</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
</head>
<body>
	<nav class="navbar bg-primary navbar-expand-lg" data-bs-theme="dark">
		<div class="container-fluid">
			<span class="navbar-brand mb-0 h1">Hospital</span>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link"
						href='<c:url value="/"/>'>Inicio</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href='<c:url value="/pacientes"/>'>Pacientes</a>
					</li>
					<li class="nav-item"><a class="nav-link disabled"
						aria-disabled="true" href='<c:url value="/otra"/>'>Otra</a></li>
				</ul>
				<form:form class="d-flex" role="search">
					<input class="form-control me-2" type="search"
						placeholder="Buscar Paciente" aria-label="Search">
					<button class="btn btn-outline-light" type="submit">Buscar</button>
				</form:form>
			</div>
		</div>
	</nav>

	<div class="mt-1 mb-5 justify-content-center d-flex">
		<form:form
			action="${pageContext.servletContext.contextPath}/paciente/guardar"
			method="post" modelAttribute="paciente">
			<h1 class="mt-3 mb-3">Gestion de Paciente</h1>

			<!-- Agrega un campo oculto para el ID del paciente -->
			<form:hidden path="idPaciente" />

			<div class="mb-3">
				<label class="form-label">Nombre</label>
				<form:input path="nombre" value="nombre" type="text" class="form-control" />
			</div>
			<div class="mb-3">
				<label class="form-label">Apellidos</label>
				<form:input path="apellidos" type="text" class="form-control" />
			</div>
			<div class="mb-3">
				<label class="form-label">Edad</label>
				<form:input path="edad" type="number" class="form-control" />
			</div>
			<div class="mb-3">
				<label class="form-label">Telefono</label>
				<form:input path="telefono" type="text" class="form-control" />
			</div>
			<div class="mb-3">
				<label class="form-label">Direccion</label>
				<form:input path="direccion" type="text" class="form-control" />
			</div>
			<div class="mb-3">
				<label class="form-label">Historial</label>
				<form:textarea rows="5" style="resize: none" path="historial"
					class="form-control" />
			</div>
			<button type="submit" class="btn btn-primary">Guardar</button>
			<c:out value="${info}"></c:out>
		</form:form>
	</div>
</body>
</html>
