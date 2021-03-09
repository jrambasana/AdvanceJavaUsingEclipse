<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>JSP Page</title>
    </head>
    <body>
    
    <jsp:useBean id="u1" class="MyClasses.User"></jsp:useBean>
    
    <jsp:setProperty property="*" name="u1"/>
    
    Enrollment: <jsp:getProperty property="enrollment" name="u1"/> <br/>
    First Name: <jsp:getProperty property="fname" name="u1"/> <br/>
    Last Name: <jsp:getProperty property="lname" name="u1"/> <br/>
    Phone: <jsp:getProperty property="phone" name="u1"/> <br/>
    City: <jsp:getProperty property="city" name="u1"/> <br/>
    State: <jsp:getProperty property="state" name="u1"/> <br/>

    </body>
</html>
