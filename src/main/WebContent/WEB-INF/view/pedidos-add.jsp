<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sistema libreria</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
	integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
	
	<section class="px-5 py-5">
		<div class="container" >
			<h1>Actulizar pedidos</h1>
			<form action="add" method="post" class="needs-validation" novalidate="novalidate">
				<input type="hidden" id="idPedidos" name="idPedidos" value="${pedidos.idPedidos}"/>
				<div class="from-group">
					<label for="FechaPedido" class="form-label">Fecha del pedido</label>
					<input class="form-control" type="date" id="FechaPedido" name="FechaPedido" value="${fn:substring(pedidos.fechaPedido,0,10)}"/>
				</div>
				
				<div class="from-group">
					<label for="FechaPedido" class="form-label">Provedor del Pedido</label>
					<input class="form-control" type="text" id="IdProveedor" name="IdProveedor" value="${pedidos.idProveedor}"/>
				</div>

				<div class="from-group">
					<label for="FechaPedido" class="form-label">Sucursalar del Pedido</label>
					<input class="form-control" type="text" id="IdSucursal" name="IdSucursal" value="${pedidos.idSucursal}"/>
				</div>

				<div class="from-group">
					<label for="FechaPedido" class="form-label">Cliente del pedido</label>
					<input class="form-control" type="text" id="IdCliente" name="IdCliente" value="${pedidos.idCliente}"/>
				</div>

				<div class="from-group">
					<label for="FechaPedido" class="form-label">Total</label>
					<input class="form-control" type="text" id="Total" name="Total" value="${pedidos.total}"/>
				</div>
				
				<br>
				
				<button type="submit" class="btn btn-success" >Agregar</button>
				<button class="btn btn-danger"  onclick="window.location.href=/ismac-camaleon-sabroso/pedidos/findAll'; return false;">Cancelar</button>
			</form>
		</div>
	</section>
	
			<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>
	
	




<script>
	(() => {
		'use strict';
		
		const forms = document.querySelectorAll('.needs-validation');
		
		Array.from(forms).forEach(form => {
			form.addEventListener('submit', event => {
				if (!form.checkValidity()) {
					event.preventDefault();
					event.stopPropagation();
				}
				form.classList.add('was-validated');
			}, false);
		});
	})();
</script>
	
</body>
</html>