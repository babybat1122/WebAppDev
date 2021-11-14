<%--
  Created by IntelliJ IDEA.
  User: vicah
  Date: 14/11/2021
  Time: 18:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Filmajánló</title>
</head>
<body>
<form action="check.jsp" method="post">
    <h1>Filmajánló a hétre</h1>
    <h2>Milyen filmeket szeret?</h2>
    <table>
        <tr>
            <td>Film típusok:</td>
            <td>
                <input type="checkbox" value="akcio" id="akcio" name="types"> akció-thriller <br>
                <input type="checkbox" value="scifi" id="scifi" name="types"> sci-fi <br>
                <input type="checkbox" value="csalad" id="csalad" name="types"> családi
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <input type="submit" value="Elküld" id="submit">
            </td>
        </tr>
    </table>
</form>
<% if (request.getParameter("errorMSG") != null) { %>
${param.errorMSG} <br>
<%= request.getParameter("errorMSG")%>
<% } %>
</body>
</html>
