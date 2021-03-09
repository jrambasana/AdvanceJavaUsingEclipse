<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login Page</title>
    </head>
    <body>
        <c:out value="List of books"/><br>
        
        <c:set var="Site" scope="session" value="New Beginning"/> <br>
        <c:set var="author" scope="session" value="Chaitanya"/>
        <c:remove var="author"/>
        <c:import var="mydata" url="core2.jsp"/>
        <c:out value="${mydata}"/>
    </body>
</html>
