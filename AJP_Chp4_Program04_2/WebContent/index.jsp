<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <title>JSP Page</title>
    </head>
    <body>
        <h2>This page contains included pages using include action tag</h2>
        
        <jsp:include page="simple.jsp"/>
        <jsp:include page="showTime.jsp"/>
        
    </body>
</html>
