<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>      
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Formatting Tag Example 1</title>
</head>
<body>
<h1> Formatting Tag Example 1</h1>

<c:set var='rupees' value="11345.5574517"/>

Parse Number Example:
<br>
<fmt:parseNumber var="i" type="number" value="${rupees}"/>
<p>Rupees value: <c:out value="${i}"/> </p>
<fmt:parseNumber var="j" type="number" integerOnly="true" value="${rupees}"/>
<p>Rupees value: <c:out value="${j}"/> </p>

Format Number Example:
<br/>
<fmt:formatNumber value="${rupees}" type="currency"/>
<br/>
<fmt:formatNumber value="${rupees}" maxIntegerDigits="3"  maxFractionDigits="3" type="currency"/>
<br/>
</body>
</html>