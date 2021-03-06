<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reserve Room</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i" rel="stylesheet">

    <link rel="stylesheet" href="/HotelManagement/resources/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="/HotelManagement/resources/css/animate.css">
    
    <link rel="stylesheet" href="/HotelManagement/resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/HotelManagement/resources/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="/HotelManagement/resources/css/magnific-popup.css">

    <link rel="stylesheet" href="/HotelManagement/resources/css/aos.css">

    <link rel="stylesheet" href="/HotelManagement/resources/css/ionicons.min.css">

    <link rel="stylesheet" href="/HotelManagement/resources/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="/HotelManagement/resources/css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="/HotelManagement/resources/css/flaticon.css">
    <link rel="stylesheet" href="/HotelManagement/resources/css/icomoon.css">
    <link rel="stylesheet" href="/HotelManagement/resources/css/style.css">
</head>
<body>
    
      
    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="index.html">Grand Budapest</a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item"><a href="index.html" class="nav-link">Home</a></li>
	          <li class="nav-item"><a href="rooms.html" class="nav-link">Rooms</a></li>
	          <li class="nav-item"><a href="restaurant.html" class="nav-link">Restaurant</a></li>
	          <li class="nav-item"><a href="about.html" class="nav-link">About</a></li>
	          <li class="nav-item"><a href="blog.html" class="nav-link">Blog</a></li>
	          <li class="nav-item active"><a href="contact.html" class="nav-link">Contact</a></li>
	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->

    <div class="hero-wrap" style="background-image: url('/HotelManagement/resources/images/bg_1.jpg');">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text d-flex align-itemd-end justify-content-center">
          <div class="col-md-9 ftco-animate text-center d-flex align-items-end justify-content-center">
          	<div class="text">
	            <p class="breadcrumbs mb-2"><span class="mr-2"><a href="index.html">Home</a></span> <span>Contact</span></p>
	            <h1 class="mb-4 bread">Complete Reservation</h1>
            </div>
          </div>
        </div>
      </div>
    </div>


    <section class="ftco-section contact-section bg-light">
	<div class="container">

		<div class="row block-9">
		
			<div class="col-md-6 order-md-last d-flex">
			
				<form:form action="saveNewWhilePaying" method="post" modelAttribute="customer">
					<h3>step 1: contact info</h3>
					<div class="form-group">
						<form:input path="name" class="form-control" placeholder="your name"/>
					</div>
					<div class="form-group">
						<form:input path="email" class="form-control" placeholder="your email"/>
					</div>
					
					<div class="form-group">
						<form:input path="address" class="form-control" placeholder="your billing address" />
					</div>
					<h3>step 2: payment info</h3>
					<div class="form-group">
						<input class="radio" type="radio" name="cash" value="cash"/><span>&nbsp;&nbsp;&nbsp;Cash</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input class="radio" type="radio" name="ppal"value="ppal" /> <span>&nbsp;&nbsp;&nbsp;Paypal</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input class="radio" type="radio" name="ppal"value="ppal" /> <span>&nbsp;&nbsp;&nbsp;Credit/Debit</span>
					</div>
					<!-- <div class="form-group">
						<textarea name="" id="" cols="30" rows="7" class="form-control"
							placeholder="Message"></textarea>
					</div> -->
					<div class="form-group">
						<input type="submit" value="Finish Booking"
							class="btn btn-primary py-3 px-5">
					</div>
				</form:form> 
		
            
                    
           

			</div>

			<div class="col-md-6 d-flex">
				<div align="center">
					

					<form:form method="post" modelAttribute="roomdata">
						<table border="0" cellpadding="5">
							<h2>Reserve This Room</h2>
							<tr>
								<div class="item">
									<div class="room-img"
										style="background-image: url(/HotelManagement/resources/images/${roomdata.roomimages};"></div>
								</div>

							</tr>
							<tr>
								<td>Room Number:</td>
								<td>${roomdata.roomid}</td>

							</tr>
							<tr>
								<td>Category:</td>
								<td>${roomdata.roomclass}</td>
							</tr>
							<tr>
								<td>Features:</td>
								<td>${roomdata.roomfeatures}</td>
							</tr>
							<tr>
								<td>price:</td>
								<td>$${roomdata.price}</td>
							</tr>
<h1></h1>

						</table>
					</form:form>
				</div>
			</div>
			
			
		</div>
				<div class="row d-flex mb-5 contact-info">
			<div class="col-md-12 mb-4">
				<h2 class="h3">Contact Information</h2>
			</div>
			<div class="w-100"></div>
			<div class="col-md-3 d-flex">
				<div class="info bg-white p-4">
					
				</div>
			</div>
			<div class="col-md-3 d-flex">
				<div class="info bg-white p-4">
					<p>
						<span>Phone:</span> <a href="tel://1234567920">+ 1235 2355 98</a>
					</p>
				</div>
			</div>
			<div class="col-md-3 d-flex">
				<div class="info bg-white p-4">
					<p>
						<span>Email:</span> <a href="mailto:info@yoursite.com">info@yoursite.com</a>
					</p>
				</div>
			</div>
			<div class="col-md-3 d-flex">
				<div class="info bg-white p-4">
					<p>
						<span>Website</span> <a href="#">yoursite.com</a>
					</p>
				</div>
			</div>
		</div>
	</div>
	</section>



    <footer class="ftco-footer ftco-bg-dark ftco-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Grand Budapest Hotel</h2>
              <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
              <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4 ml-md-5">
              <h2 class="ftco-heading-2">Useful Links</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="py-2 d-block">Blog</a></li>
                <li><a href="#" class="py-2 d-block">Rooms</a></li>
                <li><a href="#" class="py-2 d-block">Amenities</a></li>
                <li><a href="#" class="py-2 d-block">Gift Card</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Privacy</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="py-2 d-block">Career</a></li>
                <li><a href="#" class="py-2 d-block">About Us</a></li>
                <li><a href="#" class="py-2 d-block">Contact Us</a></li>
                <li><a href="#" class="py-2 d-block">Services</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
            	<h2 class="ftco-heading-2">Have a Questions?</h2>
            	<div class="block-23 mb-3">
	              <ul>
	                <li><span class="icon icon-map-marker"></span><span class="text">203 Fake St. Mountain View, San Francisco, California, USA</span></li>
	                <li><a href="#"><span class="icon icon-phone"></span><span class="text">+2 392 3929 210</span></a></li>
	                <li><a href="#"><span class="icon icon-envelope"></span><span class="text">info@yourdomain.com</span></a></li>
	              </ul>
	            </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">

            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart color-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
          </div>
        </div>
      </div>
    </footer>
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="/HotelManagement/resources/js/jquery.min.js"></script>
  <script src="/HotelManagement/resources/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="/HotelManagement/resources/js/popper.min.js"></script>
  <script src="/HotelManagement/resources/js/bootstrap.min.js"></script>
  <script src="/HotelManagement/resources/js/jquery.easing.1.3.js"></script>
  <script src="/HotelManagement/resources/js/jquery.waypoints.min.js"></script>
  <script src="/HotelManagement/resources/js/jquery.stellar.min.js"></script>
  <script src="/HotelManagement/resources/js/owl.carousel.min.js"></script>
  <script src="/HotelManagement/resources/js/jquery.magnific-popup.min.js"></script>
  <script src="/HotelManagement/resources/js/aos.js"></script>
  <script src="/HotelManagement/resources/js/jquery.animateNumber.min.js"></script>
  <script src="/HotelManagement/resources/js/bootstrap-datepicker.js"></script>
  <script src="/HotelManagement/resources/js/jquery.timepicker.min.js"></script>
  <script src="/HotelManagement/resources/js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="/HotelManagement/resources/js/google-map.js"></script>
  <script src="/HotelManagement/resources/js/main.js"></script>
    
  
</body>
</html> 