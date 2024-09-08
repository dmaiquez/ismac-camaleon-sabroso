<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Detalles Devoluciones</title>
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

        .form-group input[type="number"] {
            -moz-appearance: textfield;
        }

        .form-group input[type="number"]::-webkit-inner-spin-button,
        .form-group input[type="number"]::-webkit-outer-spin-button {
            -webkit-appearance: none;
            margin: 0;
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
            background-color: #e63946; /* Rojo m�s oscuro */
        }

        .cancel-button {
            background-color: #28a745; /* Verde */
            color: white;
        }

        .cancel-button:hover {
            background-color: #218838; /* Verde m�s oscuro */
        }
    </style>
</head>
<body>

<div class="form-container">
    <h1>Detalles Devoluciones</h1>

    <form action="add" method="post">

        <input type="hidden" id="idDetalleDevolucion" name="idDetalleDevolucion" value="${detalleDevolucion.idDetalleDevolucion}" />
        
        <div class="form-group">
            <label for="idDevolucion">Id Devoluci�n</label>
            <input type="text" id="idDevolucion" name="idDevolucion" value="${detalleDevolucion.idDevolucion}" />
        </div>
        
        <div class="form-group">
            <label for="idProducto">Id Producto</label>
            <input type="text" id="idProducto" name="idProducto" value="${detalleDevolucion.idProducto}" />
        </div>
        
        <div class="form-group">
            <label for="cantidad">Cantidad</label>
            <input type="number" id="cantidad" name="cantidad" value="${detalleDevolucion.cantidad}" />
        </div>
        
        <div class="form-group">
            <label for="precioUnitario">Precio Unitario</label>
            <input type="text" id="precioUnitario" name="precioUnitario" value="${detalleDevolucion.precioUnitario}" />
        </div>
        
        <div class="button-group">
            <button type="submit" class="btn-submit">Guardar</button>
            <button type="button" class="cancel-button" onclick="window.location.href='/ismac-camaleon-sabroso/detallesdevoluciones/findAll';">Cancelar</button>
        </div>
    </form>
</div>

</body>
</html>
