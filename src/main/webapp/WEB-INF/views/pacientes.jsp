<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listado de Pacientes</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
	crossorigin="anonymous">
	
</script>

</head>
<body>

	<%@ include file="navBar.jsp" %>
	<%-- <nav class="navbar bg-primary navbar-expand-lg" data-bs-theme="dark">


		<div class="container-fluid">


			<span class="navbar-brand mb-0 h1"></span>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href='<c:url value="/"/>'>Inicio</a></li>
					<li class="nav-item"><a class="nav-link"
						href='<c:url value="/pacientes"/>'>Paciente</a></li>

					<li class="nav-item"><a class="nav-link"
						href='<c:url value="pacientes "/>'>Pacientes</a></li>

					<li class="nav-item"><a class="nav-link"
						href='<c:url value="/otra"/>'>Otra</a> <!-- aria-disabled="true"  -->
					</li>

				</ul>
				<form:form class="d-flex" role="search">
					<input class="form-control me-2" type="search"
						placeholder="Buscar Paciente" aria-label="Search">
					<button class="btn btn-outline-light" type="submit">Buscar</button>
				</form:form>
			</div>
		</div>
	</nav> --%>
	<div class="container">
		<div class="card">
			<h4 class="card-header">
				<strong>Listado de Pacientes</strong>
			</h4>
			<div class="card-body">
				<a class="btn btn-primary" href='<c:url value="/paciente" />'
					title="Crear nuev@ Paciente" role="button"><i
					class="fas fa-file" aria-hidden="true"></i>Crear Paciente</a>
				<hr>
				<hr>
				<div class="table-responsive">
					<table class="table table-hover">
						<thead class="thead-light">
							<tr>
								<th scope="col">idPaciente</th>
								<th scope="col">Nombre</th>
								<th scope="col">Apellidos</th>
								<!-- <th scope="col">Sexo</th> -->
								<th scope="col">Edad</th>
								<th scope="col">Direcci�n</th>
								<th scope="col">Tel�fono</th>
								<th scope="col">Historial</th>
							</tr>
						</thead>

						<tbody>
							<tr>
								<c:forEach items="${pacientes}" var="paciente">
									<tr>
										<td>${paciente.idPaciente}</td>
										<td>${paciente.nombre}</td>
										<td>${paciente.apellidos}</td>
										<td>${paciente.edad}</td>
										<%-- <td>${paciente.direccion}</td> --%>
										<td><a href="./direccion/${paciente.idPaciente}" 
												class="btn btn-primary btn-sm" 
												role="button" 
												aria-pressed="true">Direcciones</a></td>
										<td>${paciente.telefono}</td>
										<td>${paciente.historial}</td>
										<td><a
											href="./paciente/${paciente.idPaciente}/actualizar"
											class="btn btn-primary btn-sm" role="button"
											aria-pressed="true">Modificar</a></td>
										<td><a href="./pacientes/${paciente.idPaciente}/eliminar"
											class="btn btn-primary btn-sm" role="button"
											aria-pressed="true">Eliminar</a></td>
									</tr>
								</c:forEach>
							</tr>
						</tbody>
					</table>

				</div>
			</div>
		</div>
	</div>
</body>
</html>
