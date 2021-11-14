<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- 
    Document   : calculator
    Created on : 2016.10.01., 15:02:44
    Author     : Szabi
--%>
<%!
    String getValasz(String osszead, String kivon, String szoroz, String oszt, String x, String y) {
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
<form action="calculator.jsp" method="get">
    <table border="0">
        <thead>
        <tr>
            <th><input type="text" name="x" value="<%= getErtek(request.getParameter("x")) %>"/></th>
            <th><input type="text" name="y" value="<%= getErtek(request.getParameter("y")) %>"/></th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td align="center"><input type="submit" value="+" name="osszead"/></td>
            <td align="center"><input type="submit" value="-" name="kivon"/></td>
        </tr>
        <tr>
            <td align="center"><input type="submit" value="*" name="szoroz"/></td>
            <td align="center"><input type="submit" value="/" name="oszt"/></td>
        </tr>
        <tr>
            <td colspan="2" align="center"><input type="text" name="eredmeny"
                                                  value="<%= getValasz(request.getParameter("osszead"), request.getParameter("kivon"), request.getParameter("szoroz"), request.getParameter("oszt"),request.getParameter("x"), request.getParameter("y"))%>"
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
