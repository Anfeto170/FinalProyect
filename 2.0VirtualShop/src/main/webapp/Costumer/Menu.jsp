<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="/TiendaVirtualNewYork/Letra4.css" media="all" />
<link rel="stylesheet" href="/TiendaVirtualNewYork/Titulo.css" media="all" />
<link rel="stylesheet" href="/TiendaVirtualNewYork/Letra5.css" media="all" />
<link rel="stylesheet" href="/TiendaVirtualNewYork/Letra7.css" media="all" />
<link rel="stylesheet" href="/TiendaVirtualNewYork/Letra8.css" media="all" />
<link rel="stylesheet" href="/TiendaVirtualNewYork/Letra9.css" media="all" />
<link rel="stylesheet" href="/TiendaVirtualNewYork/Designxd.css" media="all" />
<font face="Comic Sans MS,arial">
	<head>
<meta charset="ISO-8859-1">
<title>Menu Clientes</title>
</head>
<br></br>
<center>
<h1 class="lines-effect">Opciones</h1>
</center>
<br></br>
<br></br>
<br></br>
<center>
<button onclick="location.href='CostumerCreate.jsp'" class="btnEffect1">Agregar Cliente</button>
<center>
<br></br>
<center>
<button onclick="location.href='CostumerSearch.jsp'" class="btnEffect2">Consultar Cliente</button>
<center>
<br></br>
<center>
<button onclick="location.href='DeleteCostumer.jsp'" class="btnEffect4">Eliminar Cliente</button>
<center>
<br></br>
<center>
<button onclick="location.href='/TiendaVirtualNewYork/Menu.jsp'" class="btnEffect5">Men� Principal</button>
<center>
<!--  <center>
	<h1>Opciones</h1>
</center>
<br></br>
<br></br>
<body>
<center>
	<h2>
<input type='button' onclick="location.href='CostumerCreate.jsp'" value='Agregar Cliente' style='width:250px; height:50px; background-color: #9BFFF0; border: none; color: black; padding: 16px 32px; text-decoration: none; margin: 4px 2px; cursor: pointer'' >
	</h2>
	<br></br>
	<h2>
<input type='button' onclick="location.href='CostumerSearch.jsp'" value='Consultar Cliente' style='width:250px; height:50px; background-color: #9BFFF0; border: none; color: black; padding: 16px 32px; text-decoration: none; margin: 4px 2px; cursor: pointer'' >
	<br>
	<br>
	<input type='button' onclick="location.href='DeleteCostumer.jsp'" value='Eliminar Cliente' style='width:250px; height:50px; background-color: #9BFFF0; border: none; color: black; padding: 16px 32px; text-decoration: none; margin: 4px 2px; cursor: pointer'' >
	</h2>
	<br></br>
	<br></br>
	<br></br>
<input type='button' onclick="location.href='http://localhost:8080/TiendaVirtualApp/Menu.jsp'" value='Men� Principal' style='width:250px; height:50px; background-color: #FFD676; border: none; color: black; padding: 16px 32px; text-decoration: none; margin: 4px 2px; cursor: pointer'' >
</center>-->
<!--  <link rel="stylesheet" href="/TiendaVirtualApp/Designxd.css" media="all" />
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
				<a hreh="#">
					<i class='bx bx-grid-alt' ></i>
					<span onclick="location.href='User/Menu.jsp'" class="links_name">Opciones Usuarios</span>
				</a>
				 <span class="tooltip">Usuarios</span>  
			</li>
			<li>
				<a hreh="#">
					<i class='bx bx-user'></i>
					<span onclick="location.href='Costumer/Menu.jsp'" class="links_name">Opciones Clientes</span>
				</a>
				 <span class="tooltip">Clientes</span>  
			</li>
			<li>
				<a hreh="#">
					<i class='bx bx-chat' ></i>
					<span onclick="location.href='Supplier/Menu.jsp'" class="links_name">Opciones Proveedores</span>
				</a>
				 <span class="tooltip">Proveedores</span>  
			</li>
			<li>
				<a hreh="#">
					<i class='bx bx-pie-chart-alt-2' ></i>
					<span onclick="location.href='Product/Menu.jsp'" class="links_name">Opciones Productos</span>
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
		<!--  <div class="profile_content">
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
	</body>		-->
	</html>