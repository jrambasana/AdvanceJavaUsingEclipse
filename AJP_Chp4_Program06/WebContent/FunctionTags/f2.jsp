<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<html>  
<head>  
<title>Using JSTL Functions</title>  
</head>  
<body>  
  
<c:set var="string1" value="It is String1."/>  
<c:set var="string2" value="It is <xyz>String2.</xyz>"/>  
 
 <c:out value="${string1}"/> 
<p>Index-1 : ${fn:indexOf(string1, "String")}</p>  
 <c:out value="${string2}"/> 
<p>Index-2 : ${fn:indexOf(string2, "String")}</p>  
</body>  
</html>  