<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Online_Book_Store.About" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    	<title>About - Real Estate Management System</title>
	<meta charset="UTF-8"/>				
	<link href="https://fonts.googleapis.com/css?family=Lato:400,400i,700,700i,900%7cRoboto:400,400i,500,500i,700,700i&display=swap" rel="stylesheet"/>	
	<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>	
	<link rel="stylesheet" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" href="css/font-awesome.min.css"/>
	<link rel="stylesheet" href="css/slicknav.min.css"/>
	<link rel="stylesheet" href="css/style.css"/>
</head>
<body>
    <form id="form1" runat="server">
     	<header class="header-section">
		<a href="index.aspx" class="site-logo" style="text-decoration: none;">            
            <h2 style="color: coral;text-decoration: none;">Online <span style="color: cornsilk;">Book </span>Store</h2>
		</a>
		<nav class="header-nav">
			<ul class="main-menu">
				<li><a href="index.aspx" class="active">Home</a></li>
				<li><a href="About.aspx">About</a></li>
				<li><a href="Contact.aspx">Contact</a></li>
				<li><a href="Sell.aspx">Sell</a></li>											
				<li><a href="buy.aspx">Buy</a></li>		
			</ul>
			<div class="header-right">
				<div class="user-panel">					
                    <a href="Login.aspx" class="register">Sign in</a>
                    <a href="#" class="btn btn-warning" style="background-color: coral;">
                        <span class="glyphicon glyphicon-shopping-cart"></span>  MyCart
                      </a>
				</div>
			</div>
		</nav>
    </header>    
	<a href="#" class="upbtn"><i class="fas fa-arrow-up"></i></a>
	
	<section class="page-top-section set-bg" data-setbg="img/4.jpg">		
	</section>
	<br />
	<section class="sell-section ">
		<div class="section-title">
			<h2 style="color: coral;">Our <span style="color:darksalmon;">Location </span></h1>				
		</div>
	<div class="embed-responsive embed-responsive-21by9">		
		<iframe class="embed-responsive-item" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3310.5436826994287!2d151.07458401521174!3d-33.92714208064008!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b12bbdb530799db%3A0x74814c25cea0beac!2s117%20Sproule%20St%2C%20Lakemba%20NSW%202195%2C%20Australia!5e0!3m2!1sen!2s!4v1600631626482!5m2!1sen!2s" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
	  </div>
	</section>
	

	
	<section class="about-section spad">
		<div class="container">
			<div class="section-title">
                <h2 style="color: coral;">Meet Our <span style="color:darksalmon; ">Team </span></h1>				
			</div>
			<div class="row">
				<div class="col-lg-6 order-lg-2">
					<img src="img/About.jpg" alt="">
				</div>
				<div class="col-lg-6 order-lg-1">
					
					<div class="about-text">						
						<p style="font-weight:bold;margin-bottom:0;">The Team Lead and Resource Manager</p>
						<p>Mr Nazeemullah Khan</p>

						<p style="font-weight:bold;margin-bottom:0;">Website Designer and Tester</p>
						<p>Mr Abbas Ali</p>

						<p style="font-weight:bold;margin-bottom:0;">Machine Learning Model Designer and Developer</p>
						<p> Mr Mohammad Furqan jaffer </p>

						<p style="font-weight:bold;margin-bottom:0;">The Backend Developer</p>
						<p>Mr Mohammad Atif Fazal</p>

						<p style="font-weight:bold;margin-bottom:0;">The Frontend Designer</p>
						<p> Ashoke Thapa</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	
<br />
<br />

	
<footer class="page-footer font-small" style="background-color: black; opacity: 0.9;">	
	<div class="footer-copyright text-center py-3" style="color: coral;">© 2020 Copyright:
	  <a href="https://OnlineBookStore.com/"> OnlineBookStore.com</a>
	</div>	
  </footer>
	
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.slicknav.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js" integrity="sha384-LtrjvnR4Twt/qOuYxE721u19sVFLVSA4hf/rRt6PrZTmiPltdZcI7q7PXQBYTKyf" crossorigin="anonymous"></script>

    </form>
</body>
</html>
