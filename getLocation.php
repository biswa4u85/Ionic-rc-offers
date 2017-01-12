<?php

	// Include confi.php
	include_once('config.php');

	
		$qur = "select * from `AddLocation`";
		$qur = mysqli_query($con,$qur);

		$result =array();
		while($r = mysqli_fetch_array($qur)){
			extract($r);
			$result[] = array("Name" => $Name, "Address" => $Address, 'Latitude' => $Latitude, 'Longtitude' => $Longtitude, 'Category' => $Category, 'OpenHours' => $OpenHours, 'Website' => $Website, 'Photo' => $Photo); 
		}

		$json = array("Success" => 200, "LocationArray" => $result);

	mysqli_close($con);

	/* Output header */
	header('Content-type: application/json');
	echo json_encode($json);