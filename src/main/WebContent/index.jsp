<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Facturas y Detalles Facturas</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
        }
        #sidebar {
            width: 250px;
            height: 100vh;
            background-color: #343a40;
            color: #fff;
            position: fixed;
            top: 0;
            left: 0;
            padding: 20px;
            overflow-y: auto;
            border-right: 1px solid #ccc;
        }
        #sidebar h2 {
            color: #fff;
            font-size: 1.5rem;
            margin-bottom: 30px;
        }
        #sidebar .nav-link {
            color: #fff;
            padding: 10px;
            border-radius: 5px;
            margin-bottom: 10px;
            transition: background-color 0.3s;
        }
        #sidebar .nav-link:hover {
            background-color: #495057;
            text-decoration: none;
        }
        .navbar {
            background-color: #343a40; /* Color de fondo de la navbar */
            padding: 0.5rem 1rem; /* Espaciado interno de la navbar */
        }
        .navbar-brand {
            color: #fff; /* Color del texto de la navbar */
            font-size: 1.5rem; /* Tamaño de la fuente */
        }
        .navbar-brand:hover {
            color: #e2e6ea; /* Color del texto al pasar el ratón */
        }
        .container-fluid {
        	margin-top: 56px;
            margin-left: 220px;
            padding: 40px;
        }
        .content {
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 40px;
        }
    </style>
</head>
<body>
    <nav class="navbar fixed-top" >
        <a class="navbar-brand" href="#"> <h1>Compras, Bodega e Inventario</h1> </a>
    </nav>

    <div id="sidebar">
        <h2 class="text-center">Menu</h2>
        <ul class="nav flex-column">
            <!-- Aquí va el contenido del sidebar -->
            <li class="nav-item">
                <a class="nav-link" href="/ismac-camaleon-sabroso/paginaWeb/">
                    <i class="fa-solid fa-box"></i> Servicio al Cliente
                </a>
            </li>
            <!-- Más elementos del menú -->
             <li class="nav-item">
                <a class="nav-link" href="/ismac-camaleon-sabroso/detallepedidos/findAll">
                    <i class="fa-solid fa-box"></i> Detalles Pedidos
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/ismac-camaleon-sabroso/DetallesCompras/findAll">
                    <i class="fa-solid fa-box-open"></i> Detalles Compras
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/ismac-camaleon-sabroso/detalleplatillos/findAll">
                    <i class="fa-solid fa-utensils"></i> Detalle Platillos
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/ismac-camaleon-sabroso/devoluciones/findAll">
                    <i class="fa-solid fa-undo"></i> Devoluciones
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/ismac-camaleon-sabroso/envios/findAll">
                    <i class="fa-solid fa-truck"></i> Envios
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/ismac-camaleon-sabroso/facturas/findAll">
                    <i class="fa-solid fa-file-invoice"></i> Facturas
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/ismac-camaleon-sabroso/inventarios/findAll">
                    <i class="fa-solid fa-warehouse"></i> Inventarios
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/ismac-camaleon-sabroso/pago/findAll">
                    <i class="fa-solid fa-credit-card"></i> Pagos
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/ismac-camaleon-sabroso/pedidos/findAll">
                    <i class="fa-solid fa-list-alt"></i> Pedidos
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/ismac-camaleon-sabroso/platillos/findAll">
                    <i class="fa-solid fa-concierge-bell"></i> Platillos
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/ismac-camaleon-sabroso/productos/findAll">
                    <i class="fa-solid fa-cube"></i> Productos
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/ismac-camaleon-sabroso/promociones/findAll">
                    <i class="fa-solid fa-tags"></i> Promociones
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/ismac-camaleon-sabroso/proveedores/findAll">
                    <i class="fa-solid fa-truck-loading"></i> Proveedores
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/ismac-camaleon-sabroso/sucursales/findAll">
                    <i class="fa-solid fa-store"></i> Sucursales
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/ismac-camaleon-sabroso/tipopagos/findAll">
                    <i class="fa-solid fa-money-bill-wave"></i> Tipo Pago
                </a>
            </li>
            <!-- <li class="nav-item">
                <a class="nav-link" href="/ismac-camaleon-sabroso/vendedores_promociones/findAll">
                    <i class="fa-solid fa-user-tag"></i> Vendedores Promociones
                </a>
            </li> -->
            <li class="nav-item">
                <a class="nav-link" href="/ismac-camaleon-sabroso/vendedores/findAll">
                    <i class="fa-solid fa-user-tie"></i> Vendedores
                </a>
            </li>
            <!-- <li class="nav-item">
                <a class="nav-link" href="/ismac-camaleon-sabroso/clientes_promociones/findAll">
                    <i class="fa-solid fa-user-plus"></i> Clientes Promociones
                </a>
            </li> -->
            <li class="nav-item">
                <a class="nav-link" href="/ismac-camaleon-sabroso/compras/findAll">
                    <i class="fa-solid fa-shopping-cart"></i> Compras
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/ismac-camaleon-sabroso/clientes/findAll">
                    <i class="fa-solid fa-users"></i> Clientes
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/ismac-camaleon-sabroso/bodegas/findAll">
                    <i class="fa-solid fa-boxes"></i> Bodegas
                </a>
            </li>
            
        </ul>
    </div>

    <!-- Main Content -->
    <div class="container-fluid" style="margin-top: 56px;">
        <div class="content p-3">
            Contenido adicional aquí
        </div>
    </div>

    <!-- Optional JavaScript; choose one of the two! -->
    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
</body>
</html>
