<%-- 
    Document   : Hiragana
    Created on : 04.02.2026, 15:30:20
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.Random" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Learn Hiragana</title>
        <link rel="stylesheet" href="styles.css">
    </head>
    <body>

        <%
            Random rand = new Random();
            int zahl = rand.nextInt(45);
            String[] Hiragana = {
                "あ", "い", "う", "え", "お",
                "か", "き", "く", "け", "こ",
                "さ", "し", "す", "せ", "そ",
                "た", "ち", "つ", "て", "と",
                "な", "に", "ぬ", "ね", "の",
                "は", "ひ", "ふ", "へ", "ほ",
                "ま", "み", "む", "め", "も",
                "や", "ゆ", "よ",
                "ら", "り", "る", "れ", "ろ",
                "わ", "を",
                "ん"
            };
            String[] HiraganaRomaji = {
                "a", "i", "u", "e", "o",
                "ka", "ki", "ku", "ke", "ko",
                "sa", "shi", "su", "se", "so",
                "ta", "chi", "tsu", "te", "to",
                "na", "ni", "nu", "ne", "no",
                "ha", "hi", "fu", "he", "ho",
                "ma", "mi", "mu", "me", "mo",
                "ya", "yu", "yo",
                "ra", "ri", "ru", "re", "ro",
                "wa", "wo",
                "n"
            };

            session.setAttribute("Hiragana", Hiragana);
            session.setAttribute("HiraganaRomaji", HiraganaRomaji);
            session.setAttribute("zahl", zahl);

        %>
        <h1>Hello World!</h1>
        <section>

            <h1><%= Hiragana[zahl]%></h1>
            <form action="HiraganaResults.jsp" method="get">
                <input type="text" name="HiraganaRomaji" autocomplete="off" required >
                <input type="submit" value="submit">
            </form>
            <br>

            <a href="index.html"><button id="idk">back</button></a>
            <br>
            <br>
            <br>

            
        </section>
    </body>
</html>
