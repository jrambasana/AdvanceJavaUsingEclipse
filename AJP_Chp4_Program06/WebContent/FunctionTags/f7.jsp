<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Using JSTL Functions</title>  
</head>
<body>

<c:set var="string" value="This is the first string."/>  
${fn:substring(string, 5, 17)}  
<br/>

<c:set var="string" value="6 EC1 Class"/>  
${fn:substringAfter(string, "6")}  
<br/>

<c:set var="string" value="Hi, This is 6EC1 Class."/>  
${fn:substringBefore(string, "Class")} 
<br/>

<c:set var="author" value="Akshay Kumar"/>  
<c:set var="string" value="abc pqr xyz abc"/>  
${fn:replace(author, "Akshay", "Pankaj")}  
${fn:replace(string, "abc", "hello")}  

</body>
</html>