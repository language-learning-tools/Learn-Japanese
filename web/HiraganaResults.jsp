<%-- 
    Document   : HiraganaResults
    Created on : 04.02.2026, 15:41:53
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Learn Hiragana</title>
        <link rel="stylesheet" href="styles.css">
    </head>
    <body>
        <%
            String[] Hiragana = (String[]) session.getAttribute("Hiragana");
            String[] HiraganaRomaji = (String[]) session.getAttribute("HiraganaRomaji");
            int zahl = (int) session.getAttribute("zahl");

            String HiraganaInput = request.getParameter("HiraganaRomaji");
            String test = HiraganaRomaji[zahl];
            String Ergebnis = "";
            if (HiraganaInput.equals(test)) {
                Ergebnis = "True";
            } else {
                Ergebnis = "False";
            }
        %>
        <section>

            <h1><span style="color: #8A244B;"><%= HiraganaInput%></span> is <%= Ergebnis%></h1>
            <br>
            <h2> It was <span style="color: #8A244B;"><%= test%></span></h2>
            <a href="Hiragana.jsp"><button id="idk" >back</button></a>
        </section>
    </body>
</html>
