<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reserve Room</title>
</head>
<body>
    
      
    <div align="center">
        <h2>Reserve your room</h2>
        
        <form:form  method="post" modelAttribute="roomdata">
            <table border="0" cellpadding="5">
            	<tr>
                    <td>Room Number: </td>
                    <td>${roomdata.roomid}<form:hidden path ="roomid"/></td>
                    
                </tr>
                <tr>
                    <td>Category: </td>
                    <td>${roomdata.roomclass}<form:hidden path ="roomclass"/></td>
                </tr>
                <tr>
                    <td>Features: </td>
                    <td>${roomdata.roomfeatures}<form:hidden path ="roomfeatures"/></td>
                </tr>
                <tr>
                    <td>price: </td>
                    <td>$${roomdata.price}<form:hidden path ="roomclass"/></td>
                </tr>
                
                                    
            </table>
        </form:form>
    </div>

    
</body>
</html> 