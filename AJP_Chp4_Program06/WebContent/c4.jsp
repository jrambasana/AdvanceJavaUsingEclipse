<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<html>
<head>
<title>Tag Example</title>
</head>
<body>  
<c:set var="income" scope="session" value="${3000*4}"/>

<c:if test="${income > 10000 }">
		<p>Variable Value is: <c:out value="${income}"/></p>  
</c:if>
</body>
</html>  