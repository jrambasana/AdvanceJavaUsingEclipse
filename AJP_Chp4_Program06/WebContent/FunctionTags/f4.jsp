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

<c:set var="str1" value="        Welcome to JSTL        programming           "/>  
<p>String-1 Length is : ${fn:length(str1)}</p>  

 <p>String before trimming is : <pre>*${str1}*</pre></p>  

<c:set var="str2" value="${fn:trim(str1)}" />  
<p>String 2 Length is : ${fn:length(str2)}</p>  
<p>Final string after trimming is : <pre>*${str2}*</pre></p>  

</body>
</html>