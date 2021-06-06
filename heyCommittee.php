<?php
session_start();
if(!isset($_SESSION["studentid"])) {
    header("location:login.php");
}

if($_SESSION["category"] == "cultural_society") {
    $link = "cultural.html";
} elseif ($_SESSION["category"] == "sports_society") {
    $link = "sports.html";
} elseif ($_SESSION["category"] == "lit_society") {
    $link = "literature.html";
} elseif ($_SESSION["category"] == "tech_society") {
    $link = "technical.html";
}

?>
<!DOCTYPE html>
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
                background-image: url(images/com_mem.png);
                min-height: 100vh;
                background-size:contain;
                background-size: 100% 100%;
                background-repeat: no-repeat;
           }

           .btn{
                text-decoration: none;
                border-radius: 35px;
                background-color: #FA0498;
                font-size: 1em;
                padding: 3% 12%;
                letter-spacing: 2px;
                text-transform: uppercase;
                transition: all 1s ease-in-out;
                width: 60%;
            }

            .btn:hover{
                /* letter-spacing: 4px; */
                transform: scale(1.09) perspective(10px);
            }

            .button{
                margin-left: 68%;
                padding-top: 330px;
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
        </div>
        <div class="button">
            <div class="mydiv">
                <a href="<?php echo $link; ?>" class="btn mt-4 text-white btn1 " > View Members</a>
            </div>
            <div class="mydiv">
                <a href="meet.php" class="btn mt-4 text-white btn2" > My meetings</a>
            </div>
        </div>
    
    </section>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
</body>
</html>