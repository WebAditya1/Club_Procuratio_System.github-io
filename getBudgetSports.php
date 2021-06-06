<?php 
include "admin/config.php";
$str = $_GET["q"];
$response = "";
$sql = "select ".$str." from sports_bud";

if ($result = mysqli_query($conn, $sql)){
    if(mysqli_num_rows($result) > 0) {
        $result =  mysqli_fetch_assoc($result);
        $response = $result[$str];
    } else {
        $response = "no data";
    }
} else {
    $response = "error";
}
echo $response;
mysqli_close($conn);
?>
