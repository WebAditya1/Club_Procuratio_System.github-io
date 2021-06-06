<?php 
session_start();
include"admin/config.php";
$msg="";

if($_SERVER["REQUEST_METHOD"] == "POST") {
    $stdid = $_POST["studentid"];
    $columnName = str_replace(" ", "_", $_SESSION["c"]);

    $sql = "select * from ".$_SESSION["category"]." where STUDENT_ID = ".$stdid;
    if($result = mysqli_query($conn, $sql)) {
        if(mysqli_num_rows($result) > 0) {
            $row = mysqli_fetch_assoc($result);
            if($row[$columnName] <> "N") {
                $sql = "update ".$_SESSION["category"]." set ".$columnName." = 'N' where STUDENT_ID = ".$stdid;
                if(mysqli_query($conn, $sql)) {
                    $msg = "Member removed successfully";
                }
            } else {
                $msg = "This student is not a member";
            }

        } else {
            $msg = "This student is not a member";
            }
        
        }else {
        $msg = "An unknown error occurred";
    }
}

?><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link rel="stylesheet" href="//use.fontawesome.com/releases/v5.0.7/css/all.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Slab&display=swap" rel="stylesheet">
    <title>doc</title>
    <style>
        *{
                margin: 0;
                padding: 0;
            }
            .banner{
                 background-image: url(images/mem\ remove.png);
                 min-height: 100vh;
                 background-size:contain;
                 background-size: 100% 100%;
                 background-repeat: no-repeat;
            }
 
            .box{
                 margin-left: 64%;
                 padding-top: 27%;
             }
 
            .txt{
                 text-align: center;
                 border-radius: 35px;
                 font-weight: 500;
                 font-size: large;
                 /* background-color: #FA0498; */
                 border: 2px solid white;
                 letter-spacing: 1.5PX;
                 padding: 3% 10% ;
                 outline: none;
                 width: 75%;  
             }
 
             .btn{
                 text-decoration: none;
                 margin-left: 83%;
                 color:white;
                 font-weight: bold;
                 letter-spacing: 2px;
                 font-size: larger;
                 padding: 12px 28px;
                 border-radius:25px ;
                 background-color:#FA0498;
            }
            .btn:hover{
                color: rgb(226, 223, 223);
            }
            
 
             .logout a{
                 position: absolute;
                 top: 8px;
                 left: 5px;
                 color: #D3CEF2;
                 font-size:20px;
                 font-weight: bold;
                 text-decoration: none;
                 border: solid 2px  #FA0498;
                 border-radius: 15px;
                 padding: 10px;
             }
             .logout a:hover{
                 color: white;
             }
 
    </style>
</head>
<body>
    <section class="banner">
        <div class="logout">
            <a href="logout.php" type="button"> LOGOUT </a>
           </div>

        <form method="post">   
        <div class="box">
            <?php 
                if($msg != "") {
                    echo "<font color='white' font face='ocraextended' size='5pt'>".$msg."<br /></font>";
                }
            ?>
            <div class="mydiv">
               <input name="studentid" type="text" class="txt" required placeholder="STUDENT ID">
            </div>
        </div>

        <button type="submit" class="btn mt-4" >Remove</button>
        </form>  
    
    </section>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
</body>
</html>