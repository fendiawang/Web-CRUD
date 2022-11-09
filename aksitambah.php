<?php
require 'koneksi.php';

$nim = $_POST['nim'];
$username = $_POST['username'];
$password=$_POST['password'];
$level=$_POST['level'];
$alamat=$_POST['alamat'];
$jenis = $_POST['jenis'];

$query= mysqli_query($kon, "INSERT INTO user (nim,username,password,level,jenis,alamat) VALUE('$nim','$username','$password','$level','$jenis','$alamat') ");
header ('location:index.php');
?>