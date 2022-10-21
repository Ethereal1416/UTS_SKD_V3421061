<?php
$success = 0;
$user = 0;
$invalid = 0;

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
  include 'connect.php';
  $username = $_POST['username'];
  $password = $_POST['password'];
  $email = $_POST['email'];
  $cpassword = $_POST['cpassword'];
  $salt = "asktfxwvrwu*&%$#!";
  $pepper = "AAFQYCSfafQCFxMBJs)+=_:'?<$#";
  $hash = password_hash($password, PASSWORD_DEFAULT);
  
  $sql = "SELECT * from `registration` WHERE username = '$username'";

  $result =mysqli_query($con,$sql);
  if($result) {
      $num=mysqli_num_rows($result);
      if($num>0) {
          $user=1;
      }else{
          if($password===$cpassword){

    $kalimat = str_replace(".", "Xx", $_POST['email']);
    $key = 5;

    for ($i = 0; $i < strlen($kalimat); $i++) {
    $kode[$i] = ord($kalimat[$i]); //rubah ASCII ke desimal
    $b[$i] = ($kode[$i] + $key) % 256; //proses enkripsi
    $c[$i] = chr($b[$i]); //rubah desimal ke ASCII
    }
    $hsl = "";

    $kalimat;

    for ($i = 0; $i < strlen($kalimat); $i++) {
      $c[$i];
      $hsl = $hsl . $c[$i];
    }

    $key = 2;
    $isi = $hsl;
    $isis = "";

    for($i=0;$i<strlen($isi);$i++) // menghitung panjang striing
      {
      $kode[$i]=ord($isi[$i]); // rubah ASII ke desimal
      $b[$i]=($kode[$i] - $key ) % 256; // proses dekripsi Caesar
      $c[$i]=chr($b[$i]); //rubah desimal ke ASCII
      }
      // echo "kalimat ciphertext : ";
      for($i=0;$i<strlen($isi);$i++)
      {
        //echo
       $isi[$i];
      }
      echo "<br>";
      // echo "hasil dekripsi =";
      for ($i=0;$i<strlen($isi);$i++)
      {
        //echo
       $c[$i];
      $isis = $isis . $c[$i];
      }

      $nisn = $_POST['nisn'] . $isis . $hsl;
      $aman = md5($nisn);
  
      $sql = "insert into `registration` (username, password, nisn, email) values ('$username', '$hash', '$aman', '$email')";

      $result=mysqli_query($con,$sql);
      if ($result) {
          $success = 1;
          echo "<script>alert('Registrasi berhasil! <br>
        );
          
          </script>";
      }
      }else{
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
  if($user){
    echo '<div class="alert alert-danger alert-dismissible fade show" role="alert"> <strong>Ups! Maaf...</strong> Username sudah ada, silakan coba yang lain <button type="button" class="btn-close" aria-label="Close"> <span aria-hidden="true">&times;</span> </button> </div> ';
  }
  ?>

<?php
  if($invalid){
    echo '<div class="alert alert-danger alert-dismissible fade show" role="alert"> <strong>Ups! Maaf...</strong>Password tidak sama, Silakan masukkan lagi!
      <button class="btn-close" data-dismiss="alert" aria-label="Close"> 
        <span aria-hidden="true">&times;</span> 
      </button> 
    </div> ';
  }
?>

<?php
  if($success){
    echo '<div class="alert alert-success alert-dismissible fade show" role="alert"> <strong>Sukses</strong> Selamat, Kamu berhasil mendaftar!
    <button class="btn btn-light" data-dismiss="alert" aria-label="Close"> <span aria-hidden="true"><a href="login.php">login</a></span> <br>
    </button> </div> ';
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
        <form action="index.php" method="POST">
        <div class="divider d-flex align-items-center my-4">
            <p class="text-center fw-bold mx-3 mb-0">REGISTER PAGE</p>
          </div>
        <div class="form-outline mb-4">
            <input type="text" id="form1Example13" class="form-control form-control-lg" name="username"/>
            <label class="form-label" for="form1Example13">Username</label>
          </div>
          <!-- Email input -->
          <div class="form-outline mb-4">
            <input type="email" id="form1Example13" class="form-control form-control-lg" name="email" />
            <label class="form-label" for="form1Example13">Email address</label>
          </div>
          <div class="form-outline mb-4">
            <input type="text" id="form1Example13" class="form-control form-control-lg" name="nisn"/>
            <label class="form-label" for="form1Example13">NISN</label>
          </div>

          <!-- Password input -->
          <div class="form-outline mb-4">
            <input type="password" id="form1Example23" class="form-control form-control-lg" name="password"/>
            <label class="form-label" for="form1Example23">Password</label>
          </div>

          <!-- Password input -->
          <div class="form-outline mb-4">
            <input type="password" id="form1Example23" class="form-control form-control-lg" name="cpassword"/>
            <label class="form-label" for="form1Example23">Confirm Password</label>
          </div>

          <div class="d-flex justify-content-around align-items-center mb-4">
           

          <!-- Submit button -->
          <button type="submit" class="btn btn-primary btn-lg btn-block">Register</button>
          </br>
          <p class="small fw-bold mt-2 pt-0 mb-0">Dou you have an account? <a href="login.php"
                class="link-danger">Login</a></p>
        

        </form>
      </div>
    </div>
  </div>
</section>
  </body>
</html>