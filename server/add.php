<?php
	include "config.php";

	$id = $_GET['id'];
	$item = $_GET['item'];
	$asa = $_GET['asa'];
	$tipo = $_GET['tipo'];
	$validade = $_GET['validade'];
	$valor = $_GET['valor'];
	$stock = $_GET['stock'];

	if ( empty($id) ) {
		$query = "INSERT INTO rolostock (item, asa, tipo, validade, valor, stock) VALUE ('$item', '$asa', '$tipo', '$validade', '$valor', '$stock')";
		$result = mysql_query($query);

		if ($result) {
			exit(json_encode($result));
		}
	}

	if ( $id > 0 ) {
		$query = "UPDATE rolostock SET item ='$item', asa = '$asa', tipo = '$tipo', validade = '$validade', valor = '$valor', stock = '$stock' WHERE id = '$id'";
		$result = mysql_query($query);

		if ($result) {
			exit (json_encode($result));
		}

	}

?>