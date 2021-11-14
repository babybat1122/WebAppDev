<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=windows-1250" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1250"/>
    <title>Internet pizza rendel&eacute;s</title>
    <style type="text/css">
        body {
            background-color: #ffffff;
        }
    </style>
</head>
<body>
<c:choose>
    <c:when test="${pageContext.request.method eq \"GET\"}"> <!-- get k�r�s j�tt -->
        <form action="pizza.jsp" method="post">
            <b>N�v:</b> <input type="text" name="name" size="30"><br>
            <b>C�m:</b> <input type="text" name="address" size="70"><br><br>
            <input type="radio" name="purchaseType" value="kiszallitas">
            <b>Kisz�ll�t�s</b> <br>
            <input type="radio" name="purchaseType" value="elvitel"> <b>Elvitel</b> <br><br>
            <b>Milyen pizzat akarasz?</b> <br>
            <input type="checkbox" name="margherita" value="yes"> <b>Margherita</b><br>
            <input type="checkbox" name="hawaiian" value="yes"> <b>Hawaii</b><br>
            <input type="checkbox" name="pepperoni" value="yes"> <b>Pepperoni</b><br><br>

            <b>Pizza m�rete:</b>
            <select name="size">
                <option value=kicsi>Kicsi</option>
                <option value=kozepes selected>K�zepes</option>
                <option value=nagy>Nagy</option>
            </select><br><br>
            <input type="submit" value="Rendel�s">
        </form>
    </c:when>
    <c:otherwise> <!-- post k�r�s, itt j�n a feldolgoz�s-->
        <c:choose>
            <c:when test="${(empty param.name) || (empty param.address)}">
                <h1>A n�v �s a c�m elenghetetlen a kisz�ll�t�shoz!</h1>
            </c:when>
            <c:otherwise>
                <h1> Tisztelt ${param.name}! </h1> <br>
                A k�vetkez� rendel�s �rkezett el hozz�nk: <br>
                <%
                    double ar = 0.0;
                    double szorzo = 1.0;
                %>
                <c:choose>
                    <c:when test="${param.size eq \"nagy\"}">
                        <%szorzo = 1.5; %>
                    </c:when>
                    <c:when test="${param.size eq \"kozepes\"}">
                        <%szorzo = 1.2; %>
                    </c:when>
                </c:choose>
                <c:if test="${! empty param.margherita}">
                    1 db ${param.size} margherita - <%=600 * szorzo%> Ft<br>
                    <% ar += 600 * szorzo; %>
                </c:if>
                <c:if test="${! empty param.hawaiian}">
                    1 db ${param.size} hawaiian - <%=750 * szorzo%> Ft<br>
                    <% ar += 750 * szorzo; %>
                </c:if>
                <c:if test="${! empty param.pepperoni}">
                    1 db ${param.size} pepperoni - <%=500 * szorzo%> Ft<br>
                    <% ar += 500 * szorzo; %>
                </c:if>
                <br> azaz fut�runknak <i><%= ar%>
            </i> Ft-ot sz�veskedjen kifizetni.
                <b> K�sz�nj�k a rendel�s�t! </b>
            </c:otherwise>
        </c:choose>
    </c:otherwise>
</c:choose>
</body>
</html>