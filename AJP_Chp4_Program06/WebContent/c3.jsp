<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<html>
<head>
<title>Tag Example</title>
</head>
<body>  
<c:set var="income" scope="session" value="${4000*4}"/>

<p>Before Removing the variable the Value is: <c:out value="${income}"/></p>  

<c:remove var="income"/>	
<p>After Removing the variable the Value is: <c:out value="${income}"/></p>
</body>
</html>  