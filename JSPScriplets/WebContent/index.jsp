<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Scriplets Example</title>
</head>
<body>
<h1>Scriplets Example</h1>

<%! 
	static int count=0;  
	public int add(int a, int b)
	{
		return a+b;
	}
%>

<h3> Total no of people visited: <%= ++count	%> </h3>

<%
		int a, b;
		a = 5;;
		b = 10;
		out.println("Sum of two numbers: " + add(a,b) );
%>

</body>
</html>