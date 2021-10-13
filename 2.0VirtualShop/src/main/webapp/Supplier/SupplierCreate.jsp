<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/TiendaVirtualNewYork/Letra4.css"
	media="all" />
<link rel="stylesheet" href="/TiendaVirtualNewYork/EstiloTabla.css"
	media="all" />
<link rel="stylesheet" href="/TiendaVirtualNewYork/Letra5.css"
	media="all" />
<link rel="stylesheet" href="/TiendaVirtualNewYork/Letra8.css"
	media="all" />
<link rel="stylesheet" href="/TiendaVirtualNewYork/Titulo2.css"
	media="all" />
<meta charset="ISO-8859-1">
<title>Registro de Proveedores</title>
<script>
	function validateFields() {
		if (document.getElementById("txtNIT").value.trim().length == 0) {
			alert("El NIT no puede ser vacio.");
			return false;
		} else if (document.getElementById("txtNombre").value.trim().length == 0) {
			alert("El nombre no puede ser vacio.");
			return false;
		} else if (document.getElementById("txtDireccion").value.trim().length == 0) {
			alert("La direcci�n no puede ser vacia.");
			return false;
		} else if (document.getElementById("txtTelefono").value.trim().length == 0) {
			alert("El telefono no puede ser vacio.");
			return false;
		} else {
			return true;
		}
	}

	function sendData() {
		if (!validateFields()) {
			return;
		} else {
			var nit = document.getElementById("txtNIT").value.trim();
			var nombre = document.getElementById("txtNombre").value.trim();
			var direccion = document.getElementById("txtDireccion").value
					.trim();
			var telefono = document.getElementById("txtTelefono").value.trim();
			var email = document.getElementById("txtEmail").value.trim();
			var sitioweb = document.getElementById("txtSitioWeb").value.trim();

			var http = new XMLHttpRequest();
			var url = '/TiendaVirtualNewYork/CreateSupplier';
			var params = "NIT=" + nit + "&" + "Name=" + nombre + "&"
					+ "Address=" + direccion + "&" + "Phone=" + telefono + "&"
					+ "Email=" + email + "&" + "Website=" + sitioweb;
			http.open('POST', url, true);

			//Send the proper header information along with the request
			http.setRequestHeader('Content-type',
					'application/x-www-form-urlencoded');

			http.onreadystatechange = function() {//Call a function when the state changes.
				if (http.readyState == 4 && http.status == 200) {
					alert(http.responseText);
				}
			}
			http.send(params);
		}
	}
</script>
</head>
</head>
<font face="Comic Sans MS,arial">
	<body>
		<center>
			<br></br> <br></br>
			<h1>Secci�n de agregar Provedores</h1>
			<br></br> <br></br> <br></br>
		</center>
		<!-- El m�todo post, hace que se ejecute get pero no muestra nada en URL -->
		<!-- Linea de c�digo de prueba -->

		<center>
			<label for="txtNIT">NIT: </label> <input type="number" class="fondo"
				id="txtNIT" name="NIT"> <br> <br> <label
				for="txtNombre">Nombre: </label> <input type="text" class="fondo1"
				id="txtNombre" name="nombre"> <br> <br> <label
				for="txtDireccion">Direcci�n: </label> <input type="text"
				class="fondo2" id="txtDireccion" name="direccion"><br>
			<br> <label for="txtTelefono">Tel�fono: </label> <input
				type="text" class="fondo3" id="txtTelefono" name="telefono">
			<br> <br> <label for="txtEmail">Email: </label> <input
				type="email" class="fondo4" id="txtEmail" name="Email"> <br></br>
			<label for="txtSitioWeb">Sitio Web: </label> <input type="url"
				class="fondo4" id="txtSitioWeb" name="sitioweb"> <br></br>
		</center>
		<br></br>
		<center>
			<button onclick="sendData()" class="btnEffect1">Enviar Datos</button>
		</center>
		<br></br>
		<center>
			<button
				onclick="location.href='/TiendaVirtualNewYork/Supplier/Menu.jsp'"
				class="btnEffect2">Men� Proveedor</button>
		</center>
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
		<!-- <font face="Comic Sans MS,arial">
		
			<br></br>
			<br></br>
			<center>
				<h1>Secci�n de agregar provedores</h1>
			</center>
			<table>
				<tr>
					<center>
						<br></br> <br></br>
						<!-- El m�todo post, hace que se ejectu get pero no muestra nada en URL -->
		<!-- <label for="txtNIT">NIT:</label> <input type="number" id="txtNIT"
							name="NIT"> <br> <br> <label for="txtNombre">Nombre:
						</label> <input type="text" id="txtNombre" name="nombre"> <br>
						<br> <label for="txtDireccion">Direcci�n: </label> <input
							type="text" id="txtDireccion" name="direccion"> <br>
						<br> <label for="txtTelefono">Telefono: </label> <input
							type="text" id="txtTelefono" name="telefono"> <br> <br>
						<label for="txtEmail">Correo electronico: </label> <input
							type="email" id="txtEmail" name="email"> <br> <br>
						<label for="txtSitioWeb">Sitio Web: </label> <input type="url"
							id="txtSitioWeb" name="sitioweb"> <br></br>
						<h2>
							<button
								style='background-color: #AAAAAA; border: none; color: white; padding: 16px 32px; text-decoration: none; margin: 4px 2px; cursor: pointer'
								onclick="sendData()">Enviar Datos</button>
							<button
								style='background-color: #AAAAAA; border: none; color: white; padding: 16px 32px; text-decoration: none; margin: 4px 2px; cursor: pointer'
								onclick="clearForm()">Cancelar</button>
						</h2>
			</table>
			<br></br>
			<br></br>
			<br></br>
			<center>
			<input type='button'
				onclick="location.href='http://localhost:8080/TiendaVirtualApp/Supplier/Menu.jsp'"
				value='Men� Proveedor'
				style='width: 250px; height: 50px; background-color: #FF5555; border: none; color: white; padding: 16px 32px; text-decoration: none; margin: 4px 2px; cursor: pointer'>
			</center>
			<br>
			<br>
			<div id="dvTabla"></div> -->
</html>

