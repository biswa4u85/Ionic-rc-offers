<?php

// Include confi.php
include_once('config.php');

//if($_SERVER['REQUEST_METHOD'] == "_POST")
if(1)
	{
	// Get data
	$data = json_decode($_POST['data']);
	$data = json_decode(file_get_contents('php://input'), true);
	$Name = isset($data['Name']) ? mysql_real_escape_string($data['Name']) : "";
	$Address = isset($data['Address']) ? mysql_real_escape_string($data['Address']) : "";
	$Latitude = isset($data['Latitude']) ? mysql_real_escape_string($data['Latitude']) : "";
	$Longtitude = isset($data['Longtitude']) ? mysql_real_escape_string($data['Longtitude']) : "";
	$Category = isset($data['Category']) ? mysql_real_escape_string($data['Category']) : "";
	$OpenHours = isset($data['OpenHours']) ? mysql_real_escape_string($data['OpenHours']) : "";
	$Website = isset($data['Website']) ? mysql_real_escape_string($data['Website']) : "";
	$Photo = isset($data['Photo']) ? mysql_real_escape_string($data['Photo']) : "";

	if(!empty($Name) AND !empty($Address) AND !empty($Latitude) AND !empty($Longtitude)){
	// Insert data into data base AddLocation
	$sql = "INSERT INTO `AddLocation` (`ID`, `Name`, `Address`, `Latitude`, `Longtitude`, `Category`, `OpenHours`, `Website`, `Photo`) 
			VALUES (NULL, '$Name', '$Address', '$Latitude', '$Longtitude', '$Category', '$OpenHours', '$Website', '$Photo');";
	$qur = mysqli_query($con,$sql);

    }else{
		$json = array("Error" => 400,  "errorMessage" => "Bad Request");
	}


	if($qur){
		$json = array("Success" => 200);
	}else{
		$json = array("Error" => 400,  "errorMessage" => "Bad Request");
	}
}else{
	$json = array("Errot" => 400, "errorMessage" => "Request method not accepted");

}

mysqli_close($con);

/* Output header */
	header('Content-type: application/json');
	echo json_encode($json);
