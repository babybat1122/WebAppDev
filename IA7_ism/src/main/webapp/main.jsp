<%--
  Created by IntelliJ IDEA.
  User: vicah
  Date: 2021. 10. 26.
  Time: 8:22
  To change this template use File | Settings | File Templates.
--%>
<%-- nagy ellenőrzés --%>
<%
    if (session.getAttribute("validuser") != null) {
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Főoldal</title>
</head>

<body>
<h1>Üdvözöljük <%= session.getAttribute("validuser") %>!</h1>
<form action="check.jsp" method="post">
    <input type="submit" name="logout" value="Kijelentkezés">
</form>
</body>
</html>
<% } else {
%>
<jsp:forward page="login.jsp">
    <jsp:param name="errorMSG" value="A program használatához be kell jelentkezni"/>
</jsp:forward>
<%
    }
%>