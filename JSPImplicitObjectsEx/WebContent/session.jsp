<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Session Example</title>
</head>
<body>
<h1>Session Example Page 1</h1>

 <form action="">
        Enter your name:<input name="name" type="text"/>
        <br/>
        <input type="submit" value="Go"/>
  </form>
    
    <%
    	String name= request.getParameter("name");
        if( name != null )
        {
        	session.setAttribute("name",  name);
    %>
    <br/>
    <a href="session2.jsp">Session page 2</a>
    <%
        }
    %>
    

</body>
</html>