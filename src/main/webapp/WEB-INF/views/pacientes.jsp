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
	<h1>Pacientes.jsp</h1>
	<hr>
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
								<th scope="col">Dirección</th>
								<th scope="col">Teléfono</th>
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
										<td>${paciente.direccion}</td>
										<td>${paciente.telefono}</td>
										<td>${paciente.historial}</td>
										<td><a
											href="./paciente/${paciente.idPaciente}/actualizar"
											class="btn btn-primary btn-sm" role="button"
											aria-pressed="true">Modificar</a></td>
										<td><a href="./paciente/${paciente.idPaciente}/eliminar"
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
