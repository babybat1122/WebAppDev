<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1250"/>
    <title>Bejelentkezés ellenőrzése</title>
    <style type="text/css">
        body {
            background-color: #ffffff;
        }
    </style>
</head>
<body>
<% session.removeAttribute("validUser"); %>

<c:choose>
    <c:when test="${(empty param.userName) || (empty param.password)}">
        <jsp:forward page="login.jsp">
            <jsp:param name="errorMsg" value="Valós felhasznalói név és jelszó megadása kötelező."/>
        </jsp:forward>
    </c:when>
    <c:otherwise>
        <c:choose>
            <c:when test="${param.password eq \"jsp\"}">
                <% session.setAttribute("validUser", request.getParameter("userName"));%>
                <jsp:forward page="main.jsp"/>
            </c:when>
            <c:otherwise>
                <jsp:forward page="login.jsp">
                    <jsp:param name="errorMsg" value="A megadott jelszó helytelen. Probálja meg a 'jsp' jelszóval."/>
                </jsp:forward>
            </c:otherwise>
        </c:choose>
    </c:otherwise>
</c:choose>

</body>
</html>