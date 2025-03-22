
<?php
include("connexion.php");
if (isset($_POST['name'])&& isset($_POST['email'])&& isset($_POST['lastname'])&& isset($_POST['address'])&& isset($_POST['phone_number'])&& isset($_POST['password'])&& isset($_POST['role'])&& isset($_POST['Enregistre'])){
    $name=$_POST['name'];
    $email=$_POST['email'];
    $address=$_POST['address'];
    $num_tel=$_POST['phone_number'];
    $password=$_POST['password'];
    $role=$_POST['role'];
    $lastname=$_POST['lastname'];
    $sql="INSERT INTO user (name,email,adress,phone_number,password,role,lastname) VALUES ('$name,$email,$address,$num_tel,$password,$role,$lastname')";
    $rest=mysqli_query($conn,$sql);
    if($rest){
        header('location:index.html');
    }else{
        echo "impossible ";
    }
}
 else{
    echo"erreur";
}



?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup - Biopharm</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
            padding: 2rem 0;
        }
        .signup-container {
            background: white;
            padding: 3rem;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 400px;
            text-align: center;
        }
        h1 {
            color: #2c3e50;
            margin-bottom: 0.5rem;
        }
        h2 {
            color: #3498db;
            margin-bottom: 2rem;
        }
        .form-group {
            margin-bottom: 1rem;
            text-align: left;
        }
        label {
            display: block;
            text-align: left;
            margin-top: 10px;
            font-weight: bold;
            color: #2c3e50;
        }
        input, select {
            width: 100%;
            padding: 0.75rem;
            margin: 0.5rem 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        button {
            background-color: #3498db;
            color: white;
            border: none;
            padding: 0.75rem;
            width: 100%;
            margin: 1.5rem 0 1rem 0;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            font-weight: bold;
        }
        button:hover {
            background-color: #2980b9;
        }
        .login-link {
            text-align: center;
            margin-top: 1rem;
            color: #666;
        }
        .login-link a {
            color: #3498db;
            text-decoration: none;
        }
        .login-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="signup-container">
        <h1>Biopharm</h1>
        <h2>Enregistré</h2>
        <form action="" method="POST" >
            <div class="form-group">
                <label for="firstName">Nom: </label>
                <input type="text" id="firstName" required>
            </div>
            <div class="form-group">
                <label for="lastName">Prénom: </label>
                <input type="text" id="lastName" required>
            </div>
            <div class="form-group">
                <label for="email">Email: </label>
                <input type="text" id="email" required>
            </div>
            <div class="form-group">
                <label for="Adress">Adress: </label>
                <input type="text" id="adress" required>
            </div>
            <div class="form-group">
                <label for="phone">Numéro_télephone</label>
                <input type="text" id="phone" required>
            </div>
            <div class="form-group">
                <label for="password">Mot de passe: </label>
                <input type="password" id="password" required>
            </div>
            <div class="form-group">
                <label for="confirmPassword">Confirmé le mot de passe </label>
                <input type="password" id="confirmPassword" required>
            </div>
            <div class="form-group">
                <label for="role">Role </label>
                <input type="text" id="role" required>
            </div>
            
            <button type="submit" name="Enregistre">Enregistré</button>
            <div class="login-link">
             j'ai déja un compte? <a href="login.html">Se connecter</a>
            </div>
        </form>
    </div>
    <!-- ...existing scripts... -->
    <script>
        function handleSignup(event) {
            event.preventDefault();
            const user = {
                firstName: document.getElementById('firstName').value,
                lastName: document.getElementById('lastName').value,
                email: document.getElementById('email').value,
                phone: document.getElementById('phone').value,
                role: document.getElementById('role').value
            };

            if (document.getElementById('password').value !== document.getElementById('confirmPassword').value) {
                alert('Passwords do not match');
                return false;
            }

            localStorage.setItem('user', JSON.stringify(user));
            window.location.href = 'index.html';
        }
    </script>
</body>
</html>
