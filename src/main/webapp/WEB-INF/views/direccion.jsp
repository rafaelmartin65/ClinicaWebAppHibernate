<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Paciente Formulario</title>
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

	<div class="container">
		<div class="card">
			<h4 class="card-header">
				<strong>Datos de la dirección</strong>
			</h4>
			<div class="card-body">

				<sform:form
					action="${pageContext.servletContext.contextPath}/direccion/guardar"
					method="post" modelAttribute="direccion">


					<div class="row-3 align-items-center">
						<div class="col-4">
							<label for="formDireccionCalleInput" class="form-label">Calle:</label>
							<sform:input path="calle" type="text" class="form-control"
								id="formDireccionCalleInput" placeholder="Introduzca su calle" />
							<!-- required="true" value="calle" -->
						</div>

						<div class="col-4">
							<label for="formDireccionCPInput" class="form-label">Ciudad</label>
							<sform:input path="ciudad" type="text" class="form-control"
								id="formDireccionCPInput" placeholder="Introduzca su ciudad" />
						</div>

						<div class="col-4">
							<label for="formDireccionCPInput" class="form-label">CP:</label>
							<sform:input path="cp" type="number" class="form-control"
								id="formDireccionCPInput" placeholder="Introduzca su cp" />
						</div>
					</div>



					<div class="col-4 mt-4">
						<button type="submit" class="btn btn-primary mb-3">Guardar</button>
					</div>

				</sform:form>


			</div>
			<!-- card-body -->
		</div>
		<!-- card -->
	</div>


	<c:out value="${resultado}"></c:out>
	<!-- colocarlo en otro jsp -->
	<c:forEach items="${direcciones}" var="direccion">
		<c:out value="${direccion}" />
		<br />
	</c:forEach>

</body>
</html>