<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Styles.css">
<title>Proveedores</title>
</head>
<body>

<h1 align="center">Proveedores</h1>

<h6 align="center"> Hoy es:
<%= new java.util.Date() %>
</h6>

	<div class="menubox2">
	<h2>Gestión de Proveedores</h2>
	<hr>
	<form method="get" action="./DemoServlet">	
		<table align="center">
		<tr> 
			<td colspan=2><label id="icon" for="name"><img src="./images/driver-license.png" width="17px" height="17px"><i class="icon-user"></i></label>
  			<input type="text" name="nit_proveedor" id="name" placeholder="NIT Proveedor" required/></td>
  		
			<td colspan=2><label id="icon" for="name"><img src="./images/phone-call.png" width="17px" height="17px"><i class="icon-user"></i></label>
  			<input type="text" name="telefono_proveedor" id="name" placeholder="Teléfono" required/></td>
		</tr>
		
		<tr> 
			<td colspan=2><label id="icon" for="name"><img src="./images/id-card.png" width="17px" height="17px"><i class="icon-user"></i></label>
  			<input type="text" name="nombre_proveedor" id="name" placeholder="Nombre Proveedor" required/></td>
			
			<td colspan=2><label id="icon" for="name"><img src="./images/buildings.png" width="17px" height="17px"><i class="icon-user"></i></label>
  			<input type="text" name="ciudad" id="name" placeholder="Ciudad" required/></td>
		</tr>
		
		<tr> 
			<td colspan=2><label id="icon" for="name"><img src="./images/navigator.png" width="17px" height="17px"><i class="icon-user"></i></label>
  			<input type="text" name="direccion_proveedor" id="name" placeholder="Dirección" required/></td>
		</tr>
	
		<tr>
			<td><a href="" class="button">Consultar</a></td>
  			<td><a href="" class="button">Crear</a></td>
  			<td><a href="" class="button">Actualizar</a></td>
  			<td><a href="" class="button">Borrar</a></td>
		</tr>	
		
		</table>
			
	</form>
		<hr>
		<h3>Volver al Menú Principal</h3>
		<table align="center">
			<tr>
				<td><a href="" class="button">Reportes</a>
  					<a href="" class="button">Productos</a>
  					<a href="" class="button">Ventas</a>
  					<a href="" class="button">Proveedores</a>
  					<a href="" class="button">Clientes</a>
  					<a href="" class="button">Usuarios</a>
  				</td>
			</tr>
		</table>
		
	</div>

</body>
</html>