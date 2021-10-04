<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="co.edu.unbosque.ciclo3TiendaGen.Usuarios"%>
<%@ page import="java.util.ArrayList"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Styles.css">
<title>Usuarios</title>
</head>
<body>

	<div class="menubox2">
	<h2>Gestión de usuarios</h2>
	<hr>
	<form method="get" action="Controlador">
	
		<input type="hidden" name="menu" value="Usuarios">	
		<table align="center">
		<tr> 
			<td colspan=2><label id="icon" for="name"><img src="./images/driver-license.png" width="17px" height="17px"><i class="icon-user"></i></label>
  			<input type="text" name="cedula_usuario" placeholder="Cédula Usuario" value="${usuarioSeleccionado.getCedula_usuario()}" required/></td>
  		
			<td colspan=2><label id="icon" for="name"><img src="./images/user.png" width="17px" height="17px"><i class="icon-user"></i></label>
  			<input type="text" name="usuario" placeholder="Usuario" value="${usuarioSeleccionado.getUsuario()}" required/></td>
		</tr>
		
		<tr> 
			<td colspan=2><label id="icon" for="name"><img src="./images/id-card.png" width="17px" height="17px"><i class="icon-user"></i></label>
  			<input type="text" name="nombre_usuario" placeholder="Nombre Completo" value="${usuarioSeleccionado.getNombre_usuario()}" required/></td>
			
			<td colspan=2><label id="icon" for="name"><img src="./images/padlock.png" width="17px" height="17px"><i class="icon-user"></i></label>
  			<input type="text" name="contraseña_usuario" placeholder="Contraseña" value="${usuarioSeleccionado.getPassword_usuario()}" required/></td>
		</tr>
		
		<tr> 
			<td colspan=2><label id="icon" for="name"><img src="./images/mail.png" width="17px" height="17px"><i class="icon-user"></i></label>
  			<input type="text" name="email_usuario" placeholder="Email" value="${usuarioSeleccionado.getEmail_usuario()}" required/></td>
		</tr>
		
		<tr>
			<td><input type="submit" class="button" name="accion" value="Crear"></td>
			<td><input type="submit" class="button" name="accion" value="Actualizar"></td>
		</tr>	
		
		</table>
			
	</form>
	
	<div>
    <table align="center">
        <thead>
            <tr>
                <th scope="col">Cedula</th>
                <th scope="col">Nombre</th>
                <th scope="col">Email</th>
                <th scope="col">Usuario</th>
                <th scope="col">Password</th>
           </tr>
        </thead>
        <tbody>
            <% ArrayList<Usuarios> lista= (ArrayList<Usuarios>) request.getAttribute("lista");
			for (Usuarios usuario:lista){
			%>
			<tr>
				<td><%=usuario.getCedula_usuario()%></td>
				<td><%=usuario.getNombre_usuario()%></td>
				<td><%=usuario.getEmail_usuario()%></td>
				<td><%=usuario.getUsuario()%></td>
				<td><%=usuario.getPassword_usuario()%></td>
				<td> 
	               <a class="btn btn-warning" href="Controlador?menu=Usuarios&accion=Cargar&id=<%=usuario.getCedula_usuario()%>">Editar</a>
	               <a class="btn btn-danger" href="Controlador?menu=Usuarios&accion=Eliminar&id=<%=usuario.getCedula_usuario()%>">Eliminar</a>
            	</td>
            </tr>
            <%}%>
        </tbody>
    </table>
</div>		
	</div>
	
	
	
	
</body>
</html>