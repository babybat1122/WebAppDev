<%--
  Created by IntelliJ IDEA.
  User: vicah
  Date: 2021. 10. 26.
  Time: 8:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Bejelentkeztető űrlap</title>
</head>
<body>
    <h1>Kérjük jelentkezzen be!</h1>

    <form method="post", action="check.jsp">
        Felhasználónév: <input type="text" name="username"><br>
        Jelszó: <input type="text" name="password"><br>
        <input type="submit" value="Bejelentkezés">

    </form>
</body>
</html>
