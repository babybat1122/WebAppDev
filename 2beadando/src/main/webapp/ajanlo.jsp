<%@ page import="java.lang.reflect.Array" %>
<%@ page import="java.util.Arrays" %><%--
  Created by IntelliJ IDEA.
  User: vicah
  Date: 14/11/2021
  Time: 17:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ajanlo</title>
</head>
<body>
    <h1>Heti filmajánló</h1>
    <% Cookie[] cookies = request.getCookies();
        String[] values = new String[3];
        for (int i = 0; i < cookies.length; i++) {;
        Arrays.asList(values).add(cookies[i].getValue());
        }
        if (Arrays.asList(values).contains("scifi")) { %>
        <img src="scifi.jpg"><%}%>
        <% if (Arrays.asList(values).contains("csalad")) { %>
        <img src="csaladi.jpg"><%}%>
        <% if (Arrays.asList(values).contains("akcio")) { %>
        <img src="akcio.jpg"><%}%>
</body>
</html>