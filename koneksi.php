<?php
    $kon = mysqli_connect('localhost','root','fandiahmad1014','produk');
    if (!$kon){
          die("Koneksi gagal:".mysqli_connect_error());
    }
?>