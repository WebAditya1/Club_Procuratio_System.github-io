<?php 
session_start();
session_reset();
header("location:login.php?loggedout=true");
?>