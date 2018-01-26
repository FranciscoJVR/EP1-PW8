<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css" integrity="sha384-Zug+QiDoJOrZ5t4lssLdxGhVrurbmBWopoEl+M6BdEfwnCJZtKxi1KgxUyJq13dy" crossorigin="anonymous">
		<title>Crear productos</title>
	</head>
	<body>

	<!--Creación de un form-->
	<?php include ("../partials/header.php"); ?>
		<main>
			<form>
				<input type="text" id="nameProduct" placeholder="Nombre del producto">
				<input type="number" id="priceProduct" placeholder="Precio del producto">
				<textarea id="descriptionProduct" placeholder="Descripción"></textarea>
				<select>
					<option value="0">Elige una categoria</option>
					<option value="1">Pizza</option>
					<option value="2">Pasta</option>
					<option value="3">Ensaladas</option>
					<option value="4">Bebidas</option>
					<option value="5">Postres</option>
					<option value="6">Bebidas exóticas</option>
				</select>
				<button type="button" onclick="save()">Save</button>
			</form>
		</main>
		
		<script type="text/javascript">
			//Función para obtener los productos de la base de datos de manera asíncrona
	        function save(){
	          var xhr = new XMLHttpRequest();
	          var url = "http://localhost/mvc-php-master/controllers/ProductsController.php";
	          xhr.open('POST',url,true);
	          //Creación del formulario
	          var data = new FormData();
	          data.append('nameProduct',document.querySelector("#nameProduct").value);
	          data.append('priceProduct',document.querySelector("#priceProduct").value);
	          data.append('descriptionProduct',document.querySelector("#descriptionProduct").value);
	          data.append('action','create');

	          //Mensaje de posible error.
	          xhr.addEventListener('error', function(e) {
	          	console.log('Un error ocurrió', e);
	          });
	          //Mensaje de peticion correcta.
	          xhr.addEventListener('loadend',function(){             
	          	console.log(xhr.responseText);
	          	document.querySelector("#nameProduct").value = null;
	          	document.querySelector("#descriptionProduct").value = null;
	          	document.querySelector("#priceProduct").value = null;
	          }); 
	            
	          xhr.send(data);
	        }
		</script>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/js/bootstrap.min.js" integrity="sha384-a5N7Y/aK3qNeh15eJKGWxsqtnX/wWdSZSKp+81YjTmS15nvnvxKHuzaWwXHDli+4" crossorigin="anonymous"></script>
	</body>
</html>