<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>JSP Page</title>
    </head>
    <body>
        <pre>
        ENROLLMENT: <%= request.getParameter("enrollment") %><br>
        FIRSTNAME:  <%= request.getParameter("fname") %><br>
        LASTNAME:  <%= request.getParameter("lname") %><br>
        PHONE:  <%= request.getParameter("phone") %><br>
        CITY:  <%= request.getParameter("city") %><br>
        STATE:  <%= request.getParameter("state") %><br>
        </pre>
    </body>
</html>
