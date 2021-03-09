<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Request Page</title>
</head>
<body>
    <form action="">
        Your name:<input name="name" type="text"/>
        <br/>
        <input type="submit" value="Go"/>
    </form>
    <h1>
    <%
        String name = request.getParameter("name");
        if(name!=null && name!="")
        {
        	out.println("Welcome " + name);
        	pageContext.setAttribute("user", name, PageContext.SESSION_SCOPE);

    %>
    </h1>
    <a href="testPageContextScope.jsp">Test Page Context object</a>
    <%
        }
    %>
    <br>
    <jsp:include  page= "index.jsp"/>
</body>
</html>
