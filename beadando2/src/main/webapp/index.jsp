<%@ page import="java.lang.reflect.Array" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.awt.*" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%!
    public String[] ajanlo(HttpServletRequest request) {
        String[] types = request.getParameterValues("types");

        return types;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - filmajanlo</title>
</head>
<body>
    <h1>Heti filmajánló</h1>
    <%=
        ajanlo(request)
    %>
</body>
</html>