<?php 
include "connect.php";



$dis = $_GET['edit_id'];


$update_status=mysqli_query($conn,"UPDATE`register1` SET approved='0' WHERE reg_id='$dis'");

header('location:viewusers.php');
 ?>