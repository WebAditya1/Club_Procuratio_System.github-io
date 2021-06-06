<?php 
session_start();
include "admin/config.php";
$tableName = "technical_bud";
$msg="";
$codingb="";
$designb="";
$gamingb="";
$techb="";
$budget = "";
$totalbudget = "TECH_SOCIETY";
$tech="TECHNICAL_COMMITTEE";
$coding="CODING_CLUB";
$gaming="GAMING_CLUB";
$design="DESIGN_CLUB";


$sql = "select * from ".$tableName;
if($result = mysqli_query($conn, $sql)) {
    if(mysqli_num_rows($result) > 0) {
        $row = mysqli_fetch_assoc($result);
        $budget = $row[$totalbudget];
        $techb = $row[$tech];
        $codingb = $row[$coding];
        $designb = $row[$design];
        $gamingb = $row[$gaming];
    } else {
        $codingb="";
        $designb="";
        $gamingb="";
        $techb="";
        $budget = "";
    }
}

if($_SERVER["REQUEST_METHOD"] == "POST") {
    $dotclub = $_POST["dot"];
    $arcadiaclub = $_POST["arcadia"];
    $codeclub = $_POST["code"];
    $sql = "update ".$tableName." set ".$coding." = ".$codeclub.",".$design."=".$dotclub.",".$gaming."=".$arcadiaclub ;

    if (mysqli_query($conn, $sql)) {
    $msg = "Budget Updated";
    } else {
        $msg = "Error, Please Try Again";
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }
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
               text-transform: uppercase;
           }
        .banner{
            background-image: url(images/budget.png);
            min-height: 100vh;
            background-size:contain;
            background-size: 100% 100%;
            background-repeat: no-repeat;
        }

        .card{
            position: absolute;
            top: 15%;
            left: 45%;
            border-radius: 20px;
            padding: 15px;
            background-color:#D50372;
            opacity: 70%;
            /* background-blend-mode: darken; */
            color: #EFE9FB;
            max-height: 760px;
            width: 505;
        }

        .header{
            font-size: 35px;
            font-weight: bold;

        }

        .mydiv{
                font-weight: 500;
                 font-size: 18px;
                text-align: center;
                padding: 2.5px;
                color: black;
                background-color: white;
                /* border-color: #F2F1F8; */
                border-radius: 25px;
                height: 25px;
                width: 60%;
             }

            .total{
                 display: flex;
                 /*text-align: center;
                 align-items: center;*/
            }

             p{
                 font-size: 18px;
                 font-weight: 500;
             }

             .new{
                 padding-left: 10%;

             }

             .txt{
                 text-align: center;
                 border-radius: 20px;
                 font-weight: 500;
                 font-size: 17px;
                 border: 1px solid white;
                  /* border-color: #F2F1F8; */
                 /*letter-spacing: 1.5PX;*/
                 padding:0.1px;
                 outline: none;
                 width: 95%;  
                 margin-left:5%;
                 text-transform:none !important;
             }

             .btn{
                 font-weight: bold;
                 letter-spacing: 2px;
                 font-size: larger;
                 padding: 5px;
                 border-radius:20px ;
                 width: 80%;
                 background-color:white;
            }
            /* .btn:hover{
                color: rgb(226, 223, 223);
            } */
            .button{
                text-align: center;
            }

    
        .logout a{
                position: absolute;
                top: 8px;
                /* left: 5px; */
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

           <form method="POST">
           <div class="card">
              <div class="header text-center">
                  Edit
                  <?php 
                    if($msg != "") {
                    echo "<font color='white' font face='ocraextended' size='5pt'>".$msg."<br /></font>";
                }
            ?>
              </div>

              <h5> Total Society</h5>
              <div class="total">
                <div class="mydiv">
                    <?php echo $budget; ?>
                   </div>
                   <p class="px-2"> FIXED</p>
              </div>

              <h5 > Technical Committee</h5>
              <div class="total">
                <div class="mydiv">
                    <?php echo $techb; ?>
                   </div>
                   <p class="px-2"> Auto-update</p>
              </div>

              <h5 > Design club</h5>
              <div class="total">
                
                   <p class="px-2"> Old</p>
                   <div class="mydiv">
                    <?php echo $designb; ?>
                   </div>
                  
                   <p class="new"> New</p>
                   <div>
                    <input type="text" class="txt" name="dot" required placeholder="NEW">
                 </div>

              </div>

              <h5 > Gaming club</h5>
              <div class="total">
                
                   <p class="px-2"> Old</p>
                   <div class="mydiv">
                    <?php echo $gamingb; ?>
                   </div>
                  
                   <p class="new"> New</p>
                   <div>
                    <input type="text" class="txt" name="arcadia" required placeholder="NEW">
                 </div>

              </div>

              <h5 > Coding club</h5>
              <div class="total">
                
                   <p class="px-2"> Old</p>
                   <div class="mydiv">
                    <?php echo $codingb; ?>
                   </div>
                  
                   <p class="new"> New</p>
                   <div>
                    <input type="text" class="txt" name="code" required placeholder="NEW">
                 </div>

              </div>

              

             <div class="button mb-1">
             <button type="submit" class="btn"> CHANGE </button>
             </div>
            </form>
            </div>                
                
    </section>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
</body>
</html>