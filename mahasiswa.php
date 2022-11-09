<?php
require ('koneksi.php');
$query = mysqli_query($kon,'SELECT * FROM mhs');

?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>mahasiswa</title>
    <link rel="stylesheet" href="gaya.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  </head>
  <body>
	  <?php
  session_start();
 
 // cek apakah yang mengakses halaman ini sudah login
 if($_SESSION['level']==""){
	 header("location:index.php?pesan=gagal");
 }

 ?>
    <div class="wrapper">
      <input type="checkbox" id="btn" hidden>
      <label for="btn" class="menu-btn">
        <i class="fas fa-bars"></i>
        <i class="fas fa-times"></i>
      </label>
      <nav id="sidebar">
        <div class="title">Menu</div>
        <ul class="list-items">
      
          <li><a href="mahasiswa.php"><i class="fas fa-home"></i>Home</a></li>
          <li><a href="profilmh.php"><i class="fas fa-user"></i>Profil</a></li>
          <li><a href="logout.php"><i class="fa fa-sign-out"></i>Logout</a></li>
         
        </ul>
      </nav>
    </div>
    <div class="content">
      <p>Selamat Datang, <?php echo $_SESSION['username']; ?></p>
    </div>
  </body>
</html>
