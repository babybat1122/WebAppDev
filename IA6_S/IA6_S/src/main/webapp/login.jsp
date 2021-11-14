<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1250"/>
    <title>Bejelentkezés</title>
    <style type="text/css">
        body {
            background-color: #ffffff;
        }
    </style>
</head>
<body>
<h1 align=center>Üdvözöljük az oldalunkon</h1>
<c:if test="${! empty param.errorMsg}">
    <font color="red"> <b> ${param.errorMsg} </b></font>
</c:if>
<br> <br>
<h4> Kérjuk adja meg a felhasználói nevét és jelszavát. </h4>
<form action="check.jsp" method="post">
    <table>
        <tr>
            <td>Név:</td>
            <td><input name="userName" value="" size="20"></td>
        </tr>
        <tr>
            <td> Jelszó:</td>
            <td><input type="password" name="password" value="" size="20"></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Elküld"></td>
        </tr>
    </table>
</form>


</body>
</html>