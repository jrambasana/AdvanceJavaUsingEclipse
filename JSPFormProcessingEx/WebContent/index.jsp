<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Insert Values in a JSP!</h1>
        <pre>
        <form action= "formProcessor.jsp" method="GET">
        Enrollment No: <input type="text" name="enrollment"/> <br/>
        First Name: <input type="text" name="fname"/> <br/>
        Last Name:  <input type="text" name="lname"/> <br/>
        Phone:  <input type="text" name="phone"/> <br/>
        City:  <input type="text" name="city"/> <br/>
        State:  <input type="text" name="state"/> <br/>      
            <input type="submit" value="submit">
        </form>
        </pre>
    </body>
</html>
