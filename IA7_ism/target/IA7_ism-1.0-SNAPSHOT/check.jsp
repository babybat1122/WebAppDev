<%-- < %@page import="edu.corvinus.ia7_ism.validator"% > --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%-- -> nem tökéletes, nem mindig oldja meg a bajt --%>
<% request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8"); %>
<%-- -> ez biztos mindent megold --%>
<%
    if (request.getParameter("login") != null) {
        //validator v = new validator();
        //v.validate();
        if (request.getParameter("username") == null || request.getParameter("username").equals("") ||
                request.getParameter("password") == null || request.getParameter("password").equals("")) {
%>
<jsp:forward page="login.jsp">
    <jsp:param name="errorMSG" value="Felhasználónév és jelszó kötelező"/>
</jsp:forward>
<%
} else {
    //itt kellene ellenőrizni a jelszó-username párost -> most beégetünk egy ellenőrzést
    if (request.getParameter("password").equals("intalk")) {
        session.setAttribute("validuser", request.getParameter("username"));
%>
<jsp:forward page="main.jsp"/>
<%
} else {
%>
<jsp:forward page="login.jsp">
    <jsp:param name="errorMSG" value="Helytelen jelszó"/>
</jsp:forward>
<% }
}
} else if (request.getParameter("logout") != null) {
    session.invalidate(); //minden a memoban tárolt dolgot elveszít
%>
<jsp:forward page="login.jsp"/>
<%
} else {
%>
<jsp:forward page="login.jsp">
    <jsp:param name="errorMSG" value="A program használatához be kell jelentkezni"/>
</jsp:forward>
<% }
%>
