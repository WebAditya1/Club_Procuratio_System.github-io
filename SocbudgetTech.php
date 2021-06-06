<?php 

session_start();
include "admin/config.php";
$msg = "";
$budget="";
$columnName = str_replace(" ", "_", $_SESSION["c"]);
if($_SESSION["category"] == "cultural_society") {
    $tableName = "cult_bud";
    $totalbudget = "CULT_SOCIETY";
}elseif($_SESSION["category"] == "sports_society") {
    $tableName = "sports_bud";
    $totalbudget = "SPORTS_SOCIETY";
}elseif($_SESSION["category"] == "lit_society") {
    $tableName = "lit_bud";
    $totalbudget = "LIT_SOCIETY";
}elseif($_SESSION["category"] == "tech_society") {
    $tableName = "technical_bud";
    $totalbudget = "TECH_SOCIETY";
}

$sql = "select ".$totalbudget." from ".$tableName;
if($result = mysqli_query($conn, $sql)) {
    if(mysqli_num_rows($result) > 0) {
        $row = mysqli_fetch_assoc($result);
        $budget = $row[$totalbudget];
    } else {
        $budget = "";
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
    <title>CultBudget</title>
    <style>
      *{
               margin: 0;
               padding: 0;
           }
     .banner{
         background-image: url(images/socbudget.png);
         min-height: 100vh;
         background-size:contain;
         background-size: 100% 100%;
         background-repeat: no-repeat;
         overflow-x:hidden;
         overflow-y:hidden;
     }

    .box{
            position: absolute;
            top: 46%;
            left: 58%;
            width: 30%; 
        }
 
        .mydiv{
            font-weight: 490;
            font-size: large;
            text-align: center;
            padding: 10px;
            background-color: white;
            border-radius: 25px;
            width: 60%;
            margin-left: 16%;
            }

             h3{
                 color: white;
                 text-transform: uppercase;
             }

             select{
                font-size: 30px;
                text-align: center;
                color: white;
                outline: none;
                border-radius: 30px;
                padding:2px 10px;
                background-color:#02548a;
                
           }

           .view{
               display: flex;
              
           }
           #view_budget{
              margin-left: 20px;
              width: 30% !important;
              text-align: center;
           }

           .btn{
                 font-weight: bold;
                 letter-spacing: 2px;
                 font-size: larger;
                 padding: 10px;
                 border-radius:20px ;
                 width: 45%;
                 background-color:#0041C2;
                 margin-left: 42%;
                 color: white;
            }


        .logout a{
                position: absolute;
                top: 8px;
                color: #D3CEF2;
                font-size:20px;
                font-weight: bold;
                text-decoration: none;
                border: solid 2px blue;
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
           
           <div class="box">
               <h3 class="mb-2">Total Society Budget</h3>
                <div class="mydiv">
                <?php echo $budget; ?>
                </div>
                <h3 class="mt-3">View Budget Distribution</h3>
                <div class="view mt-3">
                <select name="select1" id="select1" onchange="showList(this.value)">
                        <option value="" selected disabled style="color: rgb(185, 179, 179);">Select Society</option>
                        <option value="TECHNICAL_COMMITTEE">TECHNICAL COMMITTEE</option>
                        <option value="DESIGN_CLUB">DESIGN CLUB</option>
                        <option value="CODING_CLUB">CODING CLUB</option>
                        <option value="GAMING_CLUB">GAMING CLUB</option>
                    </select>
                    <div class="mydiv px-5" id="view_budget">
                    <p id="listCont"> 
                        BUDGET
                    </p>
                    </div>
                </div>

                <a href="TechBudget.php" class="btn mt-5" type="button">EDIT BUDGET</a>

           </div>
      
    
    </section>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
    <script>
        function showList(str){
        if (str.length == 0) {
            document.getElementById("listCont").innerHTML = "";
            return;
        } else {
            var xmlhttp = new XMLHttpRequest();
            xmlhttp.open("GET", "getBudgetTech.php?q=" + str, true);
            xmlhttp.send();
            xmlhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
            document.getElementById("listCont").innerHTML = this.responseText;
            }
        };   
        }
    }
    </script>
</body>
</html>