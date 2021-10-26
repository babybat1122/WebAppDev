<%@page import="edu.corvinus.ia7_ism.validator" %>
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
