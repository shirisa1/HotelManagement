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

    <h2>Admin Menu Panel</h2>


    <h3><a href="menuAdd">Add New Item to the Menu</a></h3>
    <table border="1" >
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Type</th>
            <th>Details</th>
            <th>Price</th>
        </tr>
        <c:forEach items="${menuresult}" var="menu">
        <tr>
            <td>${menu.menuID}</td>
            <td>${menu.menuName}</td>
            <td>${menu.menuType}</td>
            <td>${menu.menuDetails}</td>
            <td>${menu.menuPrice}</td>
            <td>
               <a href="editMenu?menuID=${menu.menuID}">Edit</a>
                <a href="deleteMenu?menuID=${menu.menuID}">Delete</a> 
            </td>
        </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>