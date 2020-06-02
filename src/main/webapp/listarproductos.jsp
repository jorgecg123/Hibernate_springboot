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

<title>Makitta - Mis productos</title>

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
		<div class="card-body">Productos en existencia!</div>
	</div>
	<!-- Page Content -->
		<div class="jumbotron">
			<table class="table table-hover table-responsive">
				<thead class="thead-dark">
					<tr>
						<th scope="col">ID</th>
						<th scope="col">Producto</th>
						<th scope="col">Precio</th>
						<th scope="col">Descripcion</th>
						<th scope="col">Imagen</th>
						<th scope="col">Eliminar</th>
						<th scope="col">Editar</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="producto" items="${productos}">
						<tr>
							<th scope="row">${producto.id}</th>
							<td>${producto.name }</td>
							<td>${producto.price }</td>
							<td>${producto.description }</td>
							<td>${producto.img }</td>
							<td>
								<form action="<%=request.getContextPath()%>/producto/delete"
									method="post">
									<input type="hidden" name="id" value="${producto.id}" />
									<button class="btn btn-secondary">Eliminar</button>
								</form>
							</td>
							<td>
								<form action="<%=request.getContextPath()%>/producto/update"
									method="get">
									<input type="hidden" name="id" value="${producto.id}" />
									<button class="btn btn-primary">Actualizar</button>
								</form>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
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