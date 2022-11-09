<!DOCTYPE html>
<html lang="en">
    <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="style.css">
</head>
<!-- username:admin password:admin123 -->
<!-- username:aat password:aat123 -->
<!-- username:anya password:anya123 -->
<body>
    <div class="card">
        <h1 class="mb-20 text-center text-primary">FORM LOGIN</h1>
        
        <form action="aksilogin.php" method="post">
            <input type="text" name="username" class="form-control mb-20" placeholder="Masukan Username"><br>
            <input type="password" name="password" class="form-control mb-20" placeholder="Masukan Password"><br>
            <button type="submit" class="btn">Login</button>
        </form>

    </div>
</body>
</html>