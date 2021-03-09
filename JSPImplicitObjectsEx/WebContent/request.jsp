<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Request Page</title>
</head>
<body>
    <form action="">
        Enter your name:<input name="name" type="text"/>
        <br/>
        <input type="submit" value="Go"/>
    </form>
    <h1>
    <%
        if(request.getParameter("name")!=null)
            out.println("Hello "+request.getParameter("name"));
    %>
    </h1>
    <br>
    <jsp:include  page= "index.jsp"/>
</body>
</html>
