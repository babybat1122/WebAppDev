<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=windows-1250" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1250"/>
    <title>Szin-Teszt 2 (JSP 2.0)</title>
</head>
<body bgcolor=${param.bgColor}>
<c:choose>
    <c:when test="${!empty param.bgColor}">  
        Az egyéni háttérszin=${param.bgColor}
    </c:when>
    <c:otherwise>     
        Az alapértelmezett WHITE háttérszínt használjuk.  
          </c:otherwise>
</c:choose>
</body>
</html>