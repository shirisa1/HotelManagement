<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Result</title>
</head>
<body>

<div align ="center">

    <h2>Customer Manager,${thought}</h2>
    <form method="get" action="search1">
        <input type="text" name="keyword1" /> &nbsp;
        <input type="submit" value="Search" />
    </form>
  
    <table border="1" >
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>E-mail</th>
            <th>Address</th>
            
        </tr>
        <c:forEach items="${result}" var="customer">
        <tr>
            <td>${customer.id}</td>
            <td>${customer.name}</td>
            <td>${customer.email}</td>
            <td>${customer.address}</td>
            
        </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>