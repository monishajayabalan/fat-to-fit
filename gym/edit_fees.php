<!DOCTYPE html>
<html>
<head>
<style>
#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #04AA6D;
  color: white;
}
</style>
</head>
<body style="background-color:yellowgreen">

<h1>FEES STRUCTURE</h1>

<table id="customers">
<tr>
  <th scope="col"><b>#</b></th>
                                                   <th><b>One month</b></th>
                                                   <th><b>Six month</b></th>
                                                   <th><b>Year </b></th>
                                                   <th><b>Edit </b></th>

  </tr>
  
  <tr>
  <?php

  include "connect.php";
    session_start();
                                              
                                                   $query = "SELECT * from `fees_tb`";
                                                
                                                   $cnt=1;
                                                   $result = mysqli_query($conn,$query) or die(mysqli_error($conn));
                                                  ?> <td colspan="5" style="text-align:center;color:blue"><b>General</b></td><?php
                                                   while ($row=mysqli_fetch_assoc($result)) {
                                                   ?>
                                                      <tr>                                   
                                                      <td><b><?php echo $cnt;?></td>
                                                          <td><b><?php echo $row['month'];?></b></td>
                                                          <td><b><?php echo $row['months'];?></b></td>
                                                          <td><b><?php echo $row['year'];?></b></td>
                                                          <td><a  style="color:blue;" href="update_fees.php?edit_id=<?php echo $row['fees_id'];?>"> 
                                                          <u> UPDATE </u></a></td>

   <?php
   $cnt=$cnt+1;
   }
  
   ?>
   
</tr>
                                                <?php

                                                   $query = "SELECT * from `couple_fees`";
                                                
                                                   $cnt=1;
                                                   $result = mysqli_query($conn,$query) or die(mysqli_error($conn));
                                                  ?> <td colspan="5" style="text-align:center;color:blue"><b>Couples Fees</b></td><?php
                                                   while ($row=mysqli_fetch_assoc($result)) {
                                                   ?>
                                                      <tr>                                   
                                                      <td><b><?php echo $cnt;?></td>
                                                          <td><b><?php echo $row['month'];?></b></td>
                                                          <td><b><?php echo $row['months'];?></b></td>
                                                          <td><b><?php echo $row['year'];?></b></td>
                                                          <td><a  style="color:blue;" href="update_fees1.php?edit_id=<?php echo $row['c_id'];?>"> 
                                                          <u>  UPDATE </u></a></td>
                


   <?php
   $cnt=$cnt+1;
   }
  
   ?>
   
</tr>
<?php
                                                $query = "SELECT * from `fam_fees`";
                                                $cnt=1;
                                                   $result = mysqli_query($conn,$query) or die(mysqli_error($conn));
                                                  ?> <td colspan="5" style="text-align:center;color:blue"><b>Family_package(2+1)</b></td><?php
                                                   while ($row=mysqli_fetch_assoc($result)) {
                                                   ?>
                                                      <tr>                                   
                                                      <td><b><?php echo $cnt;?></td>
                                                          <td><b><?php echo $row['month'];?></b></td>
                                                          <td><b><?php echo $row['months'];?></b></td>
                                                          <td><b><?php echo $row['year'];?></b></td>
                                                          <td><a  style="color:blue;" href="update_fees2.php?edit_id=<?php echo $row['f_id'];?>"> 
                                                          <u>  UPDATE </u></a></td>
                


   <?php
   $cnt=$cnt+1;
   }
  
   ?>
   
</tr>

</table>

</body>
</html>


