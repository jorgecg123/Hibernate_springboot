<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<div class="col-lg-3">

	<h1 class="my-4">Mi carrito</h1>
	
	
	
	
	
	<p class="list-group-item disabled"><small>Elementos en el carrito: ${fn:length(carrito.productos)}</small></p>
	<br>

	<c:forEach var="producto" items="${carrito.productos}">
		<ul class="pagination pagination-sm">

			<li class="page-item disabled" style="width: 100%"><a
				class="page-link" href="#">${producto.key}<span class="badge">${producto.value}</span></a></li>

			<li class="page-item"><form
					action="<%=request.getContextPath()%>/tienda/remove-to-carr"
					method="post">
					<input type="hidden" name="productos" value="${producto.key}"><input
						class="page-link" Type="submit" value="-">

				</form></li>

			<li class="page-item active">
				<form action="<%=request.getContextPath()%>/tienda/add-to-carr"
					method="post">
					<input type="hidden" name="productos" value="${producto.key}"><input
						class="page-link" Type="submit" value="+">

				</form>


			</li>
		</ul>
	</c:forEach>

</div>
