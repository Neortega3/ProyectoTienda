<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Styles.css">
<title>Usuarios</title>
</head>
<body>

<h1 align="center">Usuarios</h1>

<h6 align="center"> Hoy es:
<%= new java.util.Date() %>
</h6>

	<div class="menubox2">
	<h2>Gestión de usuarios</h2>
	<hr>
	<form method="get" action="./DemoServlet">	
		<table align="center">
		<tr> 
			<td colspan=2><label id="icon" for="name"><img src="./images/driver-license.png" width="17px" height="17px"><i class="icon-user"></i></label>
  			<input type="text" name="cedula_usuario" id="name" placeholder="Cédula Usuario" required/></td>
  		
			<td colspan=2><label id="icon" for="name"><img src="./images/user.png" width="17px" height="17px"><i class="icon-user"></i></label>
  			<input type="text" name="usuario" id="name" placeholder="Usuario" required/></td>
		</tr>
		
		<tr> 
			<td colspan=2><label id="icon" for="name"><img src="./images/id-card.png" width="17px" height="17px"><i class="icon-user"></i></label>
  			<input type="text" name="nombre_usuario" id="name" placeholder="Nombre Completo" required/></td>
			
			<td colspan=2><label id="icon" for="name"><img src="./images/padlock.png" width="17px" height="17px"><i class="icon-user"></i></label>
  			<input type="text" name="contraseña_usuario" id="name" placeholder="Contraseña" required/></td>
		</tr>
		
		<tr> 
			<td colspan=2><label id="icon" for="name"><img src="./images/mail.png" width="17px" height="17px"><i class="icon-user"></i></label>
  			<input type="text" name="email_usuario" id="name" placeholder="Email" required/></td>
		</tr>
		
		<tr>
			<td><a href="" class="button">Crear</a></td>
  			<td><a href="" class="button">Consultar</a></td>
  			<td><a href="" class="button">Actualizar</a></td>
  			<td><a href="" class="button">Borrar</a></td>
  			<td><a href="" class="button">Listar Usu.</a></td>
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