<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Hello World</title>
</head>
<body>
<h1>
			<%  out.println("Hello World"); %> 
</h1>
<h1>
			<%= "Hello World" %> 
</h1>
			<%!  int i=10; %> 
<h1>
			<%=++i %> 
</h1>
</body>
</html>