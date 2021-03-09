<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP Implicit Objects</title>
</head>
<body>
<h1>JSP Implicit Objects</h1>
<%!
	static int count = 0;
%>
Welcome user,
<br/> You are the user number <% out.println(++count); %> to visit this page.

<br/>Request Example: Click <a href="request.jsp">here</a>
<br/>Response Example: Click <a href="response.jsp">here</a>
<br/>ServletConfig Example: Click <a href="config.jsp">here</a>
<br/>ServletContext Example: Click <a href="application.jsp">here</a>
<br/>Session Example: Click <a href="session.jsp">here</a>
<br/>Exception Example: Click <a href="exceptionDemo.jsp">here</a>
<br/>Page Example: Click <a href="page.jsp">here</a>
<br/>Page Context Example: Click <a href="pageContextExample.jsp">here</a>


</body>
</html>