
<?php
session_start();
if(!isset($_SESSION['login_id']))
{
  header("location:login.php");  
}
?>


<?php
include'connect.php';
?>





<!DOCTYPE html>
<html lang="zxx">
  <head>
     <title>Fat-to-Fit</title>
    <!--meta tags -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="Gym-plus Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
      Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script>
      addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
      }, false);
      
      function hideURLbar() {
        window.scrollTo(0, 1);
      }
    </script>
    <!--//meta tags ends here-->
    <!--booststrap-->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
    <!--//booststrap end-->
    <!-- font-awesome icons -->
    <link href="css/fontawesome-all.min.css" rel="stylesheet" type="text/css" media="all">
    <!-- //font-awesome icons -->
    <!--lightbox slider-->
    <link rel="stylesheet" href="css/lightbox.css">
    <!-- lightbox slider-->
    <!--Animation-effects-css-->
    <link href='css/aos.css' rel='stylesheet prefetch' type="text/css" media="all" />
    <!--//Animation-effects-css-->
    <!--stylesheets-->
    <link href="css/style.css" rel='stylesheet' type='text/css' media="all">
    <!--//stylesheets-->
    <link href="//fonts.googleapis.com/css?family=Oswald:400,500,600" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=PT+Sans" rel="stylesheet">
      <link rel="stylesheet" href="css2/bootstrap.css"> <!-- Bootstrap-Core-CSS -->
  <link rel="stylesheet" href="css2/style.css" type="text/css" media="all" /> <!-- Style-CSS --> 
  <link rel="stylesheet" href="css2/fontawesome-all.css"> <!-- Font-Awesome-Icons-CSS -->
  <!-- //css files -->
  <link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css'/>
  <link rel="stylesheet" href="css2/jquery-ui.css" /><!-- Calendar -->
  <!-- testimonials css -->
  <link rel="stylesheet" href="css2/flexslider.css" type="text/css" media="screen" property="" /><!-- flexslider css -->
  <!-- //testimonials css -->
  <!-- web-fonts -->
  <link href="//fonts.googleapis.com/css2?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
  <link href="//fonts.googleapis.com/css2?family=Roboto+Slab:100,300,400,700&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
  <!-- //web-fonts -->
  

  </head>
  <body>
    <div class="header-outs" id="header">
      <div class="header-w3layouts">
        <div class="container-fluid">
          <!--//navigation section -->
          <nav class="navbar navbar-expand-lg navbar-light">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent" data-aos="fade-left">
              <ul class="navbar-nav">
								<li>
							<a class="nav-link" href=""></a>
						</li>
	
						<li class="nav-item">
							<a class="nav-link" href=""></a>
						</li>
              <li class="nav-item">
              <a class="nav-link" href="instructerdashbord.php">Back</a>
            </li>
						
						    </ul>
            </div>
          </nav>
          <!--//navigation section -->
          <div class="clearfix"> </div>
        </div>
      </div>
      <!--banner -->
      <div class="container">
        <div class="banner-slide-img" data-aos="fade-up">
          <div class="hedder-up " >

				<center>
	
				<div class=" contact-form aos-init aos-animate" data-aos="fade-left"
          data-aos-offset="100"
          data-aos-easing="ease-in-sine">
        
				
	
	
				<h3 class="tittle-w3"><span>time .....</span></h3>
					<form action="" method="post" >

              <?php
                $id=$_SESSION['login_id'];
                 
            $sql="SELECT username from login where login_id='$id'";
            $res_user=mysqli_query($conn,$sql);
            // $total = mysqli_num_rows($res_user);
                    // if ($total != 0)
                    // {

             while($row_user=mysqli_fetch_assoc($res_user)){
             ?>
            <input type="text" name="name" value="<?php echo $row_user['username']?>"  class="form-control" required="" />

            <?php
            // }
           }
              ?>


						<!-- <input type="text" name="name" placeholder="trainername" required="" class="form-control" /> -->
						<select name="uname" id="uname" Placeholder="username" required="" class="form-control">
                <option value="">Username</option>
            <?php
            $sql="SELECT username from login where role='user'";
            $res_user=mysqli_query($conn,$sql);
            
             while($row_user=mysqli_fetch_assoc($res_user)){?>
                        <option id="<?php echo $row_user['login_id']?>"><?php echo $row_user['username']?></option>
            <?php } ?>
            </select>



            <!-- <input type="number" name="uid" placeholder="user_id" required="" class="form-control" /> <br> -->
            <!-- <input type="text" name="uname" placeholder="username" required="" class="form-control" /> -->
						<input type="text" name="time" placeholder="workingtime" required="" class="form-control" /><br>
						<input type="text" name="day" placeholder="workingdays" required="" class="form-control" />
						
						

						<input type="submit" name="submit" value="submit">
            <?php

      if(isset($_POST['submit']))
      {
     $date=$_POST['name'];
     $uname=$_POST['uname'];
    //  $user=$_POST['uid'];
     $time=$_POST['time'];
     $day=$_POST['day'];
    
    
    
    $result=mysqli_query($conn,"INSERT INTO time(trainer_name,user_name,work_time,work_day) 
     VALUES('$date','$uname','$time','$day')");
      }
?>
						</form>
					</div>
					
				</center>
			</div>
		</div>
	</div>
</div>
          </div>
           <script src='js/jquery-2.2.3.min.js'></script>
    <!--//js working-->
    <!--  light box js -->
    <script src="js/lightbox-plus-jquery.min.js"> </script> 
    <!-- //light box js-->   
      <!--responsiveslides banner-->
    <script src="js/responsiveslides.min.js"></script>
    <script>
      // You can also use "$(window).load(function() {"
      $(function () {
        // Slideshow 4
        $("#slider4").responsiveSlides({
          auto: true,
          pager:true,
          nav:false ,
          speed: 900,
          namespace: "callbacks",
          before: function () {
            $('.events').append("<li>before event fired.</li>");
          },
          after: function () {
            $('.events').append("<li>after event fired.</li>");
          }
        });
      
      });
    </script>
    <!--// responsiveslides banner--> 
        <!--animation body -->
    <script src="js/aos.js"></script>
    <script>
      AOS.init({
        easing: 'ease-out-back',
        duration:1200
      });
    </script>
   <!-- //animation body -->
    <!-- start-smoth-scrolling -->
    <script src="js/move-top.js"></script>
    <script src="js/easing.js"></script>
    <script>
      jQuery(document).ready(function ($) {
        $(".scroll").click(function (event) {
          event.preventDefault();
          $('html,body').animate({
            scrollTop: $(this.hash).offset().top
          }, 900);
        });
      });
    </script>
    <!-- start-smoth-scrolling -->
    <!-- here stars scrolling icon -->
    <script>
      $(document).ready(function () {
      
        var defaults = {
          containerID: 'toTop', // fading element id
          containerHoverID: 'toTopHover', // fading element hover id
          scrollSpeed: 1200,
          easingType: 'linear'
        };
        $().UItoTop({
          easingType: 'easeOutQuart'
        });
      
      });
    </script>
    <!-- //here ends scrolling icon -->
      <!-- FlexSlider -->
    <script src="js/jquery.flexslider.js"></script>
    <script>
      $(function(){
        SyntaxHighlighter.all();
      });
      $(window).load(function(){
        $('.flexslider').flexslider({
          animation: "slide",
          controlsContainer: $(".custom-controls-container"),
          customDirectionNav: $(".custom-navigation a"),
          start: function(slider){
            $('body').removeClass('loading');
          }
        });
      });
    </script>
    <!--//FlexSlider -->
    <!--bootstrap working-->
    <script src="js/bootstrap.min.js"></script>
    <!-- //bootstrap working-->
  </body>
</html>
								
						
						
<!--//Slider-->
<!--//Slider-->

<!--//Sl

