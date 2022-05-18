<?php
include('connect.php');
session_start();
//$user=$_SESSION['login_id'];
if(isset($_SESSION['login_id']))
{
  //header("location:home.php");  
}

if(isset($_POST['sub']))
{
$username=$_POST['user'];
$password=$_POST['pass'];
$query=mysqli_query($conn,"SELECT * from login where username='$username' and password='$password'");
$result=mysqli_fetch_assoc($query);
if(mysqli_num_rows($query)>0)
{

    
    $role=$result['role'];


        if($role=='admin')
          {
              $_SESSION['login_id']=$result['login_id'];
              $_SESSION['role']=$result['role'];
              header("location:admindashbord.php");
          } 
if($role=='user')
          {
              $_SESSION['login_id']=$result['login_id'];
              $_SESSION['username']=$result['username'];

              $_SESSION['role']=$result['role'];
              header("location:userdashbord.php");
          } 
if($role=='physician')
          {
              $_SESSION['login_id']=$result['login_id'];
              $_SESSION['role']=$result['role'];
              header("location:physiciandashbord.php");
          } 
if($role=='instructer')
          {
              $_SESSION['login_id']=$result['login_id'];
              $_SESSION['role']=$result['role'];
              header("location:instructerdashbord.php");
          } 



          }
 else
          {
             echo "<script>alert('invalid username or password')</script>";
          }  
}

?>




?>
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" type="text/css" href="css/lo.css">
  <title>LOGIN</title>
  
  
</head>
<form method="post" >
<body style="background-image:url('images/b1.jpg')">
  <div><a href="index.php" style="font-size: 150%"><b style="color:white">Home</b></a></div>
  <table id="tbl" align="center" id="tbl" style="">

    <tr>
      <th align="center" colspan="2" style="color:white">LOGIN</th>
    </tr>

  <tr>
    <th style="color:white">
      USERNAME
    </th>
    <td>
      <input type="text" name="user" placeholder="username">
    </td>
  </tr><br><br>
  <tr>
    <th style="color:white">
      PASSWORD
    </th>
    <td>
      <input type="password" name="pass">
    </td>
  </tr><br><br>
  <tr>
    <td align="center" colspan="2">
      <input id="b1" type="submit" name="sub" value="submit" style="width: 100px">
      <a href=".php" style="width: 100px"></a>
    </td>
  </tr>
</table>
</body>
</form>
</html>
