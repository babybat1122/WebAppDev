<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1250"/>
    <title>Bejelentkez&eacute;s ellenőrz&eacute;se</title>
    <style type="text/css">
        body {
            background-color: #ffffff;
        }
    </style>
</head>
<body bgcolor="#C0C0C0">
<h1 align=center> Üdvözlöm <i><%=session.getAttribute("validUser") %>
</i>!</h1>
<p align=center><font size=4 color="blue"> <b> Kellemes napot! </b> </font></p>
</body>
</html>