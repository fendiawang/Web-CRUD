<?php
require 'koneksi.php';

$nim = $_POST['nim'];
$username = $_POST['username'];
$password=$_POST['password'];
$level=$_POST['level'];
$alamat=$_POST['alamat'];
$jenis = $_POST['jenis'];
$query= mysqli_query($kon, "UPDATE user set username='$username', password='$password', level='$level',alamat='$alamat', jenis='$jenis' where nim='$nim'");
header ('location:index.php');