<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="/TiendaVirtualNewYork/Letra4.css" media="all" />
<link rel="stylesheet" href="/TiendaVirtualNewYork/EstiloTabla.css" media="all" />
<link rel="stylesheet" href="/TiendaVirtualNewYork/Letra5.css" media="all" />
<link rel="stylesheet" href="/TiendaVirtualNewYork/Letra8.css" media="all" />
<link rel="stylesheet" href="/TiendaVirtualNewYork/Titulo2.css" media="all" />
<title>Insert title here</title>
<script>
	function search() {
		var sProduct = document.getElementById("txtIdProduct").value.trim();
		if (sProduct.trim() == "") {
			sProduct = "null";
		}
		var http = new XMLHttpRequest();
		var url = '/TiendaVirtualNewYork/SearchProduct';
		var params = "sProduct=" + sProduct;
		http.open('POST', url, true);

		//Send the proper header information along with the request
		http.setRequestHeader('Content-type',
				'application/x-www-form-urlencoded');

		http.onreadystatechange = function() {//Call a function when the state changes.
			if (http.readyState == 4 && http.status == 200) {
				alert(http.responseText);
				CreateTableFromJSON(http.responseText);

			}
		}
		http.send(params);
	}

	function CreateTableFromJSON(json_result) {

		const json_arr = JSON.parse(json_result);

		// EXTRACT VALUE FOR HTML HEADER. 	
		var col = [];
		for (var i = 0; i < json_arr.length; i++) {
			for ( var key in json_arr[i]) {
				if (col.indexOf(key) === -1) {
					col.push(key);
				}
			}
		}

		// CREATE DYNAMIC TABLE.
		var table = document.createElement("table");
		table.setAttribute("border", "1");

		// CREATE HTML TABLE HEADER ROW USING THE EXTRACTED HEADERS ABOVE.

		var tr = table.insertRow(-1); // TABLE ROW.

		for (var i = 0; i < col.length; i++) {
			var th = document.createElement("th"); // TABLE HEADER.
			th.innerHTML = col[i];
			tr.appendChild(th);
		}

		// ADD JSON DATA TO THE TABLE AS ROWS.
		for (var i = 0; i < json_arr.length; i++) {

			tr = table.insertRow(-1);

			for (var j = 0; j < col.length; j++) {
				var tabCell = tr.insertCell(-1);
				tabCell.innerHTML = json_arr[i][col[j]];
			}
		}

		// FINALLY ADD THE NEWLY CREATED TABLE WITH JSON DATA TO A CONTAINER.
		var divContainer = document.getElementById("dvResult");
		divContainer.innerHTML = "";
		divContainer.appendChild(table);
	}
</script>
<font face="Comic Sans MS,arial">
</head>
<body>
<center>
    <center>
    <h1>Secci�n consulta Productos</h1>
    <br></br>
    <br></br>
    <br></br>
    <br></br>
		 <!--  El m�todo post, hace que se ejectu get pero no muestra nada en URL -->
		<td><label for="txtIdProduct">Codigo del producto:</label></td>
			<td><input type="number" class="fondo1" id="txtIdProduct" name="idProduct"></td>
	</center>	
	<br></br>
    <br></br>
    <br></br>
			<button onclick="search()" class="btnEffect1">Consultar</button>
		<br></br>
	    <br></br>
	    <center>
		<button onclick="location.href='/TiendaVirtualNewYork/Product/Menu.jsp'" class="btnEffect2">Men� Producto</button>
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

	<!--  <br></br>
	<br></br>
	<br></br>
	<center>
		<h1>Secci�n de consulta productos</h1>
	</center>
	<br></br>
	<br></br>

	<center>
		<table>
			</center>
			<tr>
				<td><label for="txtIdProduct">Codigo del producto:</label></td>
				<td><input type="number" id="txtIdProduct" name="idProduct"></td>
				<td><button
						style='background-color: #AAAAAA; border: none; color: white; padding: 10px 10px; text-decoration: none; margin: 4px 2px; cursor: pointer'
						'  onclick="search()">Consultar</button></td>
			</tr>
		</table>
		<br></br> <br></br> <br></br> <input type='button'
			onclick="location.href='http://localhost:8080/TiendaVirtualApp/Product/Menu.jsp'"
			value='Men� Cliente'
			style='width: 250px; height: 50px; background-color: #FF5555; border: none; color: white; padding: 16px 32px; text-decoration: none; margin: 4px 2px; cursor: pointer'>
		<br> <br>
		<div id="dvResult"></div>
</body>-->
</html>