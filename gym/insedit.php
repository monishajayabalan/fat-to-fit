
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
$data= mysqli_query($conn,"select *from food where id =$id");
echo $id;
while ($x= mysqli_fetch_array($data)) 
    
{
    ?>
<form action="<?php echo $_SERVER['PHP_SELF'];?>" method ="POST" enctype="multipart/form data">
             
   id: <input type="text"  name="fname" value="<?php echo $x['id']?>">
           
           

  eat: <input type="text"   name="gname" value="<?php echo $x['eat']?>">
          
           
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



$result=mysqli_query($conn,"UPDATE food SET eat='$gname' WHERE id=$fname ");
if($result==true){
    echo 'ok';
}
    else{
        
  echo 'notok';
    
    }
    

}

?>

