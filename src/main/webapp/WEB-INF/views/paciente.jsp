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

  <!--   desde aquí a la pizarra
  <h1> Pacientes.jsp</h1>
  <hr>
  <div class="card">
  	<h4 class="card-header">
  	<strong> Listado de Pacientes</strong>
  	</h4>-->
  
	<nav class="navbar bg-primary navbar-expand-lg" data-bs-theme="dark">
		<div class="container-fluid">
			<span class="navbar-brand mb-0 h1">Hospital</span>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link"
						href='<c:url value="/"/>'>Inicio</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href='<c:url value="/paciente"/>'>Paciente</a>
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
		<!-- commandName va ser el nombre de un atributo q va a estar en el modelo,
	 no va tener un string, sino una nueva instancia del pojo Paciente -->
		<form:form
			action="${pageContext.servletContext.contextPath}/paciente/guardar"
			method="post" commandName="paciente">
			<h1 class="mt-3 mb-3">Gestion de Paciente</h1>
			<div class="mb-3">
				<label class="form-label">ID Paciente</label>
				<form:input path="idPaciente" type="number" class="form-control" />
			</div>
			<div class="mb-3">
				<label class="form-label">Nombre</label>
				<form:input path="nombre" type="text" class="form-control" />
			</div>
			<div class="mb-3">
				<label class="form-label">Apellido</label>
				<form:input path="apellido" type="text" class="form-control" />
			</div>
			<div class="mb-3">
				<label class="form-label">Edad</label>
				<form:input path="edad" type="number" class="form-control" />
			</div>
			<div class="mb-3">
				<label class="form-label">Telefono</label>
				<form:input path="telf" type="text" class="form-control" />
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