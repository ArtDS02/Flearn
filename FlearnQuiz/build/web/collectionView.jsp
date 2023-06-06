<%-- 
    Document   : CollectionView
    Created on : May 30, 2023, 10:25:51 PM
    Author     : quoct
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>${requestScope.colDetail.name}</h1>
        <div style="margin-bottom: 30px; text-align: center"><a href="testoption?id=${requestScope.colDetail.id}">Test</a></div>
            <c:forEach var="i" items="${requestScope.collection}">            
            <div style="border: 1px solid black; width: 50%; margin: 0 auto 10px auto; display: flex">
                <div style="width: 70%">
                    <h1> ${i.detail}</h1>
                    <h3>A. ${i.answerA}</h3>
                    <h3>B. ${i.answerB}</h3>
                    <h3>C. ${i.answerC}</h3>
                    <h3>D. ${i.answerD}</h3>
                </div>

                <div style="border-left: 1px solid black ">
                    <h3 style="margin: 20px">${i.trueAnswer}</h3>
                </div>

            </div>

        </c:forEach>

    </body>
</html>
