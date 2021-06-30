<?php

$connect = new mysqli("localhost","root","","data_mahasiswa");

if($connect) {
	echo "Connection Success";
}else{
	echo "Connection Failed";
	exit();
}