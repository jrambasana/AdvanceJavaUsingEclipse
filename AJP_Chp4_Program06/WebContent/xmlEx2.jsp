<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>XML Tags example</title>
</head>
<body>
<h1>XML x:parse tag example</h1>

<c:import var="products" url="products.xml"/>

<x:parse xml="${products}" var="output"/>
Product Name: <x:out select="$output/products/product[1]/name"/> <br/>
Product Price: <x:out select="$output/products/product[1]/price"/> <br/>

</body>
</html>