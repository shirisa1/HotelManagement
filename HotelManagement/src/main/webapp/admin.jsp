<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Main</title>
<link rel="stylesheet" href="/HotelManagement/resources/css/admin.css">
</head>
<body>



	<div class="container" align="center">

		<form action="searchRoomsAdmin" method="post">
			<button class="button">Room</button>
		</form>
		<form action="login" method="post">
			<button class="button">Customer</button>
		</form>
		<form action="menufront" method="post">
			<button class="button">Menu</button>
		</form>
		<form action="SignOut">
			<button class="button">EXIT</button>
		</form>
	</div>



</body>
</html>