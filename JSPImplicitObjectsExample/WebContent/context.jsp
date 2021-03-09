<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
    <h1>
        <%= "Message: " + application.getInitParameter("copyright") %>
    </h1>
    <jsp:include  page= "index.jsp"/>
</body>
</html>
