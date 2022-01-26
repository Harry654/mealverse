<?php
	$servername = "localhost";
	$dbUsername = "id14461269_harrison";
	$password = "HarryBrutjacktrump2004.";

	$conn = new PDO("mysql:host=$servername;dbname=id14461269_mealverse_user", $dbUsername, $password);
	// set the PDO error mode to exception
	$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	//   echo "Connected successfully" . "<br />";

	$encodedData = file_get_contents('php://input'); //get the inputs from the client side
	$decodedData = json_decode($encodedData, true); //decode the received json data
?>