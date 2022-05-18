
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
$data= mysqli_query($conn,"select *from register1 where reg_id =$id");
echo $id;
while ($x= mysqli_fetch_array($data)) 
    
{
    ?>
<form action="<?php echo $_SERVER['PHP_SELF'];?>" method ="POST" enctype="multipart/form data">
             
   reg_id: <input type="text"  name="fname" value="<?php echo $x['reg_id']?>">
           
           

  approved: <input type="text"   name="gname" value="<?php echo $x['approved']?>">
          
           
<input type="submit">
</form>
<?php  
}
}
?>
<?php
if($_SERVER["REQUEST_METHOD"]==="POST"){
    echo $_SERVER["REQUEST_METHOD"] ;
$fname= ($_POST['fname']);
   if(empty($fname)){
       echo "name is empty";
   } else{
           echo $fname."<br>";
           }
           

$gname= ($_POST['gname']);

echo "$gname"."<br>";



$result=mysqli_query($conn,"UPDATE register1 SET approved='$gname' WHERE reg_id=$fname ");
if($result==true){
    echo 'ok';
}
    else{
        
  echo 'notok';
    
    }
    

}

?>

