<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Schedule</title>
</head>
<body>

<form method="post" action="Schedule">
<p>&nbsp;</p>

<tr>
<td>Price</td>
<td><input type="text" name=busprice></td>
</tr>

<tr>
<td>cityfrom</td>
<td><input type="text" name=cityfrom></td>
</tr>

<tr>
<td>cityto</td>
<td><input type="text" name=cityto></td>
</tr>

<tr>
<td>start_at</td>
<td><input type="text" name=start_at></td>
</tr>

<tr>
<td>end_at</td>
<td><input type="text" name=end_at></td>
</tr>
</form>


<%@ page import="java.util.*;"%>
<%
	HashMap<String, String> userDetails = (HashMap) session.getAttribute("user");
	String busprice = "";
	String cityfrom = "";
	String cityto = "";
	String start_at = "";
	String end_at = "";
	
	if(userDetails != null) {
		busprice = userDetails.get("busprice");
		cityfrom = userDetails.get("cityfrom");
		cityto = userDetails.get("cityto");
		start_at = userDetails.get("start_at");
		end_at = userDetails.get("end_at");
	} else {
		busprice = null;
		cityfrom = null;
		cityto = null;
		start_at = null;
		end_at = null;
	}
%>

<%-- <p>&nbsp;</p>
 <p align="center" class="black">The information entered by you is
  as follows :</p>

 <table align="center" bgcolor="#728DCF">
  <tr>
   <td>Bus Price :</td>
   <td><%=busprice%></td>
  </tr>

  <tr>
   <td>City From :</td>
   <td><%=cityfrom%></td>
  </tr>

  <tr>
   <td>City To</td>
   <td><%=cityto%></td>
  </tr>
  
    <tr>
   <td>Start At</td>
   <td><%=start_at%></td>
  </tr>
  
    <tr>
   <td>End At</td>
   <td><%=end_at%></td>
  </tr>
 </table> --%>
</body>
</html>