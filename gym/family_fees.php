<!doctype html>
<html class="no-js" lang="en">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<?php
session_start();
include "connect.php";


if (isset($_POST["submit"]))
{

    $month = $_POST['month'];
    $months = $_POST['months'];
    $year = $_POST['year'];

         mysqli_query($conn,"INSERT INTO `fam_fees` (`f_id`,`month`,`months`,`year`) 
      VALUES (NULL,'$month','$months','$year')");
      echo "<script> alert('added');</script>";
// echo "<script> window.location.href='view_catagory.php';</script>"; 
}


?>
   


<head>
<style>
* {
  box-sizing: border-box;
}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}

.col-25 {
  float: left;
  width: 25%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 75%;
  margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}
</style>
</head>
<body style="background-color:yellowgreen;">
<button onclick="location.href = 'index.php';"  class="w3-button w3-teal">BACK TO HOME PAGE</button>

    <form method="post"  enctype="multipart/form-data">
 
   
                        <div class="form-group">
							<label for="recipient-name" class="col-form-label" style="color:white">One month</label>
							<input type="text" class="form-control" placeholder="One month fees" name="month" id="month" required="">
						</div>      
            <div class="form-group">
							<label for="recipient-name" class="col-form-label" style="color:white">Six Months</label>
							<input type="text" class="form-control" placeholder="enter Six Months fees../" name="months" id="months" required="">
						</div>    
            <div class="form-group">
							<label for="recipient-name" class="col-form-label"style="color:white">One year</label>
							<input type="text" class="form-control" placeholder="enter One year fees" name="year" id="year" required="">
						</div>    
                        <br><br>
						<div style="float:left;">
							<input type="submit" name="submit" id="submit" value="submit">
						</div>

    
</form>
</div>

</body>
</html>


