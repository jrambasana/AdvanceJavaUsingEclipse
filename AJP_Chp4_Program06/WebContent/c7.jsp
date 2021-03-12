<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<html>
<head>
<title>Tag Example</title>
</head>
<body>  
<c:catch var="catchtheException">
			<% int x = 2/0; %>
</c:catch>
<c:if test = "${catchtheException!=null}">
		<p>The type of exception is : ${catchtheException} </p>
</c:if>  
	
</body>
</html>  