<?php

include('connect.php');
//$course1="";
if (isset($_POST['sub']))
{
          $name=$_POST['name'];
          $email=$_POST['email'];
          $mobile=$_POST['Mobile'];
          $gender=$_POST['gender'];
          $age=$_POST['age'];

          $weight=$_POST['weight'];
          $address=$_POST['address'];

          $role=$_POST['role'];
          $username=$_POST['user'];
          $password=$_POST['pass'];
          // $pic=$_FILES['f1']['name'];
          $avatar_path='profile/'.$_FILES['avatar']['name'];


          $avatar_path=mysqli_real_escape_string($conn,$avatar_path);
          if(copy($_FILES['avatar']['tmp_name'],$avatar_path)){
              $_SESSION['avatar']=$avatar_path;
          // $app=$_POST['app'];

mysqli_query($conn,"insert into login (username,password,role) values('$username','$password','$role') ");
$lid=mysqli_insert_id($conn);

$select=mysqli_query($conn,"INSERT into `register1`(`login_id`,`name`,`email`,`mobile`,`gender`,`age`,`weight`,`address`,`image_path`)
 VALUES ('$lid','$name','$email','$mobile','$gender','$age','$weight','$address','$avatar_path')");
header("location: login.php");
            }
}

// function check_ext($f_ext)
//       {
//         $allowed= array('jpg','png','jpeg');
//         if(in_array($f_ext,$allowed))
//         {
//           return true;
//         }
//         else
//         {
//           return false;
//         }
//       }

?>
<!DOCTYPE html>
<html>
<head>
 <link rel="" type="" href=>

  <title>Registration Form</title>
	
</head>

<link rel="stylesheet" type="text/css" href="css/main.css">
<form  method="post" autocomplete="off" enctype="multipart/form-data">
  
<body>
<div id="form">	
	<table id="tbl" align="center" style="height: 450px;">
		<tr>
		<th>Name</th>
		<td><span id="sname" style="color: red"></span>
		<input id="name" type="text" placeholder="name"  name="name" onkeyup="clearerror('sname')"></td>

		<tr>
		<th>Email</th>
		<td>
	    <span id="semail" style="color:red"></span>
		<input id="email" type="email" placeholder="email"  name="email"onkeyup=" clearerror('semail')">
		 </td></tr>
		

	    <tr>
	    <th>Mobile</th>
	    <td>
	    <span id="smob" style="color: red"></span>
	    <input id="mob" type="text" placeholder="mobile num"  name="Mobile"onkeyup=" clearerror('smob')">
	    </td></tr>

	    <tr>
	    <th>Gender</th> 
	    <td>
	   
	    <input type="radio" name="gender" value="male" onclick="clearerror('sgen')"> male
	    <input type="radio" name="gender" value="female">female<span id="sgen" style="color: red"></span></td> </tr>
      <tr>
	    <th>Age</th>
	    <td>
	    <span id="smob" style="color: red"></span>
	    <input id="age" type="text" placeholder="Age"  name="age"onkeyup=" clearerror('smob')">
	    </td></tr>
      <tr>
	    <th>Weight</th>
	    <td>
	    <span id="smob" style="color: red"></span>
	    <input id="weight" type="text" placeholder="Weight"  name="weight"onkeyup=" clearerror('smob')">
	    </td></tr>
      <tr>
	    <th>Address</th>
	    <td>
	    <span id="smob" style="color: red"></span>
	    <input id="address" type="text" placeholder="Address"  name="address"onkeyup=" clearerror('smob')">
	    </td></tr>
	    <th>type</th><td>

	    <select id="loc" name="role"  onclick="clearerror('sloc')"placeholder="select a place">
	    	<option></option>
	    	
	    	<option value="user">user</option>
	    	

	    </select><span id="sloc" style="color: red"></span></td></tr>

      <tr>
        <th>username</th><td>
          <span id="suser" style="color: red"></span>
          <input id="user" type="text"  name="user" placeholder="username" onclick="clearerror('suser')"></td>
          
        <tr>
  <tr>
        <th>password</th>
        <td>
          <span id="spass" style="color: red"></span>
          <input id="password" type="password"  name="pass" placeholder="password" onclick="clearerror('spass')">
        </td>
  </tr>
  <tr>
  <td>file upload</td>
  <td> <input type="file" class="inp"  name ="avatar" ></td>
 </tr> 


         	<td colspan="3" align="center"><button id="button" type="submit" name="sub" onclick=" return validate()">SAVE</button></td>
         </tr>

   

       </table>	

     


	  
	<script>
		  
		  function validate()
		  {
              var uname=document.getElementById("name").value;
               var uemail=document.getElementById("email").value;
                var umob=document.getElementById("mob").value;
                 var ugen=document.getElementsByName("gender");
                  var uqua=document.getElementsByName("qua[]");
                   var uloc=document.getElementById("loc").value;
                    var uuser=document.getElementById("user").value;
                     var upass=document.getElementById("password").value;
             
              if(uname=="")
              {
              	document.getElementById("sname").innerHTML=" *name required";
                 return false;
              }
                       	  
             
               if(uemail==""||uemail.indexOf("@")==-1||uemail.indexOf(".")==-1)
              {
              	document.getElementById("semail").innerHTML="*email required";
              	return false;
              }
             
          
             if(umob=="")
              {
              	document.getElementById("smob").innerHTML="*number required";
              	return false;
              }
              
             if(isNaN(umob))
               {
                    document.getElementById("smob").innerHTML="*numbers only";
               
              	return false;
              }

             if(umob.length<10||umob.length>10)
             {
             	document.getElementById("smob").innerHTML="*enter 10 numbers";
             //alert("enter 10 digit numbers");
             	return false;
             }

 			// if((ugen[0].checked==false)&&(ugen[1].checked==false))
 			// {
 			// 	alert("select a gender");
 			// 	return false;
 			// }

              flag=0;
              for(i=0;i<ugen.length;i++)
               {
               	if (ugen[i].checked==true)
               	{
               		flag=1;
               		break;
               	}
               }
               	if (flag==0)
               	{
             
                document.getElementById("sgen").innerHTML="*select a gender";
                return false;
              } 
           


              flag=0;
               for(i=0;i<uqua.length;i++)
              	 {
              	 	if(uqua[i].checked==true)
               			{
               				flag=1;
               				break;
               			 }
               			}
               		 if(flag==0)
               				 {
              					document.getElementById("squa").innerHTML="*select qualification";
              					return false;
             				 }
             	 

           
             if(uloc=="")
              {
              	document.getElementById("sloc").innerHTML="*location required";
              	return false;
              }


              if(uuser=="")
              {
                document.getElementById("suser").innerHTML=" *name required";
                 return false;
              }


               if(upass=="")
              {
                document.getElementById("spass").innerHTML=" *password required";
                 return false;
              }

		    
		  }
		 


	</script>  
	      
<script>
	function clearerror(eee)
	{
		document.getElementById(eee).innerHTML="";

	}
</script>
<!-- <script>
  function refresh()
  {
    window.location.reload();
  }
</script> -->

</body>
</form>

</html>