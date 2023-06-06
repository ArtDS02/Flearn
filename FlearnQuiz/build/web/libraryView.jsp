<%-- 
    Document   : libraryView
    Created on : Jun 2, 2023, 10:55:10 AM
    Author     : quoct
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.HashMap" %>
<%@page import="java.util.Map" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Your library</h1>       
        <c:forEach var="i" items="${requestScope.list}">
            <div style="border: 1px solid black; width: 50%; margin: 0 auto 10px auto; text-align: center">
                <h1> ${i.name}</h1>                       
                <a href="collection?id=${i.id}" style="text-decoration: none"><h1>Learn</h1></a>
            </div>

        </c:forEach>
    </body>
</body>
</html>
