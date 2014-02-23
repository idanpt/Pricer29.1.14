<?php

	$db_host='localhost';
	$username='root';
	$password='';
	$dbname="pricer";
	$conn_string=mysqli_connect($db_host,$username,$password) or die (mysqli_error('couldnt connect'));
	mysqli_select_db($conn_string, $dbname) or die (mysqli_error('couldnt select db'));

?>