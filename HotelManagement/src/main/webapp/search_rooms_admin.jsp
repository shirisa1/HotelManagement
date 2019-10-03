<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Table V01</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="/HotelManagement/resources/images/tableicons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/HotelManagement/resources/vendor/tablebootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/HotelManagement/resources/fonts/font-awesome-4.7.1/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/HotelManagement/resources/vendor/tableanimate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/HotelManagement/resources/vendor/tableselect2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/HotelManagement/resources/vendor/tableperfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/HotelManagement/resources/css/tableutil.css">
	<link rel="stylesheet" type="text/css" href="/HotelManagement/resources/css/tablemain.css">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
				<div class="table100">
						<div align ="center">
								<h1>Hi! ${thought}</h1>
								
									<h2>Customer Manager</h2>
									<form method="get" action="search1">
										<input type="text" name="keyword1" /> &nbsp;
										<input type="submit" value="Search" />
									</form>
									<h3><a href="newRoomAdmin">Add New Room</a></h3>
					<table>
						<thead>
							<tr class="table100-head">
								<th class="column1">ID</th>
								<th class="column2">CLASS</th>
								<th class="column3">STATUS</th>
								<th class="column4">PRICE</th>
								<th class="column5">FEATURE</th>
								<th class="column6">ACTIONS</th>
							</tr>
						</thead>
						<c:forEach items="${roomresultadmin}" var="rooms">
						<tbody>
								<tr>
									<td class="column1">${rooms.roomid}</td>
									<td class="column2">${rooms.roomclass}</td>
									<td class="column3">${rooms.roomstatus}</td>
									<td class="column4">${rooms.price}</td>
									<td class="column5">${rooms.roomfeatures}</td>
									<td class="column6">
										<a href="editRoom?roomid=${rooms.roomid}">Edit</a>
										&nbsp;&nbsp;&nbsp;
										<a href="deleteRoomAdmin?roomid=${rooms.roomid}">Delete</a> 
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>


	

<!--===============================================================================================-->	
	<script src="/HotelManagement/resources/vendor/tablejquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="/HotelManagement/resources/vendor/tablebootstrap/js/popper.js"></script>
	<script src="/HotelManagement/resources/vendor/tablebootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="/HotelManagement/resources/vendor/tableselect2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="/HotelManagement/resources/js/tablemain.js"></script>

</body>
</html>