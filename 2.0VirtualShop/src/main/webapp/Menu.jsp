<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="UTF-8">
<title>innovaTECH</title>


<link rel="stylesheet" href="/TiendaVirtualNewYork/index7.css" media="all" />
<link rel="stylesheet" href="/TiendaVirtualNewYork/F3.css" media="all" />
<link rel="stylesheet" href="/TiendaVirtualNewYork/Letra5.css" media="all" />
<link rel="stylesheet" href="/TiendaVirtualNewYork/Letra6.css" media="all" />
<link rel="stylesheet" href="/TiendaVirtualNewYork/Letra7.css" media="all" />
<link rel="stylesheet" href="/TiendaVirtualNewYork/Letra8.css" media="all" />
<link rel="stylesheet" href="/TiendaVirtualNewYork/Titulo.css" media="all" />
<link rel="stylesheet" href="/TiendaVirtualNewYork/TituloHumo2.css" media="all" />
<link rel="shortcut icon" href="pp2.jpg">


<font face="Comic Sans MS,arial">
</head>
<body bgcolor="black">	
<br></br>
<center>
<br></br>
<br></br>
<h1 class="lines-effect">Menu de opciones</h1>
</center>
<!-- <a href="#" >
		<span></span>
		<span></span>
		<span></span>
		<span></span>		
		MENU DE OPCIONES
	</a> -->
<br></br> 
<br></br> 
<br></br> 
<br></br> 
<br></br>
<!--  <body>
	<a href="#">Operaciones para Usuarios</a>
	<br></br>
	<a href="#">Operaciones para Clientes</a>
	<br></br>
	<a href="#">Operaciones para Proveedores</a>
	<br></br>
	<a href="#">Operaciones para Productos</a>
</body>-->
<!--  
<center>
	<div class="contenedor">
		<button class="Operaciones para Usuarios"></button>
		<br></br> 
		<br></br>
		<button class="Operaciones para Clientes"></button>
		<br></br> 
		<br></br>
		<button class="Operaciones para Proveedores"></button>	
		<br></br> 
		<br></br>
		<button class="Operaciones para Productos"></button>	
	</div>	
</center>
-->
<!--  
	<button class="pushable">
		<span class="shadow"></span>
		<span class="edge"></span>
		<span class="front">
		Operaciones para Usuarios
		</span>			
	</button>-->
 
<div>
<center>
<a href="#" class="button" onclick="location.href='User/Menu.jsp'">Operaciones para Usuarios</a>
</center>
<br></br>
<br></br>
<center>
<a href="#" class="button" onclick="location.href='Costumer/Menu.jsp'">Operaciones para Clientes</a>
</center>
<br></br>
<br></br>
<center>
<a href="#" class="button" onclick="location.href='Supplier/Menu.jsp'">Operaciones para Proveedores</a>
</center>
<br></br>
<br></br>
<center>
<a href="#" class="button" onclick="location.href='Product/Menu.jsp'">Operaciones para Productos</a>
</center>-->
<!--  
<button onclick="location.href='User/Menu.jsp'" class="btnEffect1">Operaciones para Usuarios</button>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<button onclick="location.href='Costumer/Menu.jsp'" class="btnEffect2">Operaciones para Clientes</button>
</div>
<br></br>
<br></br>
<div>
<button onclick="location.href='Supplier/Menu.jsp'" class="btnEffect3">Operaciones para Proveedores</button>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<button onclick="location.href='Product/Menu.jsp'" class="btnEffect4">Operaciones Para Productos</button>
</div>-->


		<!-- <br></br> <br></br> <input type='button'
			onclick="location.href='User/Menu.jsp'"
			value='Operaciones para Usuarios'
			style='width: 280px; height: 50px; background-color: #FF9BF3; border: none; color: black; padding: 16px 32px; text-decoration: none; margin: 4px 2px; cursor: pointer'>
		<br></br> <br></br> <input type='button'
			onclick="location.href='Costumer/Menu.jsp'"
			value='Operaciones para Clientes'
			style='width: 280px; height: 50px; background-color: #FF9BF3; border: none; color: black; padding: 16px 32px; text-decoration: none; margin: 4px 2px; cursor: pointer'>
		<br></br> <br></br> <input type='button'
			onclick="location.href='Supplier/Menu.jsp'"
			value='Operaciones para Proveedores'
			style='width: 280px; height: 50px; background-color: #FF9BF3; border: none; color: black; padding: 16px 32px; text-decoration: none; margin: 4px 2px; cursor: pointer'>
		<br></br> <br></br> <input type='button'
			onclick="location.href='Product/Menu.jsp'"
			value='Operaciones Para Productos'
			style='width: 280px; height: 50px; background-color: #FF9BF3; border: none; color: black; padding: 16px 32px; text-decoration: none; margin: 4px 2px; cursor: pointer' >
	</center>
</body> -->
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
					<span onclick="location.href='User/Menu.jsp'" class="links_name">Usuarios</span>
				</a>
				 <span class="tooltip">Usuarios</span>  
			</li>
			<li>
				<a hreh="#">
					<i class='bx bx-group'></i>
					<span onclick="location.href='Costumer/Menu.jsp'" class="links_name">Clientes</span>
				</a>
				 <span class="tooltip">Clientes</span>  
			</li>
			<li>
				<a hreh="#">
					<i class='bx bx-briefcase' ></i>					
					<span onclick="location.href='Supplier/Menu.jsp'" class="links_name">Proveedores</span>
				</a>
				 <span class="tooltip">Proveedores</span>  
			</li>
			<li>
				<a hreh="#">
					<i class='bx bx-gift' ></i>
					<span onclick="location.href='Product/Menu.jsp'" class="links_name">Productos</span>
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
						<div class="name">Juan López</div>
						<div class="job">Diseño Web</div>
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