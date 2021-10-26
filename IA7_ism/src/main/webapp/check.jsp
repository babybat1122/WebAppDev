<%@page import="edu.corvinus.ia7_ism.validator" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    if (request.getParameter("login") != null) {
        //validator v = new validator();
        //v.validate();

    }
    else {
%>
        <jsp:forward page="login.jsp">
            <jsp:param name="errorMSG" value="A program használatához be kell jelentkezni"/>
        </jsp:forward>
<%      }


%>
