<%@ page import="java.lang.reflect.Array" %>
<%@ page import="java.util.Arrays" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String[] types = request.getParameterValues("types");
    if (Arrays.asList(types).isEmpty()) {
        %>
            <jsp:forward page="choose.jsp">
                <jsp:param name="errorMSG" value="Felhasználónév és jelszó kötelező"/>
            </jsp:forward>
        <%
        } else {
            if (Arrays.asList(types).contains("scifi")) {
                Cookie sccookie = new Cookie("pref1", "scifi");
                sccookie.setMaxAge(60 * 60 * 24 * 7);
                response.addCookie(sccookie);
            }
            if (Arrays.asList(types).contains("akcio")) {
                Cookie akcookie = new Cookie("pref2", "akcio");
                akcookie.setMaxAge(60 * 60 * 24 * 7);
                response.addCookie(akcookie);
            }
            if (Arrays.asList(types).contains("csalad")) {
                Cookie cscookie = new Cookie("pref3", "csalad");
                cscookie.setMaxAge(60 * 60 * 24 * 7);
                response.addCookie(cscookie);
            }
        %>
            <jsp:forward page="ajanlo.jsp"/>
        <%
        }
%>