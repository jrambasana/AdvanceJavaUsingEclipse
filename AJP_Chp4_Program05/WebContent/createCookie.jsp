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
            String fname = request.getParameter("fname");
            String lname = request.getParameter("lname");
            
            Cookie fnameCookie = new Cookie("fname", fname); 
            Cookie lnameCookie = new Cookie("lname", lname);
            
            response.addCookie(fnameCookie);
            response.addCookie(lnameCookie);
            
            fnameCookie.setMaxAge(60*60*24);
            lnameCookie.setMaxAge(60*60*24);
        %>
        <a href="readCookie.jsp" >Click here</a> to read the cookies
    </body>


</html>