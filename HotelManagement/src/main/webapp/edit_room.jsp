<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Customer</title>
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
</body>
</html> 