<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="#">Makitta - shop</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
				<li class="nav-item active"><a class="nav-link"
					href="<%=request.getContextPath()%>/tienda/productos">Inicio <span
						class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item">
            <a class="nav-link" href="<%=request.getContextPath()%>/producto/listarproductos">Ver productos</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="<%=request.getContextPath()%>/producto/add">Agregar productos</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>