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
<h1>XML x:set tag example</h1>
<c:set var="products">
	<products>
			<product>
					<id>1</id>
					<name>Shampoo</name>
					<price>150</price>
					<netWeight>200</netWeight>
			</product>
			<product>
					<id>2</id>
					<name>Soap</name>
					<price>50</price>
					<netWeight>100</netWeight>
			</product>
			<product>
					<id>3</id>
					<name>Comb</name>
					<price>20</price>
					<netWeight>15</netWeight>
			</product>
			<product>
					<id>4</id>
					<name>Detergent</name>
					<price>250</price>
					<netWeight>500</netWeight>
			</product>
	</products>
</c:set>

<x:parse xml="${products}" var="output"/>
Product Name: <x:out select="$output/products/product[1]/name"/> <br/>
Product Price: <x:out select="$output/products/product[1]/price"/> <br/>

<x:set var="output2" select="$output/products/product[1]/price"/>
<x:out select="$output2"/>
</body>
</html>