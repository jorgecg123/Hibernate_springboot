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

<title>Makitta - Agregar productos</title>

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
		<div class="card-body">Agrega nuevos productos!</div>
	</div>
	<!-- Page Content -->
	<div class="container">
		<div class="jumbotron">
			<form action="<%=request.getContextPath()%>/producto/add"
				method="post">
				<label for="basic-url">Ingresa el nombre del producto</label> <input
					type="text" class="form-control" placeholder="Nombre del producto"
					aria-describedby="sizing-addon1" name="nombre"> <label
					for="basic-url">Ingresa el precio del producto</label> <input
					type="text" class="form-control" placeholder="Ejemplo: 499.99"
					name="precio"> <label for="basic-url">Ingresa la
					descipcion del producto</label> <input type="text" class="form-control"
					placeholder="Descripcion de mi producto"
					aria-describedby="sizing-addon1" name="descripcion"> <label
					for="basic-url">Ingresa la ruta de la imagen</label> <input
					type="text" class="form-control" id="basic-url"
					aria-describedby="basic-addon3" name="img"
					placeholder="http://example.com/img.png">
					<br>
				<button class="btn btn-dark">Agregar</button>

			</form>
		</div>
	</div>
	<!-- /.container -->

	<!-- Footer -->

	<!-- Bootstrap core JavaScript -->
	<script src="<%=request.getContextPath()%>/vendor/jquery/jquery.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>