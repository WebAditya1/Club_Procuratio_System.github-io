<?php 

session_start();
include "admin/config.php";
$sub = str_replace(" ", "-", $_SESSION["c"]);
$myTable = "";
$sql = "select * from meeting_details where TEAM='".$sub."'";
if($result = mysqli_query($conn, $sql)) {
    if(mysqli_num_rows($result) > 0) {
        $myTable .= "<table>
                <thead>
                    <tr>
                        <th>Team</th>
                        <th>Platform</th>
                        <th>Meet Time</th>
                        <th>Meet Date</th>
                    </tr>
                </thead>
                <tbody>
                ";
        while($row = mysqli_fetch_assoc($result)) {
            $myTable .=
            "
                    <tr>
                        <td>".$row["TEAM"]."</td>
                        <td>".$row["PLATFORM"]."</td>
                        <td>".$row["MEET_TIME"]."</td>
                        <td>".$row["MEET_DATE"]."</td>
                    </tr>
            ";
        }
        $myTable .= "</tbody>
        </table>";
    } else {
        $myTable = "No Meetings.";
    }
} else {
    $myTable = "Unknown error occurred.";
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
    <title>Meet</title>
    <style>
    {
        margin: 0;
        padding: 0;
    }
    .banner{
        background-image: url(images/meet.png);
        min-height: 100vh;
        background-size: cover;
        background-repeat: no-repeat;
        margin : 0px;
        overflow-x: hidden;
    }

    .box{
            padding-top: 250px;
            margin-left: 55%;
        }

     .card{
            max-height: 520px;
            width: 520px;
            padding: 13px;
            border-radius:10px;
            overflow-y: auto;
            background-color: #Fa0498;
            color: white;
            /* scrollbar-color:  #be6efc #f16ccd; */
            
        }

        /* .scrollbar::-webkit-scrollbar-track
        {
            border-radius: 15px;
            background-color: #f16ccd;
        }
        .scrollbar::-webkit-scrollbar-thumb
        {
            border-radius: 10px;
            background-color:  #be6efc;
        } */

        /* .scrollbar::-webkit-scrollbar
        {
            width: 24px;
            background-color: #Fa0498;
            padding: 20px;
        } */

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
       
        <div class="row box">
                <div class="col-lg-3 col-md-6 col-sm-8 col-12">
                    <div class="card scrollbar">
                        <?php echo $myTable; ?>
                    </div>
                </div>
            <div>
    
    </section>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
</body>
</html>