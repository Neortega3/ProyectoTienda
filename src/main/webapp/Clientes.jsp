<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="co.edu.unbosque.ciclo3TiendaGen.Clientes"%>
<%@ page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Styles.css">
<title>Clientes</title>
</head>
<body>

	<div class="menubox2">
	<h2>Gestión de clientes</h2>
	<hr>
	<form method="get" action="Controlador">	
	
		<input type="hidden" name="menu" value="Clientes">
		<table align="center">
		<tr> 
			<td colspan=2><label id="icon" for="name"><img src="./images/driver-license.png" width="17px" height="17px"><i class="icon-user"></i></label>
  			<input type="text" name="cedula_cliente" placeholder="Cédula Cliente" value="${usuarioSeleccionado.getCedula_cliente()}" required/></td>
  		
			<td colspan=2><label id="icon" for="name"><img src="./images/phone-call.png" width="17px" height="17px"><i class="icon-user"></i></label>
  			<input type="text" name="telefono_cliente" placeholder="Teléfono" value="${usuarioSeleccionado.getTelefono_cliente()}" required/></td>
		</tr>
		
		<tr> 
			<td colspan=2><label id="icon" for="name"><img src="./images/id-card.png" width="17px" height="17px"><i class="icon-user"></i></label>
  			<input type="text" name="nombre_cliente" placeholder="Nombre Completo" value="${usuarioSeleccionado.getNombre_cliente()}" required/></td>
			
			<td colspan=2><label id="icon" for="name"><img src="./images/mail.png" width="17px" height="17px"><i class="icon-user"></i></label>
  			<input type="text" name="email_cliente" placeholder="Email" value="${usuarioSeleccionado.getEmail_cliente()}" required/></td>
		</tr>
		
		<tr> 
			<td colspan=2><label id="icon" for="name"><img src="./images/navigator.png" width="17px" height="17px"><i class="icon-user"></i></label>
  			<input type="text" name="direccion_cliente" placeholder="Dirección" value="${usuarioSeleccionado.getDireccion_cliente()}" required/></td>
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
                <th scope="col">Teléfono</th>
                <th scope="col">Nombre</th>
                <th scope="col">Email</th>
                <th scope="col">Dirección</th>
           </tr>
        </thead>
        <tbody>
			<% ArrayList<Clientes> lista = (ArrayList<Clientes>) request.getAttribute("lista");
			for (Clientes cliente:lista){
			%>
			<tr>
				<td><%=cliente.getCedula_cliente()%></td>
				<td><%=cliente.getTelefono_cliente()%></td>
				<td><%=cliente.getNombre_cliente()%></td>
				<td><%=cliente.getEmail_cliente()%></td>
				<td><%=cliente.getDireccion_cliente()%></td>
				<td> 
	               <a class="btn btn-warning" href="Controlador?menu=Clientes&accion=Cargar&id=<%=cliente.getCedula_cliente()%>">Editar</a>
	               <a class="btn btn-danger" href="Controlador?menu=Clientes&accion=Eliminar&id=<%=cliente.getCedula_cliente()%>">Eliminar</a>
            	</td>
            </tr>
            <%}%>
        </tbody>
    </table>
	</div>		
				
	</div>

</body>
</html>