<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Page Implicit Object</title>
    </head>
    <body>
    <h1>Page Implicit Object Example</h1>

    Object page = this;

    <% this.log("Hello world message");%>

    <% ((HttpServlet)page).log("Hello world message from page Object"); %>
           
    </body>
</html>
