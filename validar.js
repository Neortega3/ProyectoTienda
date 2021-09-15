function validacion() {
	var user = "admin";
	var pass = 123456;
		
	if(document.formulario.usuario.value == user && document.formulario.contrasena.value == pass){
		alert("Bienvenido a la tienda virtual");
		window.location= "gestionClientes.html";
	}else{
		alert("Usuario y/o contraseña incorrectos, intente nuevamente");
		window.location = "index.html";
	}
}