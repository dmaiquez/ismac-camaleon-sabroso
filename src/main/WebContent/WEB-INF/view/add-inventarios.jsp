<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Agregar/Modificar</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />    
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Playfair Display', serif;
            background: linear-gradient(to right, #ece9e6, #ffffff);
            margin: 0;
            padding: 20px;
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        h1 {
            color: #4CAF50; /* Verde claro */
            margin-bottom: 20px;
            font-size: 2.5em;
            text-align: center;
        }

        .form-container {
            width: 90%;
            max-width: 600px;
            padding: 30px;
            background-color: #fff;
            border-radius: 12px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
            text-align: center;
        }

        .form-group {
            margin-bottom: 15px;
            text-align: left;
        }

        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        .form-group input {
            width: calc(100% - 22px);
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }

        button {
            padding: 12px 25px;
            font-size: 1.2em;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            margin: 15px;
            transition: background-color 0.3s, transform 0.3s;
            outline: none;
        }

        button:hover {
            transform: translateY(-3px);
        }

        .btn-submit {
            background-color: #ff4d4d; /* Rojo */
            color: white;
        }

        .btn-submit:hover {
            background-color: #e63946; /* Rojo más oscuro */
        }

        .cancel-button {
            background-color: #28a745; /* Verde */
            color: white;
        }

        .cancel-button:hover {
            background-color: #218838; /* Verde más oscuro */
        }
    </style>
</head>
<body>

<div class="form-container">
    <h1>Agregar/Modificar</h1>

    <form action="add" method="post" class="needs-validation" novalidate>

        <input type="hidden" id="idInventario" name="idInventario" value="${inventarios.idInventario}" />
        
        <div class="form-group">
            <label for="idProducto">Id Producto</label>
            <input class="form-control" type="text" id="idProducto" name="idProducto" value="${inventarios.idProducto}" required />
        </div>
        
        <div class="form-group">
            <label for="idBodega">Id Bodega</label>
            <input class="form-control" type="text" id="idBodega" name="idBodega" value="${inventarios.idBodega}" required />
        </div>
        
        <div class="form-group">
            <label for="cantidad">Cantidad</label>
            <input class="form-control" type="text" id="cantidad" name="cantidad" value="${inventarios.cantidad}" required />
        </div>
        
        <div class="button-group">
            <button type="submit" class="btn-submit">Guardar</button>
            <button type="button" class="cancel-button" onclick="window.location.href='/ismac-camaleon-sabroso/inventarios/findAll';">Cancelar</button>
        </div>
    </form>
</div>



<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>

	<script type="text/javascript">
	
	    // Example starter JavaScript for disabling form submissions if there are invalid fields
	(() => {
	  'use strict'

	  // Fetch all the forms we want to apply custom Bootstrap validation styles to
	  const forms = document.querySelectorAll('.needs-validation')

	  // Loop over them and prevent submission
	  Array.from(forms).forEach(form => {
	    form.addEventListener('submit', event => {
	      if (!form.checkValidity()) {
	        event.preventDefault()
	        event.stopPropagation()
	      }

	      form.classList.add('was-validated')
	    }, false)
	  })
	})()
	
	</script>

</body>
</html>
