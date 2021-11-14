<%-- 
    Document   : index
    Created on : 2010.11.23., 16:24:36
    Author     : Szabina
--%>
<%@page import="java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<%
    Calendar c = Calendar.getInstance();
    String[] honapNev = {"Január", "Február",
            "Március", "Április", "Május", "Június", "Július", "Augusztus",
            "Szeptember", "Október", "November", "December"};
    int honap = c.get(Calendar.MONTH);
%>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title><%=honapNev[honap]%>
    </title>
</head>
<body>
<h1>Üdvözöljük!</h1>
<p align="right"><%=c.get(Calendar.YEAR)%>.<%=honapNev[honap]%>
</p>
<p align="center"><img src="images/naptar/<%=(honap+1)%>.jpg"></p>
</body>
</html>
