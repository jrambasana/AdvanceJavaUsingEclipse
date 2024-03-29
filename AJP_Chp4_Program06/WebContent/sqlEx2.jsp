<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>      
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SQL Tags examples</title>
</head>
<body>
<h1>SQL Tag Example 2</h1>
<sql:setDataSource var="con" driver="com.mysql.jdbc.Driver"  
     url="jdbc:mysql://localhost:3306/test1"  
     user="root"  password=""/>  

<sql:update dataSource="${con}" var="count">  
INSERT INTO Students VALUES (6,'Amod', 22, 'Baroda');  
</sql:update>  

<sql:query dataSource="${con}" var="rs">  
Select * from students;  
</sql:query>  
   
<table border="2" width="60%" align="center">  
<tr>  
<th>Student ID</th>  
<th>Student Name</th>  
<th>Age</th>  
<th>City </th>  
</tr>  
<c:forEach var="row" items="${rs.rows}">  
<tr align="center">  
<td ><c:out value="${row.id}"/></td>  
<td><c:out value="${row.student_name}"/></td>  
<td><c:out value="${row.age}"/></td>  
<td><c:out value="${row.city}"/></td>  
</tr>  
</c:forEach>  
</table>  

</body>
</html>