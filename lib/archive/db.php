<?php
$username="corriere2";//change username
$password="experia01"; //change password
$host="localhost";
$db_name="corriere2"; //change databasename

$connect=mysqli_connect($host,$username,$password,$db_name,);

if(!$connect)
{
	echo json_encode("Connection Failed");
}

?>