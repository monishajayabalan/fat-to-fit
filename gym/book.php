<?php 
include "connect.php";



$dis = $_GET['del_id'];


$update_status=mysqli_query($conn,"UPDATE product_tb SET status='1' WHERE id='$dis'");

header('location:gdisplay.php');



?>