<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<link rel="stylesheet" href="/TiendaVirtualNewYork/Letra4.css" media="all" />
<link rel="stylesheet" href="/TiendaVirtualNewYork/EstiloTabla.css" media="all" />
<link rel="stylesheet" href="/TiendaVirtualNewYork/Letra5.css" media="all" />
<link rel="stylesheet" href="/TiendaVirtualNewYork/Letra8.css" media="all" />
<link rel="stylesheet" href="/TiendaVirtualNewYork/Titulo2.css" media="all" />
<link rel="stylesheet" href="/TiendaVirtualNewYork/TituloHumo3.css" media="all" />

<head>
<meta charset="ISO-8859-1">
<title>Registro de Usuarios</title>

<script>
	function validarEmail(valor) {
		if (/^[-\w.%+]{1,64}@(?:[A-Z0-9-]{1,63}\.){1,125}[A-Z]{2,63}$/i.test(valor)) {
			alert("La direcci�n de email " + valor + " es correcta.");
			return true;
		} else {
			alert("La direcci�n de email es incorrecta.");
			return false;
		}
	}

	function sendData() {
		var email = validarEmail(document.getElementById("txtEmail").value.trim());
		var valido = validate();
		if (valido &&= email) {
			alert("Los datos son v�lidos")

			var IDcard = document.getElementById("txtIDcard").value.trim();
			var Name = document.getElementById("txtName").value.trim();
			var Email = document.getElementById("txtEmail").value.trim();
			var User = document.getElementById("txtUser").value.trim();
			var Password = document.getElementById("txtPassword").value.trim();

			var Delivery = new XMLHttpRequest();

			var url = '/TiendaVirtualNewYork/CreateUser';
			var Parameters = "IDcard=" + IDcard + "&" + "Name=" + Name + "&"
					+ "Email=" + Email + "&" + "User=" + User + "&"
					+ "Password=" + Password;
			Delivery.open('POST', url, true);

			//Send the proper header information along with the request
			Delivery.setRequestHeader('Content-type',
					'application/x-www-form-urlencoded');

			Delivery.onreadystatechange = function() {//Call a function when the state changes.
				if (Delivery.readyState == 4 && Delivery.status == 200) {
					// Lanza una alerta de que se mandaron los datos
					// alert(Delivery.responseText);
					var myDiv = document.getElementById("dvTabla");
					myDiv.innerHTML = "<b>" + Delivery.responseText + "</b>";
				}
			}
			Delivery.send(Parameters);

		} else {
			alert("Los datos no son v�lidos")
		}
		return;
	}

	function validate() {
		var txtUser = document.getElementById("txtUser");
		var txtPassword = document.getElementById("txtPassword");
		var txtIDcard = document.getElementById("txtIDcard");

		if (txtUser.value.length == 0 | txtPassword.value.length == 0
				| txtIDcard.value.length == 0) {
			alert("La c�dula, usuario y contrase�a deben ser cambios requeridos")
			return false;
		}

		else {
			return true;
		}
	}
</script>
</head>
 <body> 
	<center>
	<br></br>
    <br></br>
    <br></br>
    <br></br>
    <center>
    <h1 class="lines-effect">Secci&oacute;n de agregar Usuarios</h1>
    <br></br>
    <br></br>
    <br></br>
		 <!--  El m�todo post, hace que se ejectu get pero no muestra nada en URL -->
		<label for="txtIDcard">C�dula: </label> <input type="number" class="fondo"
			id="txtIDcard" name="IDcard"> <br> <br> <label
			for="txtName">Nombre: </label> <input type="text" class="fondo1" id="txtName"
			name="Name"> <br> <br> <label for="txtEmail">Email: </label> <input type="email" class="fondo2" id="txtEmail" name="Email"> <br> <br>
		<label for="txtUser">Usuario: </label> <input type="text" class="fondo3" id="txtUser"
			name="User"> <br> <br> <label for="txtPassword">Contrase�a:
		</label> <input type="password" class="fondo4" id="txtPassword" name="Password"> <br></br>
	</center>	
	<br></br>
    <br></br>
<center>
<a href="#" class="button" onclick="sendData()">Validar para guardar</a>
</center>
<br></br>
<br></br>
<center>
<a href="#" class="button2" onclick="location.href='/TiendaVirtualNewYork/User/Menu.jsp'">Men� Usuario</a>
</center>
    <!--  
			<button onclick="sendData()" class="btnEffect1">Validar para guardar</button>
		<br></br>
	    <br></br>
	    <center>
		<button onclick="location.href='/TiendaVirtualNewYork/User/Menu.jsp'" class="btnEffect2">Men� Usuario</button>
		</center>-->
  		<link rel="stylesheet" href="/TiendaVirtualNewYork/Designxd.css" media="all" />
		<link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
	</head>
</body>
	<div class="sidebar">
		<div class="logo_content">
			<div class="logo">
				<i class='bx bxl-c-plus-plus'></i>
				<div class="logo_name">JKServices</div>
			</div>
			<i class='bx bx-menu' id="btn" ></i>
		</div>	
		<ul class="nav_list">
			<li>
				<a href="#">
					<i class='bx bx-food-menu'></i>
					<span class="links_name">Opciones Para:</span>
				</a>
				<!-- <span class="tooltip">Mis Archivos</span>   -->
			</li>
			<li>
				<a href="#">
					<i class='bx bx-user'></i>
					<span onclick="location.href='http://localhost:8080/TiendaVirtualNewYork/User/Menu.jsp'" class="links_name">Usuarios</span>
				</a>
				 <span class="tooltip">Usuarios</span>  
			</li>
			<li>
				<a hreh="#">
					<i class='bx bx-group'></i>
					<span onclick="location.href='http://localhost:8080/TiendaVirtualNewYork/Costumer/Menu.jsp'" class="links_name">Clientes</span>
				</a>
				 <span class="tooltip">Clientes</span>  
			</li>
			<li>
				<a hreh="#">
					<i class='bx bx-briefcase' ></i>					
					<span onclick="location.href='http://localhost:8080/TiendaVirtualNewYork/Supplier/Menu.jsp'" class="links_name">Proveedores</span>
				</a>
				 <span class="tooltip">Proveedores</span>  
			</li>
			<li>
				<a hreh="#">
					<i class='bx bx-gift' ></i>
					<span onclick="location.href='http://localhost:8080/TiendaVirtualNewYork/Product/Menu.jsp'" class="links_name">Productos</span>
				</a>
				 <span class="tooltip">Productos</span>  
			</li>
			  <!--  <li>
				<a hreh="#">
					<i class='bx bx-folder' ></i>
					<span class="links_name">Mis Archivos</span>
				</a>
				- <span class="tooltip">Mis Archivos</span>  
			</li>
			<li>
				<a hreh="#">
					<i class='bx bx-cart-alt' ></i>
					<span class="links_name">Pedidos</span>
				</a>
				 <span class="tooltip">Pedidos</span>  
			</li>
			<li>
				<a hreh="#">
					<i class='bx bx-heart' ></i>
					<span class="links_name">Salud</span>
				</a>
				 <span class="tooltip">Salud</span>  
			</li>
			<li>
				<a hreh="#">
					<i class='bx bx-cog' ></i>
					<span class="links_name">Ajustes</span>
				</a>
				 <span class="tooltip">Ajustes</span>  
			</li>
		</ul>-->
		<div class="profile_content">
			<div class="profile">
				<div class="profile_details">
					<div class="name_job">
					<img src="pp.jpg" alt="">
						<div class="name">Juan L�pez</div>
						<div class="job">Dise�o Web</div>
					</div>
				</div>
				<i class='bx bx-log-out' id="log_out" ></i>
			</div>
		</div>
	</div>
	<div class="home_content">
		<div class="text"></div>
	</div>
	
	<script>
	let btn = document.querySelector("#btn");
	let sidebar = document.querySelector(".sidebar");
	let searchBtn = document.querySelector(".bx-search");
	
	btn.onclick = function() {
		sidebar.classList.toggle("active");
	}
	searchBtn.onclick = function() {
		sidebar.classList.toggle("active");
	}
		</script>			
	</body>		
	</html>