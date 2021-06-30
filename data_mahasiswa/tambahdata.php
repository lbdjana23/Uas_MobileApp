<?php
	include 'konfigurasi.php';
	$id = $_POST['id'];
	$nama = $_POST['nama'];
	$nim = $_POST['nim'];
	$jurusan = $_POST['jurusan'];
	$semester = $_POST['semester'];
    $tahun_ajaran = $_POST['tahun_ajaran'];

	$connect->query("INSERT INTO tb_list (id,nama,nim,jurusan,semester,tahun_ajaran) VALUES('".$id."','".$nama."','".$nim."','".$jurusan."''".$semester."','".$tahun_ajaran."',)")
?>