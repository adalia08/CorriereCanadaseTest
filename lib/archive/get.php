<?php

include "db.php";

$sql = "SELECT * FROM `jos_content` ORDER BY `jos_content`.`id` DESC";

$query = mysqli_query($connect, $sql);

if(!$query){
	echo json_encode('error');
}

$array = array();
$x =0;

while($row = mysqli_fetch_assoc($query)){

	$print_data = mysqli_fetch_row($query);
	array_push($array, $print_data[2]);
	echo $array[$x];
	echo " split " ;
	$x++;

}
?>
