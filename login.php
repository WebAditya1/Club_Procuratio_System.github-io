<?php 
    session_start();
    include "admin/config.php";
    $msg = "";
    if(isset($_GET["loggedout"]) && $_GET["loggedout"] == true ) 
    {
        $msg = "You have been logged out succesfully";
    }
    if($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST["login"])) {
        $studentid = $_POST["studentid"];
        $password = $_POST["pwd"];
        $sql = "SELECT * from institute where STUDENTID='".$studentid."' and PASSWORD='".$password."'";
        if($result = mysqli_query($conn, $sql)) {
            if(mysqli_num_rows($result) == 1) {
                $student = mysqli_fetch_assoc($result);
                $_SESSION["sno"] = $student["Sno"]; 
                $_SESSION["studentid"] = $student["STUDENTID"]; 
                $_SESSION["name"] = $student["Name"]; 
                $_SESSION["password"] = $student["PASSWORD"]; 
                header("location:society.php");
            } else {
                $msg = "Username and Password does not match";
            }
        } else {
            $msg = "An unknown error occured.";
        }
    }

    mysqli_close($conn);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link rel="stylesheet" href="//use.fontawesome.com/releases/v5.0.7/css/all.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Slab&display=swap" rel="stylesheet">
    <title>Sign In</title>
   <style>
       .banner{
      background: url(images/login.png);
      min-height: 100vh;
      background-size:contain;
      background-size: 100% 100%;
      background-repeat: no-repeat;
    }

    .content{
        padding-top: 18%;
        padding-left: 57%;
        justify-content: center;
    }
   input{
       border-radius: 30px;
       padding: 17px;
   }
   input{
        text-align: center;
        border: none;
        outline:none;
    } 
   
    .text{
        padding-left: 80px;
        padding-right: 80px;
    }
    .txt{
        margin-top: 16px;
    }

    button{
        margin-left: 19%;
        margin-top: 3%;
        padding: 20px;
        background-color: #D3CEF2;
        color:black;
        font-weight: bold;
        letter-spacing: 2px;
    }
   

    .input-icons i {
            position: absolute;
        }
          
        .icon {
            padding-top: 20px;
            min-width: 50px;
            text-align: center;
        }
        .fa-lock{
            padding-top: 35px;
        }
        .homepage a{
           color: #D3CEF2;
           font-size:20px;
       }
       .homepage a:hover{
           color: white;
       } 

   </style>
</head>
<body>
    <section class="banner">
    <div class="homepage">
            <a href="index.php"><i class="fas fa-home"></i></a>
           </div>
            <div id="contact">
                <div class="content">
                    <?php 
                    
                        if($msg != "") {
                            echo "<font color='white' font face='ocraextended' size='5pt'>".$msg."<br /></font>";
                        
                        }
                    
                    ?>
                    <form method="post">
                        <div class="input-icons">
                            <i class="fa fa-user icon text-dark"></i>
                        <input class="text input-field" name="studentid" type="text" placeholder="Student Id" required>
                       </div>
                       
                       <div class="input-icons">
                        <i class="fa fa-lock icon text-dark"></i>
                        <input class="txt text input-field" name="pwd" type="password" placeholder="Password" required>
                       </div>

                        <button type="submit" name="login"> LOGIN <i class="fas fa-sign-in-alt"></i></button>
                    </form>
                </div>
            </div>
   
    </section>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
</body>
</html>