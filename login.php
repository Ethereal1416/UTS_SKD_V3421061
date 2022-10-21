<?php
$login = false;
$invalid = false;
if($_SERVER["REQUEST_METHOD"] == "POST"){
    include 'connect.php';
    $username = $_POST["username"];
    $password = $_POST["password"]; 
    
     
    // $sql = "Select * from users where username='$username' AND password='$password'";
    $sql = "Select * from registration where username='$username'";
    $result = mysqli_query($con, $sql);
    $num = mysqli_num_rows($result);
    if ($num == 1){
        while($row=mysqli_fetch_assoc($result)){
            if (password_verify($password, $row['password'])){ 
                $login = true;
                session_start();
                $_SESSION['loggedin'] = true;
                $_SESSION['username'] = $username;
                header("location: dashboard.php");
            } 
                else{
                    $invalid = 1;
            
            }
        }
    }
}
?>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="styles.css">
  </head>
  <body>

<?php
  if($invalid){
    echo '<div class="alert alert-danger alert-dismissible fade show" role="alert"> <strong>Ups! Maaf...</strong>Password tidak sama, Silakan masukkan lagi!
      <button type="button" class="btn-close" data-dismiss="alert" aria-label="Close"> 
        <span aria-hidden="true">&times;</span> 
      </button> 
    </div> ';
  }
?>

<?php
  if($login){
    echo '<div class="alert alert-danger alert-dismissible fade show" role="alert"> <strong>Ups! Maaf...</strong> Username atau Password anda salah, silakan coba lagi<button type="button" class="close" data-dismiss="alert" aria-label="Close"> <span aria-hidden="true">&times;</span> </button> </div> ';
  }
  ?>

<section class="vh-100">
  <div class="container py-5 h-100">
    <div class="row d-flex align-items-center justify-content-center h-100">
      <div class="col-md-8 col-lg-7 col-xl-6">
        <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.svg"
          class="img-fluid" alt="Phone image">
      </div>
      <div class="col-md-7 col-lg-5 col-xl-5 offset-xl-1">
        <form action="login.php" method="POST">
        <div class="divider d-flex align-items-center my-4">
            <p class="text-center fw-bold mx-3 mb-0">LOGIN PAGE</p>
          </div>
          <!-- Email input -->
          <div class="form-outline mb-4">
            <input type="text" id="form1Example13" class="form-control form-control-lg" name="username" />
            <label class="form-label" for="form1Example13">Username</label>
          </div>

          <!-- Password input -->
          <div class="form-outline mb-4">
            <input type="password" id="form1Example23" class="form-control form-control-lg" name="password"/>
            <label class="form-label" for="form1Example23">Password</label>
          </div>


          <!-- Submit button -->
          <button type="submit" class="btn btn-primary btn-lg btn-block">Login</button>
</br>
<p class="small fw-bold mt-2 pt-1 mb-0">Don't have an account? <a href="index.php"
                class="link-danger">Register</a></p>
          

        </form>
      </div>
    </div>
  </div>
</section>
  </body>
</html>