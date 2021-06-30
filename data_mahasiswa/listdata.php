<?php
	include 'konfigurasi.php';
	$id = $_POST['id'];
	$nama = $_POST['nama'];
	$nim = $_POST['nim'];
	$jurusan = $_POST['jurusan'];
	$semester = $_POST['semester'];
    $tahun_ajaran = $_POST['tahun_ajaran'];

	$connect->query("UPDATE tb_list SET nama='".$nama."', nim='".$nim."', jurusan='".$jurusan."', semester='".$semester."', WHERE id=". $id);
?>