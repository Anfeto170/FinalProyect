<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="ISO-8859-1">

<title>Iniciar Sesi�n</title>
<script>
	function redireccionar() {
		window.location = "/TiendaVirtualNewYork/Menu.jsp";
	}

	function search() {
		var sUser = document.getElementById("txtUser").value.trim();
		var pUser = document.getElementById("txtPassword").value.trim();

		if (sUser.trim() == "") {
			sUser = "null";
		}

		var http = new XMLHttpRequest();
		var url = '/TiendaVirtualNewYork/logInUser';
		var params = "sUser=" + sUser + "&" + "pUser=" + pUser;
		http.open('POST', url, true);

		//Send the proper header information along with the request
		http.setRequestHeader('Content-type',
				'application/x-www-form-urlencoded');

		http.onreadystatechange = function() {//Call a function when the state changes.
			if (http.readyState == 4 && http.status == 200) {
				alert(http.responseText);
				if (http.responseText === "Ingreso Exitoso") {
					setTimeout("redireccionar()", 500);
				}

			}
		}
		http.send(params);
	}
</script>
<font face="Comic Sans MS,arial">
</head>
<body>
	<br></br>
	<br></br>
	<br></br>
	<div align='center'>
		<h1>Nombre de la Tienda</h1>
	</div>
	<br></br>
	<br></br>

	<div align='center'>
		<table>
			<tr>
				<td><label for="txtUser">Usuario:</label></td>
				<td><input type="text" id="txtUser" name="User"></td>
				<td><label for="txtPassword">Contrase�a:</label></td>
				<td><input type="password" id="txtPassword" name="Pasword"></td>
				<td><button onclick="search()">Entrar</button></td>
			</tr>
		</table>
	</div>

	<br></br>
	<br></br>
	<br></br>
	<br>
	<br>
	<div id="dvResult"></div>
</body>
</html>