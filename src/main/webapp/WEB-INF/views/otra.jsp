<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Otra</title>
</head>
<body>
	<h1>otra.jsp</h1>
	<br />
	<a href='<c:url value="/"/>'>Ir A index</a>
	<br /> Atributos del Modelo =>
	<c:out value="${resultado}"></c:out>
	<br /> Atributos en Session =>
	<c:out value="${sessionScope.mensaje}"></c:out>

	<br />
</body>
</html>