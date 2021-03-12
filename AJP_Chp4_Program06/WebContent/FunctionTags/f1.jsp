<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<html>  
<head>  
<title>Using JSTL Functions</title>  
</head>  
<body>  
  
<c:set var="string" value="Welcome to JSTL"/>  

<c:if test="${fn:contains(string, 'jstl')}">  
   <p>Found jstl string<p>  
</c:if>  
  
<c:if test="${fn:containsIgnoreCase(string, 'jstl')}">  
   <p>Found jstl string with containsIgnoreCase<p>  
</c:if>  
  
<c:if test="${fn:contains(string, 'JSTL')}">  
   <p>Found JSTL string<p>  
</c:if>  
  
</body>  
</html>  