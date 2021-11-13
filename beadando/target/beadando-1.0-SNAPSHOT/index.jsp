<%@ page import="java.lang.reflect.Array" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.time.DayOfWeek" %>
<%@ page import="java.util.Calendar" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%!
    public String szamolcsokor(HttpServletRequest request) {
        int ar = 0;

        if (request.getParameter("kuldo").isEmpty() || request.getParameter("kuldo").isEmpty() ||
                request.getParameter("kuldo").isEmpty()) {
            return "Kérem adja meg az összes adatot!";
        } else {
            String[] viragok = request.getParameterValues("virag");

            if (Arrays.asList(viragok).contains("rozsa")) {
                if (request.getParameter("rozsadb") == "1") {
                    ar += 200;
                    System.out.print("Rózsa: 1 szál");
                }
                if (request.getParameter("rozsadb") == "2") {
                    ar += 400;
                    System.out.print("Rózsa: 2 szál");
                } else {
                    ar += 600;
                    System.out.print("Rózsa: 3 szál");
                }
            }
            if (Arrays.asList(viragok).contains("gerbera")) {
                if (request.getParameter("gerberadb") == "1") {
                    ar += 250;
                    System.out.print("Gerbera: 1 szál");
                }
                if (request.getParameter("gerberadb") == "2") {
                    ar += 500;
                    System.out.print("Gerbera: 2 szál");
                } else {
                    ar += 750;
                    System.out.print("Gerbera: 3 szál");
                }
            }
            if (Arrays.asList(viragok).contains("liliom")) {
                if (request.getParameter("liliomdb") == "1") {
                    ar += 200;
                    System.out.print("Liliom: 1 szál");
                }
                if (request.getParameter("liliomdb") == "2") {
                    ar += 400;
                    System.out.print("Liliom: 2 szál");
                } else {
                    ar += 600;
                    System.out.print("Liliom: 3 szál");
                }
            }

            if (Arrays.asList(request.getParameterValues("csomagolas")).contains("normal")) {
                ar += 100;
                System.out.print("+ sima csomagolás 100 Ft");
            } else {
                ar += 500;
                System.out.print("+ díszcsomagolás 500 Ft");
            }
            if (Calendar.DAY_OF_WEEK == 1 || Calendar.DAY_OF_WEEK == 7) {
                ar += 750;
                System.out.print("+ kiszállítás 500 Ft");
            } else {
                ar += 500;
                System.out.print("+ kiszállítás 750 Ft");
            }
        }
        return "A fizetendő összeg: " + ar;
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>JSP - Rendeles</title>
</head>
<body>
<%=
szamolcsokor(request)
%>
</body>
</html>