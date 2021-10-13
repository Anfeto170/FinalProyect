<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Eliminar Usuario</title>
<link rel="stylesheet" href="/TiendaVirtualNewYork/Letra4.css" media="all" />
<link rel="stylesheet" href="/TiendaVirtualNewYork/EstiloTabla.css" media="all" />
<link rel="stylesheet" href="/TiendaVirtualNewYork/Letra5.css" media="all" />
<link rel="stylesheet" href="/TiendaVirtualNewYork/Letra8.css" media="all" />
<link rel="stylesheet" href="/TiendaVirtualNewYork/Titulo2.css" media="all" />
<script>

	function sendData() {
		var valido = validate();
		if (valido) {
			alert("Los datos son v�lidos")

			var IdProduct = document.getElementById("txtIdProduct").value.trim();

			var Delivery = new XMLHttpRequest();

			var url = '/TiendaVirtualNewYork/DeleteProduct';
			var Parameters = "idProduct=" + IdProduct;
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
			alert("Los datos son inv�lidos")
		}
		return;
	}

	function validate() {

		var IdProduct = document.getElementById("txtIdProduct");

		if (txtIdProduct.value.length == 0) {
			alert("Diite el codigo que quiere eliminar")
			return false;
		}

		else {
			return true;
		}
	}
</script>
</head>
<font face="Comic Sans MS,arial">
<body>
<center>
<br></br>
<br></br>
<br></br>
<br></br>
<br></br>
	<h1><FONT face="Comic Sans MS,arial" COLOR="black">Secci�n de eliminar Productos</FONT></h1>
<br></br>
<br></br>
<br></br>
</center>	
<center>
	<label for="txtIdProduct">Codigo del producto que se va a eliminar:
	</label>
	<input type="number" id="txtIdProduct" name="IdProduct">
<br></br>	
<br></br>
	<button  onclick="sendData()"   >Eliminar Product</button>
	<br></br>
	<br></br>
	<br></br>
	<br></br>
<input type='button' onclick="location.href='/TiendaVirtualNewYork/Product/Menu.jsp'" value='Men� Producto' style='width:250px; height:50px; background-color: #FF5555; border: none; color: white; padding: 16px 32px; text-decoration: none; margin: 4px 2px; cursor: pointer'' >
	<br>
	<br>
	<div id="dvTabla"></div>
</center>

</body>
</html>