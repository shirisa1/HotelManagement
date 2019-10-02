<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Customer</title>
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
    <div align="center">
        <h2>New Customer</h2>
        
        <form:form action="saveEditedRoom" method="post" modelAttribute="roomtoedit">
            <table border="0" cellpadding="5">
            	<tr>
                    <td>ID: </td>
                    <td>${roomtoedit.roomid}<form:hidden path ="roomid"/>
                    </td>
                </tr>
            <tr>
                    <td>RoomClass: </td>
                    <td><form:input path="roomclass" /></td>
                </tr>
                <tr>
                    <td>Room Status: </td>
                    <td><form:input path="roomstatus" /></td>
                </tr>
                <tr>
                    <td>Room Price: </td>
                    <td><form:input path="price" /></td>
                </tr>
                <tr>
                    <td>Room Features: </td>
                    <td><form:input path="roomfeatures" /></td>
                </tr>
                <tr>
                    <td>Room Images: </td>
                    <td><form:input path="roomimages" /></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="Save"></td>
                </tr>                    
            </table>
        </form:form>
    </div>
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
  <script src="/HotelManagement/resources/js/scrollax.min.js"></script>
  <script src="/HotelManagement/resources/js/main.js"></script>
</body>
</html> 