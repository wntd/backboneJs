<?php 
	include "config.php";

	$id = $_GET['id'];

	$query = "DELETE FROM rolostock WHERE id = '$id' ";
	$result = mysql_query($query);

	echo json_encode();

?>