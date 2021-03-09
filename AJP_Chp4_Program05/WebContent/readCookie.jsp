<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reading the cookie</title>
</head>

<body>
        <h3>Reading the cookie</h3>
        <% 
        Cookie [] cookies = request.getCookies();
        for(int i =0;i<cookies.length;i++){
            out.println("Cookie_name: "+cookies[i].getName()+"<br>");
            out.println("Cookie_value: "+cookies[i].getValue()+"<br>");
        }
            %>
            <a href="deletecookies.jsp">Click here</a>To delete the cookie..!!
    </body>


</html>