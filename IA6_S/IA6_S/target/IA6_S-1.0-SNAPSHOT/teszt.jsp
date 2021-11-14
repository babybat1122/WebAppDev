<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Teszt oldal</title>
</head>
<%
    String nev = "Ismeretlen";
    String email = "Ismeretlen";
    Cookie[] ck = request.getCookies();

    if (ck != null) {
        for (int i = 0; i < ck.length; i++) {
            if (ck[i].getName().equals("nev")) {
                nev = ck[i].getValue();
            } else if (ck[i].getName().equals("email")) {
                email = ck[i].getValue();
            }
        }
    }
%>
<body>
<h1>Tesztoldal</h1>
<h3>Név:  <%= nev %>
</h3>
<h3>Email:  <%= email %>
</h3>
</body>
</html>
