<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add 2 numbers</title>
</head>
<body>
<h1>Add 2 numbers</h1>

<%! 
	public int add(int a, int b)
	{
		return a+b;
	}
%>

<form action="">
		Number 1: <input type="text" name="no1"/>
		<br/>
		Number 2: <input type="text" name="no2"/>
		<br/>
		<input type="submit" value="Add"/>
</form>


<%
	String no1, no2;
	no1 = request.getParameter("no1");
	no2 = request.getParameter("no2");
	
	if ( no1 != ""   &&    no2 != "" )
	{	
		int a, b;
		a = Integer.parseInt(no1);
		b = Integer.parseInt(no2);
		out.println("Sum of two numbers: " + add(a,b) );
	}
%>

</body>
</html>