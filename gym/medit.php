

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
$data= mysqli_query($conn,"select *from medicine where id =$id");
echo $id;
while ($x= mysqli_fetch_array($data)) 
    
{
    ?>
<form action="<?php echo $_SERVER['PHP_SELF'];?>" method ="POST" enctype="multipart/form data">
             
    id: <input type="text"  name="fname" value="<?php echo $x['id']?>">
           
           
medicine_name: <input type="text"   name="lname" value="<?php echo $x['medicine_name']?>">
stocks: <input type="text"   name="bname" value="<?php echo $x['stocks']?>">

price: <input type="text"   name="cname" value="<?php echo $x['price']?>">
           
           
 
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
           
$lname= ($_POST['lname']);

echo "$lname"."<br>";
$bname= ($_POST['bname']);

echo "$bname"."<br>";
$cname= ($_POST['cname']);

echo "$cname"."<br>";



$result=mysqli_query($conn,"UPDATE medicine SET 	medicine_name='$lname',	stocks='$bname', price='$cname' WHERE id=$fname ");
if($result==true){
    echo 'ok';
}
    else{
        
  echo 'notok';
    
    }
    

}

?>

