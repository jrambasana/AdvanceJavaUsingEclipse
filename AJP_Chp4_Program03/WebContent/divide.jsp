<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="divError.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Division Example</title>
</head>
<body>
<%! 
	public int div(int a, int b)
	{
		return a/b;
	}
%>
<h1>Division Example</h1>
<%
	String no1, no2;
	no1 = request.getParameter("no1");
	no2 = request.getParameter("no2");
	
	if ( no1 != ""   &&    no2 != "" )
	{	
		int a, b;
		a = Integer.parseInt(no1);
		b = Integer.parseInt(no2);
		out.println("Division of two numbers: " + div(a,b) );
	}
%>
</body>
</html>