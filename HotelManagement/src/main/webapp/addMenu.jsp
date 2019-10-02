<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Menu Item Add</title>
</head>
<body>
    <div align="center">
        <h2>New Item</h2>
        
         <form:form action="saveMenu" method="post" modelAttribute="newItem">
            <table border="0" cellpadding="5">
            	
            	<tr>
                    <td>MenuType: </td>
                    <td><form:input path="menuType" /></td>
                </tr>
                <tr>
                    <td>MenuName: </td>
                    <td><form:input path="menuName" /></td>
                </tr>
                <tr>
                    <td>Menu Details: </td>
                    <td><form:input path="menuDetails" /></td>
                </tr>
                <tr>
                    <td>Price: </td>
                    <td><form:input path="price" /></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="Save"></td>
                </tr>                    
            </table>
        </form:form>
    </div>
</body>
</html>