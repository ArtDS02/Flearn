<%-- 
    Document   : allCollectionView
    Created on : May 30, 2023, 5:51:36 PM
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
        <h1>There are all collection</h1>        
        <c:forEach var="i" items="${requestScope.listCollectionDetail}">

            <div style="border: 1px solid black; width: 50%; margin: 0 auto 10px auto; text-align: center">
                <h1> ${i.name}</h1>
                <h1>Author: ${i.owner.firstName} ${i.owner.lastName}</h1>
                <a href="collection?id=${i.id}" style="text-decoration: none"><h1>Learn</h1></a>
            </div>

        </c:forEach>
    </body>
</html>
