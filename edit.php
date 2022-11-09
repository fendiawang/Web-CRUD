<?php
require 'koneksi.php';
$nim= $_GET['id'];
$query = mysqli_query($kon,"SELECT * FROM user where nim='$nim'");
$row= mysqli_fetch_row($query);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<form action="aksiedit.php" method="post">
    <input type="hidden" name="nim" placeholder="Masukan Nim" value="<?php echo $row[0];?>">
    <p>nama</p>
    <input type="text" name="username" placeholder="Masukan Nama" value="<?php echo $row[1];?>">
    <p>password</p>
    <input type="text" name="password" placeholder="Masukan Password" value="<?php echo $row[2];?>">
    <p>status</p>
    <input type="text" name="level" placeholder="Masukan status" value="<?php echo $row[3];?>">
    <p>alamat</p>
    <input type="text" name="alamat" placeholder="Masukan alamat" value="<?php echo $row[4];?>">
    <p>Jenis Kelamin</p>
    <select name="jenis" id="jenis">
        <option value="<?= $row[5] ?>" selected<?= $row[5] ?>>Pilih</option>
        <option value="Pria">Pria</option>
        <option value="Wanita">Wanita</option>    
    </select>
    <button type="submit">Simpan</button>
</form>    
</body>
</html>
