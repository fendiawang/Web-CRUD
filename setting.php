<?php
require ('koneksi.php');
$query = mysqli_query($kon,'SELECT * FROM user');

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
    <table border="1">
        <tr>
        <tr>
            <th>NIM</th>
            <th>Nama</th>
            <th>Password</th>
            <th>Status</th>
            <th>Jenis Kelamin</th>
            <th>Alamat</th>
            <th>Option</th>
        </tr>
        <?php 
       while ($row =mysqli_fetch_assoc($query)):?>
        <tr>
            <td><?php echo $row['nim'] ?></td>
            <td><?php echo $row['username'] ?></td>
            <td><?php echo $row['password'] ?></td>
            <td><?php echo $row['level'] ?></td>
            <td><?php echo $row['jenis'] ?></td>
            <td><?php echo $row['alamat'] ?></td>
            <td>
                <a href="edit.php?id=<?php echo $row['nim']?>">Edit</a>
                <a href="delete.php?id=<?php echo $row['nim']?>">delete</a>
                
            </td>
        </tr>
    <?php endwhile; ?>
    </table>
    <a href="form.php">tambah</a>
    <a href="admin.php">kembali</a>
    <a href="logout.php">log-out</a> 
</body>
</html>
