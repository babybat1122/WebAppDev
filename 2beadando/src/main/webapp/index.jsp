<%@ page import="java.lang.reflect.Array" %>
<%@ page import="java.util.Arrays" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%!
    public String ajanlo(HttpServletRequest request) {
        String[] types = request.getParameterValues("types");

        if (Arrays.asList(types).isEmpty()) {
            return "Kérem válasszon!";

        } else {

        }
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>JSP - filmajanlo</title>
</head>
<body>
    <a href="hello-servlet">Hello Servlet</a>
    <%=
    ajanlo(request)
    %>
</body>
</html>