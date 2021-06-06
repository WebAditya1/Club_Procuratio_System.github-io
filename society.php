<?php
session_start();
if(!isset($_SESSION["studentid"])) {
    header("location:login.php");
}
include "admin/config.php";
$msg="";
if($_SERVER["REQUEST_METHOD"] == "POST") {
    $category = $_POST["category"];
    $subcategory = $_POST["subcategory"];
    $role = strtoupper($_POST["sub_subcategory"][0]);
    
    $sql = "select * from ".$category." where STUDENT_ID=".$_SESSION['studentid']." and ".$subcategory."='".$role."'";

    if($result = mysqli_query($conn, $sql)) {
        if(mysqli_num_rows($result) == 1) {
            $_SESSION["c"] = str_replace("_", " ", $_POST["subcategory"]);
            $_SESSION["category"] = $category;
            if($role == 'M') {
                if(strpos($subcategory, "CLUB")) {
                    header("location:heyClub.php");
                } else {
                    header("location:heyCommittee.php");
                }
            } elseif ($role == 'J') {
                header("location:clubJsec.php");
            } elseif ($role == 'S') {
                header("location:clubSec.php");
            } elseif ($role == 'P') {
                header("location:Commpresident.php");
            } elseif ($role == 'V') {
                header("location:CommVpresident.php");
            }
        } else {
            $msg =  "Invalid Entry, try Again";
        }
    } else {
        $msg = "Unknown error occurred.";
    };
}

?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <link rel="stylesheet" href="//use.fontawesome.com/releases/v5.0.7/css/all.css">
        <link href="https://fonts.googleapis.com/css2?family=Roboto+Slab&display=swap" rel="stylesheet">
        <title>Create dyanamic 3 dropdown list in javascript</title>
     

        <script language="javascript" type="text/javascript">   

			function dynamicdropdown(listindex)
            {
                document.getElementById("sub_subcategory").length = 0;
                document.getElementById("sub_subcategory").options[0]=new Option("Select Role","");
                document.getElementById("subcategory").length = 0;
                switch (listindex)
                {


                    case "cultural_society" :
                        document.getElementById("subcategory").options[0]=new Option("Select Club/Committee","");
                        document.getElementById("subcategory").options[1]=new Option("Cultural Committee","CULTURAL_COMMITTEE");
                        document.getElementById("subcategory").options[2]=new Option("Dance Club","DANCE_CLUB");
                        document.getElementById("subcategory").options[3]=new Option("Music Club","MUSIC_CLUB");
                        document.getElementById("subcategory").options[4]=new Option("Drama Club","DRAMA_CLUB");
                        document.getElementById("subcategory").options[5]=new Option("Art Club","ART_CLUB");
                        break;
                    
                    case "sports_society" :
                        document.getElementById("subcategory").options[0]=new Option("Select Club/Committee","");
                        document.getElementById("subcategory").options[1]=new Option("Sports Committee","SPORTS_COMMITTEE");
                        document.getElementById("subcategory").options[2]=new Option("Chess Club","CHESS_CLUB");
                        document.getElementById("subcategory").options[3]=new Option("Cricket Club","CRICKET_CLUB");
                        break;

                    case "tech_society" :
                        document.getElementById("subcategory").options[0]=new Option("Select Club/Committee","");
                        document.getElementById("subcategory").options[1]=new Option("Technical Committee","TECHNICAL_COMMITTEE");
                        document.getElementById("subcategory").options[2]=new Option("Gaming Club","GAMING_CLUB");
                        document.getElementById("subcategory").options[3]=new Option("Design Club","DESIGN_CLUB");
                        document.getElementById("subcategory").options[4]=new Option("Coding Club","CODING_CLUB");
                        break;

                    case "lit_society" :
                        document.getElementById("subcategory").options[0]=new Option("Select Club/Committee","");
                        document.getElementById("subcategory").options[1]=new Option("Literature Committee","LITERATURE_COMMITTEE");
                        document.getElementById("subcategory").options[2]=new Option("Book Club","BOOK_CLUB");
                        document.getElementById("subcategory").options[3]=new Option("Poetry Club","POETRY_CLUB");
                        break;

                    default:
                        document.getElementById("subcategory").options[0]=new Option("Select Club/Committee","");
                        break;
                }
                return true;
            }
            
            function dynamicdropdownone(listindex)
            {
                document.getElementById("sub_subcategory").length = 0;
                switch (listindex)
                {
                    case "CULTURAL_COMMITTEE" :
                    case "SPORTS_COMMITTEE" :
                    case "TECHNICAL_COMMITTEE" :
                    case "LITERATURE_COMMITTEE" :
                        document.getElementById("sub_subcategory").options[0]=new Option(" Select role","");
                        document.getElementById("sub_subcategory").options[1]=new Option("President","President");
                        document.getElementById("sub_subcategory").options[2]=new Option("Vice President","Vice President");
                        document.getElementById("sub_subcategory").options[3]=new Option("Member","Member");
                        break;
                    
                    case "DANCE_CLUB" :
                    case "MUSIC_CLUB" :
                    case "DRAMA_CLUB" :
                    case "ART_CLUB" :
                    case "CHESS_CLUB" :
                    case "CRICKET_CLUB" :
                    case "GAMING_CLUB" :
                    case "DESIGN_CLUB" :
                    case "CODING_CLUB" :
                    case "BOOK_CLUB" :
                    case "POETRY_CLUB" :
                   
                        document.getElementById("sub_subcategory").options[0]=new Option(" Select role","");
                        document.getElementById("sub_subcategory").options[1]=new Option("Secretary","Secretary");
                        document.getElementById("sub_subcategory").options[2]=new Option("Joint Secretary","Joint Secretary");
                        document.getElementById("sub_subcategory").options[3]=new Option("Member","Member");
                        break;
                   
                    default:
                        document.getElementById("sub_subcategory").options[0]=new Option(" Select Role","");
                        break;
                }
                return true;
            }

          
            // function myFunction(){
            //        var k = 0;
            //         var x = document.getElementById("subcategory").value;

            //         switch (x)
            //     {
            //         case "Cultural Committee" :
            //         case "Sports Committee" :
            //         case "Technical Committee" :
            //         case "Literature Committee" :
            //         // console.log("committee");
            //         k = k+1;
                    
            //             break;
                    
            //         case "Dance Club" :
            //         case "Music Club" :
            //         case "Drama Club" :
            //         case "Art Club" :
            //         case "Chess Club" :
            //         case "Cricket Club" :
            //         case "Gaming Club" :
            //         case "Design Club" :
            //         case "Coding Club" :
            //         case "Book Club" :
            //         case "Poetry Club" :
                   
            //         // console.log("Club");
            //         k = k+2
            //             break;
                   
            //         default:
            //             console.log("none");
            //             break;
            //     }

            //     var y = document.getElementById("sub_subcategory").value;
            //         //  console.log(y);
                    
            //         switch (y){

            //             case "Member" :
            //              k = k+10;
            //             break;

            //             case "Vice President" :
            //             k = k+4;
            //             break;

            //             case "President" :
            //             k = k+5;
            //             break;

            //             case "Secretary" :
            //             k = k+6;
            //             break;

            //             case "Joint Secretary" :
            //             k = k+7;
            //             break;

            //             default:
            //             console.log("none");
            //             break;
            //         }

            //         if(k == 9){
            //             var link = document.getElementById("enter");
            //            link.setAttribute("href", "Club  Jsec.html");
            //         }

            //         else if(k == 8){
            //             var link = document.getElementById("enter");
            //             link.setAttribute("href", "Club Sec.html");
            //         }

            //         else if(k == 6){
            //             var link = document.getElementById("enter");
            //             link.setAttribute("href", "Comm president.html");
            //         }
            //         else if(k == 5){
            //             var link = document.getElementById("enter");
            //             link.setAttribute("href", "Comm Vpresident.html");
            //             return false;
            //         }

            //         else if(k == 11){
            //             var link = document.getElementById("enter");
            //             link.setAttribute("href", "Hey Comm.html");
            //         }
            //         else if(k == 12){
            //             var link = document.getElementById("enter");
            //             link.setAttribute("href", "Hey club.html");
            //         }
            //         else{}

            //         }

       </script>

       <style>
           *{
               margin: 0;
               padding: 0;
           }
           .banner{
                background-image: url(images/role.png);
                min-height: 100vh;
                background-size:contain;
                background-size: 100% 100%;
                background-repeat: no-repeat;
           }
           .category_div,.sub_category_div,.sub_subcategory_div{
               margin-left: 55%;
               padding-top: 2.5%;
           }
           #category_div{
               padding-top:320px;
           }
           select{
                font-size: 30px;
                text-align: center;
                color: white;
                outline: none;
                border-radius: 30px;
                padding: 1.6% 10%;
                /* background-color: #be6efc; */
                background-color:#FA0498 ;
                width: 80%;
           }

           .btn{
                margin-left: 82%;
                color:white;
                font-weight: bold;
                letter-spacing: 2px;
                font-size: larger;
                padding: 15px;
                border-radius:25px ;
                background-color:#FA0498  ;
           }
          
           .logout a{
                position: absolute;
                top: 8px;
                left: 5px;
                color: white;
                font-size:20px;
                font-weight: bold;
                text-decoration: none;
                border: solid 2px  #FA0498;
                border-radius: 15px;
                padding: 10px;
            }
            .logout a:hover{
                color: #D3CEF2;
            }
          
          .welcomeMsg {
              position: absolute;
              top: 112px;
              left: 140px;
              font-family: "Times New Roman", Times, serif;
              font-size : 40px;
          }

           
       </style>
       
    </head>
    <title>Dynamic Drop Down List</title>
    <body>
        <section class="banner">
            <div class="logout">
                <a href="logout.php" type="button"> LOGOUT </a>
            </div>
            <div class="welcomeMsg text-white pt-9">
                <p>
                <?php 
                    echo "Hey, ".$_SESSION["name"];
                ?>
                </p>
            </div>
            <form method="post">
        <div class="category_div" id="category_div">
        
                    <?php 
                        if($msg != "") {
                            echo "<font color='white' font face='ocraextended' size='5pt'>".$msg."<br /></font>";
                        }
                    ?>

            <select name="category" class="required-entry" id="category" onchange="javascript: dynamicdropdown(this.options[this.selectedIndex].value);">
                <option value="" selected disabled style="color: rgb(185, 179, 179);">Select society</option>
                <option value="cultural_society">Cultural society</option>
                <option value="sports_society">Sports society</option>
                <option value="tech_society">Technical society</option>
                <option value="lit_society">Literature society</option>
            </select>
        </div>


        <div class="sub_category_div" id="sub_category_div">
            <script type="text/javascript" language="JavaScript">
                document.write('<select name="subcategory" id="subcategory" onchange="javascript: dynamicdropdownone(this.options[this.selectedIndex].value);"><option value=""> Select committee </option></select>')
            </script>
            <noscript>
                <select name="subcategory" id="subcategory" >
                    <option value="">  Select committee </option>
                </select>
            </noscript>

           </div>



        <div class="sub_subcategory_div" id="sub_subcategory_div">

            <script type="text/javascript" language="JavaScript">
                document.write('<select name="sub_subcategory" id="sub_subcategory"><option value="">  Select Role </option></select>')
            </script>

            <noscript>
                <select name="sub_subcategory" id="sub_subcategory" >
                    <option value="">  Select Role </option>
                </select>
            </noscript>
           </div>

           <button class="btn mt-5" id="enter" type="submit">Enter <i class="fas fa-sign-in-alt"></i></button>    

        </form>
    </section>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
    </body>
</html>                 