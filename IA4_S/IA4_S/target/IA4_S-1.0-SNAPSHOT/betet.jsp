<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- 
    Document   : betet
    Created on : 2016.09.29., 10:36:01
    Author     : fszabina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Betet</title>
</head>
<body>
<h1>Betét számoló</h1>

<form action="betet.jsp" method="post">
    <table>
        <tr>
            <td>Érték:</td>
            <td><input type="text" name="pv"/></td>
        </tr>
        <tr>
            <td>Éves kamat:</td>
            <td><input type="text" name="rate"/></td>
        </tr>
        <tr>
            <td>Idő (évben):</td>
            <td><input type="text" name="n"/></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="Elküld"></td>
    </table>
</form>

<c:if test="${pageContext.request.method eq \"POST\"}">
    <c:choose>
        <c:when test="${(empty param.pv) ||
                            (empty param.rate) ||
                            (empty param.n)}">
            <h3>Kérjük írja be az adatokat</h3>
        </c:when>
        <c:otherwise>
            <%
                double pv = Double.parseDouble(request.getParameter("pv"));
                double rate = Double.parseDouble(request.getParameter("rate"));
                double n = Double.parseDouble(request.getParameter("n"));

                double fv = pv * Math.pow((1 + rate), n);
            %>
            <h3> A futamidő lejárta után <%= fv %> kap készhez </h3>
        </c:otherwise>
    </c:choose>
</c:if>
</body>
</html>
