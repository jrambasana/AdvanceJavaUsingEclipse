<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<html>
<head>
<title>Tag Example</title>
</head>
<body>  
<c:forEach var="i" begin="1" end="10" >
		<c:if test="${(i%2)==0}">
				<br/>
				<c:out value="${i}"/>
		</c:if>
</c:forEach>
</body>
</html>  