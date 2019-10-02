<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div align ="center">
<h1>Hi! ${thought}</h1>

    <h2>Customer Manager</h2>
    <form method="get" action="search1">
        <input type="text" name="keyword1" /> &nbsp;
        <input type="submit" value="Search" />
    </form>
    <h3><a href="menuAdd">Add New Item to the Menu</a></h3>
    <table border="1" >
        <tr>
            <th>ID</th>
            <th>Class</th>
            <th>Status</th>
            <th>Price</th>
            <th>Features</th>
            <th>Actions</th>
        </tr>
        <c:forEach items="${roomresultadmin}" var="rooms">
        <tr>
            <td>${rooms.roomid}</td>
            <td>${rooms.roomclass}</td>
            <td>${rooms.roomstatus}</td>
            <td>${rooms.price}</td>
            <td>${rooms.roomfeatures}</td>
            <td>
               <a href="editRoom?roomid=${rooms.roomid}">Edit</a>
                &nbsp;&nbsp;&nbsp;
                <a href="deleteRoomAdmin?roomid=${rooms.roomid}">Delete</a> 
            </td>
        </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>