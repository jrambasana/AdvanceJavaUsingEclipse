<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Session example</title>
</head>
<body>
<h1>Session Example Page 2</h1>
Welcome <%= session.getAttribute("name") %>

</body>
</html>