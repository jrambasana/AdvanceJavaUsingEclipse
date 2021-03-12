<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:set var="income" scope="session" value="${2000*4}"/>
<c:choose>
			<c:when test="${income<=10000}">
					Income is not good.
			</c:when>
			<c:when test="${income>10000}">
					Income is very good.
			</c:when>
			<c:otherwise>
					Income is undetermined.
			</c:otherwise>
</c:choose>  
</body>
</html>