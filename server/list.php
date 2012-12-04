<?php
	include "config.php";

	$query = "SELECT * FROM rolostock ORDER BY id ASC";
	$items = array();
	$result = mysql_query($query);

	while($row = mysql_fetch_array($result)):
		$items[] = array(
			'id' => $row['id'],
			'item' => $row['item'], 
                      'asa' => $row['asa'], 
                      'tipo' => $row['tipo'], 
                      'validade' => $row['validade'],
                      'valor' => $row['valor'],
                      'stock' => $row['stock']
		);
	endwhile;

echo json_encode($items);

?>