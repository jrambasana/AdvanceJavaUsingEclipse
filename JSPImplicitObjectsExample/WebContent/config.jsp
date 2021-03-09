<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
    <h3>
        <%= "Welcome " + config.getInitParameter("username") %>
    </h3>
    <a href=index.jsp">Index page</a>
</body>
</html>
