<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>




			<br>
			<input type="search" placeholder="Buscar..." id="buscador" class="form-control">
			<br>


<div class="row" id="productos" >
<%-- <div class="col-lg-4 col-md-6 mb-4" id="producto">
	<div class="card h-100">
		<a href="#"><img class="card-img-top"
			src="<%=request.getContextPath()%>/img/rotomartillo.jpg" alt=""></a>
		<div class="card-body">
			<h4 class="card-title">
				<a href="#">Rotomartillo</a>
			</h4>
			<h5>$499.99</h5>
			<p class="card-text">Lorem ipsum dolor sit amet, consectetur
				adipisicing elit. Amet numquam aspernatur!</p>
			<small class="text-muted">&#9733; &#9733; &#9733; &#9733;
				&#9734;</small>
		</div>
		<div class="card-footer">
			<form action="<%=request.getContextPath()%>/tienda/add-to-carr"
				method="post">
				<input type="hidden" name="productos" value="Rotomartillo"><input
					class="btn btn-primary btn-sm btn-block" Type="submit"
					value="Añadir al carrito">

			</form>

		</div>
	</div>
</div>

<div class="col-lg-4 col-md-6 mb-4" id="producto">
	<div class="card h-100">
		<a href="#"><img class="card-img-top"
			src="<%=request.getContextPath()%>/img/caladora.jpg" alt=""></a>
		<div class="card-body">
			<h4 class="card-title">
				<a href="#">Caladora</a>
			</h4>
			<h5>$899.99</h5>
			<p class="card-text">Lorem ipsum dolor sit amet, consectetur
				adipisicing elit. Amet numquam aspernatur! Lorem ipsum dolor sit
				amet.</p>
			<small class="text-muted">&#9733; &#9733; &#9733; &#9733;
				&#9734;</small>
		</div>
		<div class="card-footer">
			<form action="<%=request.getContextPath()%>/tienda/add-to-carr"
				method="post">
				<input type="hidden" name="productos" value="Caladora"><input
					class="btn btn-primary btn-sm btn-block" Type="submit"
					value="Añadir al carrito">

			</form>
		</div>
	</div>
</div>

<div class="col-lg-4 col-md-6 mb-4" id="producto">
	<div class="card h-100">
		<a href="#"><img class="card-img-top"
			src="<%=request.getContextPath()%>/img/sierra.jpg" alt=""></a>
		<div class="card-body">
			<h4 class="card-title">
				<a href="#">Sierra</a>
			</h4>
			<h5>$2,059.99</h5>
			<p class="card-text">Lorem ipsum dolor sit amet, consectetur
				adipisicing elit. Amet numquam aspernatur!</p>
			<small class="text-muted">&#9733; &#9733; &#9733; &#9733;
				&#9734;</small>
		</div>
		<div class="card-footer">
			<form action="<%=request.getContextPath()%>/tienda/add-to-carr"
				method="post">
				<input type="hidden" name="productos" value="Sierra"><input
					class="btn btn-primary btn-sm btn-block" Type="submit"
					value="Añadir al carrito">

			</form>
		</div>
	</div>
</div>

<div class="col-lg-4 col-md-6 mb-4" id="producto">
	<div class="card h-100">
		<a href="#"><img class="card-img-top"
			src="<%=request.getContextPath()%>/img/podadora.jpg" alt=""></a>
		<div class="card-body">
			<h4 class="card-title">
				<a href="#">Podadora</a>
			</h4>
			<h5>$5,599.99</h5>
			<p class="card-text">Lorem ipsum dolor sit amet, consectetur
				adipisicing elit. Amet numquam aspernatur!</p>
			<small class="text-muted">&#9733; &#9733; &#9733; &#9733;
				&#9734;</small>
		</div>
		<div class="card-footer">
			<form action="<%=request.getContextPath()%>/tienda/add-to-carr"
				method="post">
				<input type="hidden" name="productos" value="Podadora"><input
					class="btn btn-primary btn-sm btn-block" Type="submit"
					value="Añadir al carrito">

			</form>
		</div>
	</div>
</div>

<div class="col-lg-4 col-md-6 mb-4" id="producto">
	<div class="card h-100">
		<a href="#"><img class="card-img-top"
			src="<%=request.getContextPath()%>/img/pistola.jpg" alt=""></a>
		<div class="card-body">
			<h4 class="card-title">
				<a href="#">Pistola de calor</a>
			</h4>
			<h5>$399.99</h5>
			<p class="card-text">Lorem ipsum dolor sit amet, consectetur
				adipisicing elit. Amet numquam aspernatur! Lorem ipsum dolor sit
				amet.</p>
			<small class="text-muted">&#9733; &#9733; &#9733; &#9733;
				&#9734;</small>
		</div>
		<div class="card-footer">
			<form action="<%=request.getContextPath()%>/tienda/add-to-carr"
				method="post">
				<input type="hidden" name="productos" value="Pistola de calor"><input
					class="btn btn-primary btn-sm btn-block" Type="submit"
					value="Añadir al carrito">

			</form>
		</div>
	</div>
</div>

<div class="col-lg-4 col-md-6 mb-4" id="producto">
	<div class="card h-100">
		<a href="#"><img class="card-img-top"
			src="<%=request.getContextPath()%>/img/motosierra.jpg" alt=""></a>
		<div class="card-body">
			<h4 class="card-title">
				<a href="#">Motosierra</a>
			</h4>
			<h5>$3,599.99</h5>
			<p class="card-text">Lorem ipsum dolor sit amet, consectetur
				adipisicing elit. Amet numquam aspernatur!</p>
			<small class="text-muted">&#9733; &#9733; &#9733; &#9733;
				&#9734;</small>
		</div>
		<div class="card-footer">
			<form action="<%=request.getContextPath()%>/tienda/add-to-carr"
				method="post">
				<input type="hidden" name="productos" value="Motosierra"><input
					class="btn btn-primary btn-sm btn-block" Type="submit"
					value="Añadir al carrito">

			</form>
		</div>
	</div>
</div> --%>

</div>


<div class="col-lg-4 col-md-6 mb-4" style="display: none" id="oculto">
	<div class="card h-100">
		<a href="#"><img class="card-img-top"
			src="<%=request.getContextPath()%>/img/rotomartillo.jpg" alt="" id="img"></a>
		<div class="card-body">
			<h4 class="card-title">
				<a href="#" id="nombre">Rotomartillo</a>
			</h4>
			<h5 id="precio">$499.99</h5>
			<p class="card-text" id="descripcion">Lorem ipsum dolor sit amet, consectetur
				adipisicing elit. Amet numquam aspernatur!</p>
			<small class="text-muted">&#9733; &#9733; &#9733; &#9733;
				&#9734;</small>
		</div>
		<div class="card-footer">
			<form action="<%=request.getContextPath()%>/tienda/add-to-carr"
				method="post">
				<input type="hidden" name="productos" value="Rotomartillo" id="botonprod"><input
					class="btn btn-primary btn-sm btn-block" Type="submit"
					value="Añadir al carrito">

			</form>

		</div>
	</div>
</div>