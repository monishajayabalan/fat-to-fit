<?php
session_start();
if(!isset($_SESSION['login_id']))
{
  header("location:login.php");  
}

$user= $_SESSION['username'];
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
                            <a class="nav-link" href="admin.html"></a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="index.html"></a>
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
	
		  	   	
                <h3 align="center"><font color="yellow"><b></b></font></h3>
                
                <br>
                <table align="center" bgcolor="black" border="2" style="width: 800px;">
                    <tr align="center">
                    	
                               <th><font color="#f8f8ff" size="5"> username</font></th>
                               <th><font color="#f8f8ff" size="5"> weight</font></th>
                               <th><font color="#f8f8ff" size="5">  bmi_index</font></th>
                               
                               <th><font color="#f8f8ff" size="5"> action</font></th>

                       
                       


                    </tr>
                    <?php
                    include "connect.php";
                    $result=mysqli_query($conn,"SELECT *  from `transform` where `username`='$user'");
                    if(mysqli_num_rows($result) >0)
                    {

                        while($row1=mysqli_fetch_array($result)){
                            ?>
                            <tr align="center">
                                <td><font color="yellow" size="5"><?php echo $row1[1];?></font></td>
                                <td><font color="yellow" size="5"><?php echo $row1[2];?></font></td>
                                <td><font color="yellow" size="5"><?php echo $row1[3];?></font></td>
                                
                                <td><font color="yellow" size="5"><a href="tmedit.php?v=<?php echo $row1['id']?>">edit</a></td></tr>

                                
                         



                            

                            <?php
                        }
                    }
                    ?>
                </table>
            
</div>
	</div>
					 
					
				</ul>
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
                                
                        
                        




