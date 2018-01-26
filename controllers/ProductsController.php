<?php
	include_once("../models/Product.php");
	include_once("../models/Cleaner.php");

	if (isset($_POST["action"])) {
		$nombre = Cleaner::cleanInput($_POST["nameProduct"]);
		$descripcion = Cleaner::cleanInput($_POST["descriptionProduct"]);
		$precio = Cleaner::cleanInput($_POST["priceProduct"]);

		$saveProducto = new Product($nombre,$descripcion,$precio);

		if ($saveProducto->save()) {
			echo "Se guardo correctamente";
		}else{
			echo "Ocurrio un error";
		}
	}else{
		$products = Product::get();
		$products = json_encode($products);
		echo $products;
	}

	//var_dump($products); //Imprimir los datos de la variable con var_dump
