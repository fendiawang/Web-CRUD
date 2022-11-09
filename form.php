<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="aksitambah.php" method="post">
        <p>nim</p>
    <input type="text" name="nim" placeholder="Masukan Nim">
    <p>nama</p>
    <input type="text" name="username" placeholder="Masukan Nama">
    <p>password</p>
    <input type="text" name="password" placeholder="Masukan password">
    <p>status: (admin/mahsiswa)</p>
    <input type="text" name="level" placeholder="pilih salah satu">
    <p>alamat</p>
    <input type="text" name="alamat" placeholder="Masukkan Alamat">
    <p>jenis kelamin</p>
    <select name="jenis" id="jenis">
        <option value="Pria">Pria</option>
        <option value="Wanita">Wanita</option>
    </select>
    <p></p>
    <input type="submit" value="simpan">
    </form>

</body>
</html>