<%@ page import="java.lang.reflect.Array" %>
<%@ page import="java.util.Arrays" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%!
    public String ajanlo(HttpServletRequest request) {
        String kategoria = "";

        if (Arrays.asList(request.getParameterValues("types")).isEmpty() ||
                Arrays.asList(request.getParameterValues("types")).equals("")) {
            return "Kérem válasszon!";

        } else {
            String[] types = request.getParameterValues("types");
        }
        return kategoria;
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