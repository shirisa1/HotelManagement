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



    <h2>Customer Manager</h2>
   
    <h3><a href="newMenuAdmin">New Menu</a></h3>
    <table border="1" >
        <tr>
            <th>Menu ID</th>
            <th>Menu Name</th>
            <th>Menu Details</th>
            <th>price</th>
            <th>Action</th>
        </tr>
        <c:forEach items="${listMenu}" var="mememu">
        <tr>
            <td>${mememu.menuID}</td>
            <td>${mememu.menuName}</td>
            <td>${mememu.menuDetails}</td>
            <td>${mememu.menuPrice}</td>
            <td>
                 <a href="editMenu?menuID=${mememu.menuID}">Edit</a>
                &nbsp;&nbsp;&nbsp;
              <a href="deleteMenu?menuID=${mememu.menuID}">Delete</a>
            </td>
        </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>