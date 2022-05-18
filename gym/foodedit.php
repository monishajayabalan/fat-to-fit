
<?php
session_start();
if(!isset($_SESSION['login_id']))
{
  header("location:login.php");  
}
?>


<?php
include 'connect.php';
if($_SERVER["REQUEST_METHOD"]==="GET"){

$id=$_REQUEST['v'];
$data= mysqli_query($conn,"select * from `food` where id =$id");
echo $id;
while ($x= mysqli_fetch_array($data)) 
    
{
    ?>
<form action="<?php echo $_SERVER['PHP_SELF'];?>" method ="POST" enctype="multipart/form data">
             
  
           
           
 

food : <input type="text"   name="food" value="<?php echo $x['food']?>">

           
           
 
<input type="submit" name="submit" value="submit">
</form>
<?php  
}
}
?>
