<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png"
	href="/HotelManagement/resources/images/tableicons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/HotelManagement/resources/vendor/tablebootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/HotelManagement/resources/fonts/font-awesome-4.7.1/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/HotelManagement/resources/vendor/tableanimate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/HotelManagement/resources/vendor/tableselect2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/HotelManagement/resources/vendor/tableperfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/HotelManagement/resources/css/tableutil.css">
<link rel="stylesheet" type="text/css"
	href="/HotelManagement/resources/css/tablemain.css">
<!--===============================================================================================-->
</head>
<body>
	<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
				<div class="table100">
					<div align="center">
						<h1>Hi! ${thought}</h1>
						<h2>Your password is ${password}</h2>


						<h2>Customer Manager</h2>
						<form method="get" action="search1">
							<input type="text" name="keyword1" /> &nbsp; <input
								type="submit" value="Search" />
						</form>
						<h3>
							<a href="newCustomer">New Customer</a>
						</h3>
<%-- 						<table border="1">
							<tr>
								<th>ID</th>
								<th>Name</th>
								<th>E-mail</th>
								<th>Address</th>
								<th>Action</th>
							</tr>
							<c:forEach items="${listCustomers}" var="customer">
								<tr>
									<td>${customer.id}</td>
									<td>${customer.name}</td>
									<td>${customer.email}</td>
									<td>${customer.address}</td>
									<td><a href="edit?id=${customer.id}">Edit</a>
										&nbsp;&nbsp;&nbsp; <a href="delete?id=${customer.id}">Delete</a>
									</td>
								</tr>
							</c:forEach>
						</table> --%>
						
						<table>
						<thead>
							<tr class="table100-head">
								<th class="column1">ID</th>
								<th class="column2">Name</th>
								<th class="column3">E-Mail</th>
								<th class="column4">Address</th>
								<th class="column6">ACTIONS</th>
							</tr>
						</thead>
						<c:forEach items="${listCustomers}" var="customer">
						<tbody>
								<tr>
									<td class="column1">${customer.id}</td>
									<td class="column2">${customer.name}</td>
									<td class="column3">${customer.email}</td>
									<td class="column4">${customer.address}</td>
									<td class="column6">
										<a href="edit?id=${customer.id}">Edit</a>
										&nbsp;&nbsp;&nbsp; <a href="delete?id=${customer.id}">Delete</a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!--===============================================================================================-->
	<script
		src="/HotelManagement/resources/vendor/tablejquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script
		src="/HotelManagement/resources/vendor/tablebootstrap/js/popper.js"></script>
	<script
		src="/HotelManagement/resources/vendor/tablebootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script
		src="/HotelManagement/resources/vendor/tableselect2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script src="/HotelManagement/resources/js/tablemain.js"></script>
</body>
</html>