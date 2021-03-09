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
            String name = request.getParameter("name");
            String city = request.getParameter("city");
            
            Cookie nameCookie = new Cookie("name", name); 
            Cookie cityCookie = new Cookie("city", city);
            
            response.addCookie(nameCookie);
            response.addCookie(cityCookie);
            
            nameCookie.setMaxAge(60*60*24);
            cityCookie.setMaxAge(60*60*24);
        %>
        <a href="readCookie.jsp" >Click here</a> to read the cookies
    </body>


</html>