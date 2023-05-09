<?php 

$conn = mysqli_connect("localhost","root","","mcc_system1");

// Check connection
if (mysqli_connect_error()){
	echo "Koneksi database gagal : " . mysqli_connect_error();
}

?>