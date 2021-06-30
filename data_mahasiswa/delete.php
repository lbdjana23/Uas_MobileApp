<?php
	include 'konfigurasi.php';

	$id=$_POST['id'];
	$connect->query("DELETE FROM tb_list WHERE id=".$id);

?>