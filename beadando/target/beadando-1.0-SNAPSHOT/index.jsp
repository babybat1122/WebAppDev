<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Rendeles</title>
</head>
<body>
    <c:choose>
        <c:when test="${(empty param.kuldo) || (empty param.cimzett) || (empty param.cim)}">
            <h1>Kérem adja meg az összes adatot!</h1>
        </c:when>
        <c:when test=""></c:when>
    </c:choose>
<h1><%= "Hello World!" %>
</h1>
<br/>
<a href="hello-servlet">Hello Servlet</a>
</body>
</html>