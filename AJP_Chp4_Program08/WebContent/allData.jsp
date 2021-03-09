<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <title>MEFGI Result</title>
    </head>
    <body>
        <%@page import="java.sql.*" %>
        <h1>MEFGI RESULT</h1>
        <%
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mefgi","root","");
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("select * from students");
                out.println("<table border=\"1\"><tr><td>Enrollment no.</td><td>Name</td><td>Physics</td><td>Chemistry</td><td>Mathematics</td><td>Overall</td></tr><br>");
                while(rs.next())
                {
                    out.println("<tr>");
                    out.println("<td> "+rs.getInt(1)+" </td>");
                    out.println("<td> "+rs.getString(2)+" </td>");
                    out.println("<td> "+rs.getInt(3)+" </td>");
                    out.println("<td> "+rs.getInt(4)+" </td>");
                    out.println("<td> "+rs.getInt(5)+" </td>");
                    out.println("<td> "+rs.getString(6)+" </td>");
                    out.println("<tr>");
                }
        %>
    </table>
    </body>
</html>
