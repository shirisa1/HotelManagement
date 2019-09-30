<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Search Rooms</title>
    <meta charset="utf-8">
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
	      <a class="navbar-brand" href="index.jsp">Grand Budapest</a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item"><a href="index.html" class="nav-link">Home</a></li>
	          <li class="nav-item active"><a href="rooms.html" class="nav-link">Rooms</a></li>
	          <li class="nav-item"><a href="restaurant.html" class="nav-link">Restaurant</a></li>
	          <li class="nav-item"><a href="about.html" class="nav-link">About</a></li>
	          <li class="nav-item"><a href="blog.html" class="nav-link">Blog</a></li>
	          <li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li>
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
	            <p class="breadcrumbs mb-2"><span class="mr-2"><a href="index.jsp">Home</a></span> <span>About</span></p>
	            <h1 class="mb-4 bread">Rooms</h1>
            </div>
          </div>
        </div>
      </div>
    </div>


    <section class="ftco-section bg-light">
    	<div class="container">
    		<div class="row">
	        <div class="col-lg-9">
		    		<div class="row">
							<c:forEach items="${roomresult}" var="room">
		    			<div class="col-sm col-md-6 col-lg-4 ftco-animate">
		    				<div class="room">
		    					<a href="viewRoom?roomid=${room.roomid}" class="img d-flex justify-content-center align-items-center" style="background-image: url(/HotelManagement/resources/images/${room.roomimages});">
		    						<div class="icon d-flex justify-content-center align-items-center">
		    							<span class="icon-search2"></span>
		    						</div>
		    					</a>
		    					<div class="text p-3 text-center">
									
		    						<h3 class="mb-3"><a href="viewRoom?roomid=${room.roomid}">${room.roomclass}</a></h3>
		    						<p><span class="price mr-2">$${room.price}</span> <span class="per">/ night</span></p>
		    						<ul class="list">
		    							<li><span>Features </span><br>${room.roomfeatures}</li>
		    							
		    						</ul>
		    						<hr>
		    						<p class="pt-1"><a href="viewRoom?roomid=${room.roomid}" class="btn-custom">View Room <span class="icon-long-arrow-right"></span></a></p>
		    						
		    					</div>
		    				</div>
						</div>
						</c:forEach>
		    		</div>
		    	</div>
		    	<div class="col-lg-3 sidebar">
	      		<div class="sidebar-wrap bg-light ftco-animate">
	      			<h3 class="heading mb-4">Advanced Search</h3>
	      			
	      			<form action="searchRooms" method="get" >
	      				<div class="fields">
		              <div class="form-group">
		                <input type="text" id="checkin_date" class="form-control checkin_date" placeholder="Check In Date">
		              </div>
		              <div class="form-group">
		                <input type="text" id="checkin_date" class="form-control checkout_date" placeholder="Check Out Date">
		              </div>
		              <div class="form-group">
		                <div class="select-wrap one-third">
	                    <div class="icon"><span class="ion-ios-arrow-down"></span></div>
	                    <select name="keyword" id="" class="form-control">
			                    	<option value="">All</option>
			                      <option value="luxury">Luxury</option>
			                      <option value="executive">Executive</option>
			                      <option value="economy">Economy</option>
			                    </select>
	                  </div>
		              </div>
		              <div class="form-group">
		                <div class="select-wrap one-third">
	                    <div class="icon"><span class="ion-ios-arrow-down"></span></div>
	                    <select name="" id="" class="form-control">
	                    	<option value="">0 Adult</option>
	                    	<option value="">1 Adult</option>
	                      <option value="">2 Adult</option>
	                      <option value="">3 Adult</option>
	                      <option value="">4 Adult</option>
	                      <option value="">5 Adult</option>
	                      <option value="">6 Adult</option>
	                    </select>
	                  </div>
		              </div>
		    
		              <div class="form-group">
		                <input type="submit" value="Search" class="btn btn-primary py-3 px-5">
		              </div>
		            </div>
	            </form>
	      		</div>
	
	        </div>
		    </div>
    	</div>
    </section>


    <section class="instagram pt-5">
      <div class="container-fluid">
        <div class="row no-gutters justify-content-center pb-5">
          <div class="col-md-7 text-center heading-section ftco-animate">
            <h2><span>Instagram</span></h2>
          </div>
        </div>
        <div class="row no-gutters">
          <div class="col-sm-12 col-md ftco-animate">
            <a href="/HotelManagement/resources/images/insta-1.jpg" class="insta-img image-popup" style="background-image: url(/HotelManagement/resources/images/insta-1.jpg);">
              <div class="icon d-flex justify-content-center">
                <span class="icon-instagram align-self-center"></span>
              </div>
            </a>
          </div>
          <div class="col-sm-12 col-md ftco-animate">
            <a href="/HotelManagement/resources/ages/insta-2.jpg" class="insta-img image-popup" style="background-image: url(/HotelManagement/resources/images/insta-2.jpg);">
              <div class="icon d-flex justify-content-center">
                <span class="icon-instagram align-self-center"></span>
              </div>
            </a>
          </div>
          <div class="col-sm-12 col-md ftco-animate">
            <a href="/HotelManagement/resources/images/insta-3.jpg" class="insta-img image-popup" style="background-image: url(/HotelManagement/resources/images/insta-3.jpg);">
              <div class="icon d-flex justify-content-center">
                <span class="icon-instagram align-self-center"></span>
              </div>
            </a>
          </div>
          <div class="col-sm-12 col-md ftco-animate">
            <a href="/HotelManagement/resources/images/insta-4.jpg" class="insta-img image-popup" style="background-image: url(/HotelManagement/resources/images/insta-4.jpg);">
              <div class="icon d-flex justify-content-center">
                <span class="icon-instagram align-self-center"></span>
              </div>
            </a>
          </div>
          <div class="col-sm-12 col-md ftco-animate">
            <a href="/HotelManagement/resources/images/insta-5.jpg" class="insta-img image-popup" style="background-image: url(/HotelManagement/resources/images/insta-5.jpg);">
              <div class="icon d-flex justify-content-center">
                <span class="icon-instagram align-self-center"></span>
              </div>
            </a>
          </div>
        </div>
      </div>
    </section>

    <footer class="ftco-footer ftco-bg-dark ftco-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Deluxe Hotel</h2>
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
  <script src="/HotelManagement/resources/js/main.js"></script>
    
  </body>
</html>