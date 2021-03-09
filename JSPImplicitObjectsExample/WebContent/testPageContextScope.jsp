<%-- 
    Document   : testPageContextScope
    Created on : 30-Sep-2020, 12:53:39
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
<h1>
<%
Object obj = pageContext.getAttribute("user", PageContext.SESSION_SCOPE);
if(obj!=null)
{    
    String name = (String)obj;
    out.println("Hello " + name );
    out.println(" Welcome to page 2");
}
else
    out.println("Attribute not set!!!");
%>
</h1>
</body>
</html>
