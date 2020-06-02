<%@page import="mx.com.trnetwork.Carrito"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Makitta - Actualiza tus productos</title>
<!-- Bootstrap core CSS -->
<link
	href="<%=request.getContextPath()%>/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="<%=request.getContextPath()%>/css/shop-homepage.css"
	rel="stylesheet">

</head>

<body>
	<!-- Aqui van el encabezado header -->
	<jsp:include page="menu.jsp"></jsp:include>
	<div class="card">
		<div class="card-body">Actualiza los datos de tus productos!</div>
	</div>
	<!-- Page Content -->
	<div class="container">
		<div class="jumbotron">
			<c:forEach var="produc" items="${producto}">
				<form action="<%=request.getContextPath()%>/producto/update"
					method="post">
					<label for="basic-url">El producto a editar tiene el
						identificador: # ${produc.id } </label><br> <input type="hidden"
						name="id" value="${produc.id }"> <label for="basic-url">El
						nombre del producto es: ${produc.name } </label> <input type="text"
						id="disabledTextInput" class="form-control"
						aria-describedby="sizing-addon1" name="nombre"
						value="${produc.name }" placeholder="Nombre de mi producto">
					<label for="basic-url"> El precio del producto es:</label> <input
						type="text" class="form-control"
						placeholder="Ingresa el nuevo valor" name="precio"
						value="${produc.price }"> <label for="basic-url">Descripcion
						del producto:</label> <input type="text" class="form-control"
						placeholder="Ingresa una nueva descripcion"
						aria-describedby="sizing-addon1" name="descripcion"
						value="${produc.description }"> <label for="basic-url">La
						ruta de la imagen es:</label> <input type="text" class="form-control"
						id="basic-url" aria-describedby="basic-addon3" name="img"
						value="${produc.img }" placeholder="http://example.com/img.png">
					<br>
					<button class="btn btn-dark">Guardar cambios</button>

				</form>
			</c:forEach>
		</div>
	</div>
	<!-- /.container -->

	<!-- Footer -->

	<!-- Bootstrap core JavaScript -->
	<script src="<%=request.getContextPath()%>/vendor/jquery/jquery.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/index.js"></script>
	<script
		src="<%=request.getContextPath()%>/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>