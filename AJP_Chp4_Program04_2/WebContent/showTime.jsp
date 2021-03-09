<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
	    <title>JSP Page</title>
    </head>
    <body>
		<% java.util.Date d = new  java.util.Date( ); %>
        <%--returns hour--%>
        <br> Time is <%= d.getHours() %>
        
        <%--returns min--%>
        : <%= d.getMinutes()%>
        
        <%--returns sec--%>
        : <%= d.getSeconds()%>

    </body> 
</html>
