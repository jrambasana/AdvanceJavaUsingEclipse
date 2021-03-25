<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<html>  
<head>  
<title>Using JSTL Functions</title>  
</head>  
<body>  
  
<c:set var="str1" value="It is String1."/>  
<c:set var="str2" value="It is <xyz>String2.</xyz>"/>  
 
 String 1: <c:out value="${str1}"/> 
<p>Index of word "String": ${fn:indexOf(str1, "String")}</p>  
 String 2: <c:out value="${str2}"/> 
<p>Index of word "String" : ${fn:indexOf(str2, "String")}</p>  
</body>  
</html>  