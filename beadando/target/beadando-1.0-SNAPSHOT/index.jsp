<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <title>JSP - Rendeles</title>
</head>
<body>
 Hello
 <%= 2+2 %>
    <%--<c:if test="${(empty param.kuldo) || (empty param.cimzett) || (empty param.cim)}">
        <h1>Kérem adja meg az összes adatot!</h1>
    </c:if>
    <%--<c:if test="${!(empty param.kuldo) ||!(empty param.cimzett) || !(empty param.cim)}">
        <%! int ar = 0; int liliomar = 0; int rozsaar = 0; int gerberaar = 0; %>
        <c:choose>
            <c:when test="${param.csomagolas eq \"normal\"}">
                <% ar += 100; %>
            </c:when>
            <c:when test="${param.csomagolas eq \"disz\"}">
                <% ar += 500; %>
            </c:when>
        </c:choose>
        <c:if test="${!(empty param.rozsadb)}">
            <% rozsaar += request.getParameter("rozsadb");
            <% ar += 200; %>
        </c:if>
        <c:if test="${!(empty param.gerbera)}">
            <% gerberaar = ${param.gerberadb} * 250; %>
        </c:if>
        <c:if test="${!(empty param.liliom)}">
            <% liliomar = ${param.liliomdb} * 200; %>
        </c:if>
        <% int ar = rozsadb + gerberadb + liliomdb + csomag; %>
        <% out.print("A rendelés összege: " + ar %>
    </c:if> --%>

</body>
</html>