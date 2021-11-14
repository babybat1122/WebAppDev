<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- 
    Document   : index
    Created on : 2013.10.07., 11:04:35
    Author     : Szabi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Celsius/Farenheit konverter</title>
</head>
<body>
<h1>Celsius/Farenheit konverter</h1>
<c:choose>
    <c:when test="${pageContext.request.getMethod()=='GET'}">
        <form method="post" action="celsius2farenheit.jsp">
            Érték: <input type="text" name="fok"/> &nbsp;
            <select name="tipus">
                <option name="C">C</option>
                <option name="F">F</option>
            </select><br/>
            <input type="submit" value="Elküld"/>
        </form>
    </c:when>
    <c:otherwise>
        A ${param.fok} ${param.tipus} =
        <% String valasz = "";%>
        <c:choose>
            <c:when test="${param.tipus=='C'}">
                <%
                    valasz = "" + (32 + 9 * (Double.parseDouble(request.getParameter("fok"))) / 5) + " F";
                %>

            </c:when>
            <c:otherwise>
                <%
                    valasz = "" + (5 * (Double.parseDouble(request.getParameter("fok")) - 32) / 9) + " C";
                %>
            </c:otherwise>
        </c:choose>
        <%= valasz%>
    </c:otherwise>
</c:choose>


</body>
</html>
