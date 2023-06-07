<%-- 
    Document   : doTestView
    Created on : May 31, 2023, 11:37:54 AM
    Author     : quoct
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            h3{
                display: inline-block;
            }
        </style>

    </head>
    <body>
        <form action="checkanswer">
            <c:forEach var="i" items="${requestScope.list}">            
                <div style="border: 1px solid black; width: 50%; margin: 0 auto 10px auto; display: flex">
                    <div style="width: 70%">
                        <h1> ${i.detail}</h1>

                        <input name="${i.id}" value="A" id="${i.answerA}" type="radio">
                        <h3><label for="${i.answerA}">${i.answerA}</label></h3><br>

                        <input name="${i.id}" value="B" id="${i.answerB}" type="radio">
                        <h3><label for="${i.answerB}">${i.answerB}</label></h3><br>

                        <input name="${i.id}" value="C" id="${i.answerC}" type="radio">
                        <h3><label for="${i.answerC}">${i.answerC}</label></h3><br>

                        <input name="${i.id}" value="D" id="${i.answerD}" type="radio">
                        <h3><label for="${i.answerD}">${i.answerD}</label></h3><br>

                    </div>
                </div>
                <c:set var="allID" value="${allID} ${i.id}"></c:set>
            </c:forEach>
            <input type="text" name="allID" value="${allID}" hidden="">
            <input type="submit" style="margin:30px 100px 30px 700px; display: inline-block">
        </form>

    </body>
</html>
