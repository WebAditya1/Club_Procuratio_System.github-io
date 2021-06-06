<?php 
include "admin/config.php";
$str = $_GET["q"];

$response = "";

$sql = "select * from tech_society where ".$str."<>'N'";

if ($result = mysqli_query($conn, $sql)) {
    if(mysqli_num_rows($result) > 0) {
        $response .= "
        <table>
                <thead>
                    <tr>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Student ID</th>
                    </tr>
                </thead>
                <tbody>
                ";
        while($row = mysqli_fetch_assoc($result)) {
            $response .=
            "
                    <tr>
                        <td>".$row["First_Name"]."</td>
                        <td>".$row["Last_Name"]."</td>
                        <td>".$row["STUDENT_ID"]."</td>
                    </tr>
            ";
        }
        $response .= "</tbody>
        </table>";
    } else {
        $response = "no data";
    }
} else {
    $response = "error";
}

 echo $response;
mysqli_close($conn);

?>
