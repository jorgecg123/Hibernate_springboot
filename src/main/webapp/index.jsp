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
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.7.9/angular.min.js"></script>
<script	src="<%=request.getContextPath()%>/js/ajax_angular.js"></script>
<title>Makitta - Agregar productos</title>

<!-- Bootstrap core CSS -->
<link
	href="<%=request.getContextPath()%>/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="<%=request.getContextPath()%>/css/shop-homepage.css"
	rel="stylesheet">

</head>

<body ng-app="Tienda">
	<div ng-controller="TiendaCtrl as ctrl">
		<button ng-click="ctrl.listCat()">GetTeams</button>
		<table class="table table-striped table-secondary">
			<thead>
				<tr>
					<th>Name</th>
				</tr>
			</thead>
			<tbody>
				<tr ng-repeat="categoria in ctrl.categorias">
					<td>{{categoria.name}}</td>
				</tr>
				<tr>
					<td>
						<div class="input-group mb-3">
							<input type="text" class="form-control" ng-model="ctrl.newTeam.name"
								placeholder="Nombre de la Categoria">
							<div class="input-group-append">
								<button ng-click="ctrl.addCat(ctrl.newCategoria)"
									class="btn btn-outline-secondary" type="button">Agregar
									Equipo</button>
							</div>
						</div>
					</td>
				</tr>
			</tbody>
		</table>
		<hr />
		<button ng-click="ctrl.listProductos()">GetPlayers</button>
		<table class="table table-striped table-primary">
			<thead>
				<tr>
					<th>Nombre</th>
					<th>Precio</th>
					<th>Descripcion</th>
					<th>Imagen</th>
					<th>Categoria</th>
				</tr>
			</thead>
			<tbody>
				<tr ng-repeat="producto in ctrl.productos">
					<td>{{producto.name}}</td>
					<td>{{producto.price}}</td>
					<td>{{producto.description}}</td>
					<td>{{producto.img}}</td>
					<td>{{producto.cat}}</td>
				</tr>
				<tr>
					<td><input type="text" class="form-control"
						ng-model="ctrl.newProducto.name" placeholder="Nombre"></td>
					<td><input type="number" class="form-control"
						ng-model="ctrl.newProducto.price" placeholder="Precio"></td>
					<td><input type="text" class="form-control"
						ng-model="ctrl.newProducto.description" placeholder="Descripcion"></td>
					<td>
						<!-- 					documentacion de ng-options en https://docs.angularjs.org/api/ng/directive/ngOptions -->
						<div class="input-group">

							<select class="form-control"
								ng-options="categoria.id as categoria.name for categoria in ctrl.categorias track by categoria.id"
								ng-model="ctrl.newProducto.categoria.id"></select>

							<div class="input-group-append">
								<button class="btn btn-outline-secondary" type="button"
									ng-click="ctrl.addProducto(ctrl.newProducto)">Agregar Jugador</button>
							</div>
						</div>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
<script
		src="<%=request.getContextPath()%>/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>

</html>