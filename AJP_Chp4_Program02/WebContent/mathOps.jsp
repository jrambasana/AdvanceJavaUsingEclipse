<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Arithmetic Operations Example using JSP</title>
</head>
<body>
<h1>Arithmetic Operations Example using JSP</h1>

<%
		int a = Integer.parseInt(request.getParameter("num1"));
		int b = Integer.parseInt(request.getParameter("num2"));
%>
<h3>Number 1:  <%= a %></h3>
<h3>Number 2:  <%= b %></h3>
<hr>
<h3>Addition of two numbers: <%= (a+b) %> </h3>
<h3>Subtraction of two numbers: <%= (a-b) %> </h3>
<h3>Multiplication of two numbers: <%= (a*b) %> </h3>
<h3>Division of two numbers: <%= ((float)a/b) %> </h3>
<hr>
</body>
</html>