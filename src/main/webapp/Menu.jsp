<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Styles.css">
<title>Menú Mi Tiendita de Barrio</title>
</head>
<body>

<h6 align="center"> Hoy es:
<%= new java.util.Date() %>

</h6>

	<div class="menubox">
	<h1 align="center">Menú Principal</h1>
	<h6 align="center">Bienvenido ${usuario.getNombre_usuario()}</h6>
	<hr>
	
  		<a href="Controlador?menu=Proveedores" class="button" target="myFrame">Proveedores</a>
  		<a href="Controlador?menu=Clientes&accion=Listar" class="button" target="myFrame">Clientes</a>
  		<a href="Controlador?menu=Usuarios&accion=Listar" class="button" target="myFrame">Usuarios</a>
  		<a href="Controlador?menu=Productos" class="button" target="myFrame">Productos</a>
  		<a href="" class="button">Reportes</a>
  		<a href="" class="button">Ventas</a>
	
	</div>
	
	<div class="embed-container">
		<iframe name="myFrame">
		</iframe>
	</div>
</body>
</html>