<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
        Cookie nameCookie = new Cookie("name", "");
        nameCookie.setMaxAge(0);
        nameCookie.setValue("");
        response.addCookie(nameCookie);
      
        Cookie cityCookie = new Cookie("city", "");
        cityCookie.setMaxAge(0);
        cityCookie.setValue("");
        response.addCookie(cityCookie);
        %>

        <a href="readCookie.jsp">Click here</a> to check the deletion..!!


</body>
</html>