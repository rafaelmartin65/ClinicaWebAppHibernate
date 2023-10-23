<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<header>
		<h1>Control de pacientes</h1>
		<nav class="navbar bg-primary navbar-expand-lg" data-bs-theme="dark">


		<div class="container-fluid">


			<span class="navbar-brand mb-0 h1">Hospital</span>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href='<c:url value="/"/>'>Inicio</a></li>
					<li class="nav-item"><a class="nav-link"
						href='<c:url value="/paciente"/>'>Paciente</a></li>
					<li class="nav-item"><a class="nav-link"
						href='<c:url value="/pacientes"/>'>Pacientes</a></li>

					

					<%-- <li class="nav-item"><a class="nav-link"
						href='<c:url value="/otra"/>'>Otra</a> <!-- aria-disabled="true"  -->
					</li> --%>

				</ul>
				<!-- <form:form class="d-flex" role="search">
					<input class="form-control me-2" type="search"
						placeholder="Buscar Paciente" aria-label="Search">
					<button class="btn btn-outline-light" type="submit">Buscar</button>
				</form:form> -->
			</div>
		</div>
	</nav>
	</header>
	
	
</body>
</html>