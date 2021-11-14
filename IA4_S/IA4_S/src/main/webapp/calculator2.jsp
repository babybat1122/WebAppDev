<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- 
    Document   : calculator
    Created on : 2016.10.01., 15:02:44
    Author     : Szabi
--%>
<%!
    String getValasz(String osszead, String kivon, String szoroz, String oszt, String hatvany, String gyok, String x, String y) {
        String valasz = "?";
        try {
            double a = Double.parseDouble(x);
            double b = Double.parseDouble(y);
            if (osszead != null) {
                a = a + b;
                valasz = "" + a;
            } else if (kivon != null) {
                valasz = "" + (a - b);
            } else if (szoroz != null) {
                valasz = "" + (a * b);
            } else if (oszt != null) {
                if (b != 0) {
                    valasz = "" + (a / b);
                } else {
                    valasz = "n/a";
                }
            } else if (hatvany != null) {
                valasz = "" + Math.pow(a, b);
            } else if (gyok != null) {
                valasz = "" + Math.sqrt(a);
            }
        } catch (Exception e) {
            ;
        }
        return valasz;
    }
%>

<%!
    String getErtek(String a) {
        String valasz = "";
        if (a != null) {
            valasz = a;
        }
        return valasz;
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Szamológép</title>
</head>
<body>
<h1>Számológép</h1>
<form action="calculator2.jsp" method="get">
    <table border="0">
        <thead>
        <tr>
            <th><input type="text" name="x" value="<%= getErtek(request.getParameter("x")) %>"/></th>
            <th><input type="text" name="y" value="<%= getErtek(request.getParameter("y")) %>"/></th>
        </tr>
        </thead>
        <tbody>
        <c:choose>
            <c:when test="${empty param.type ||
                                param.type eq 'n'}">
                <tr>
                    <td><input type="radio" value="n" name="type" checked="checked" onChange="this.form.submit()"/>Normál
                    </td>
                    <td><input type="radio" value="t" name="type" onChange="this.form.submit()"/>Tudományos</td>
                </tr>
            </c:when>
            <c:otherwise>
                <tr>
                    <td><input type="radio" value="n" name="type" onChange="this.form.submit()"/>Normál</td>
                    <td><input type="radio" value="t" name="type" onChange="this.form.submit()" checked="checked"/>Tudományos
                    </td>
                </tr>
            </c:otherwise>
        </c:choose>
        <tr>
            <td align="center"><input type="submit" value="+" name="osszead"/></td>
            <td align="center"><input type="submit" value="-" name="kivon"/></td>
        </tr>
        <tr>
            <td align="center"><input type="submit" value="*" name="szoroz"/></td>
            <td align="center"><input type="submit" value="/" name="oszt"/></td>
        </tr>

        <c:if test="${!empty param.type &&
                                param.type eq 't'}">

            <tr>
                <td align="center"><input type="submit" value="gyök" name="gyok"/></td>
                <td align="center"><input type="submit" value="^" name="hatvany"/></td>
            </tr>

        </c:if>
        <tr>
            <td colspan="2" align="center"><input type="text" name="eredmeny"
                                                  value="<%= getValasz(request.getParameter("osszead"), request.getParameter("kivon"), request.getParameter("szoroz"), request.getParameter("oszt"),request.getParameter("hatvany"), request.getParameter("gyok"), request.getParameter("x"), request.getParameter("y"))%>"
                                                  readonly="readonly"/></td>
        </tr>
        <tr>
            <td colspan="2" align="center"><input type="submit" value="Törlés" name="torles"/></td>
            <td></td>
        </tr>
        </tbody>
    </table>
</form>
</body>
</html>
