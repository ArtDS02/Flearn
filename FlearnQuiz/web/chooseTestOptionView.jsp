<%-- 
    Document   : testOption
    Created on : May 31, 2023, 9:50:26 AM
    Author     : quoct
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Test option</h1>

        <form action="testoption" method="post">
            Number of questions:(Maximum ${requestScope.so}) <input type="number" value="1" min="1" max="${requestScope.so}" name="num">    
            <input type="number" value="${requestScope.id}" name="id" style="display: none" >
            <br>


            <input type="submit" value="Begin test">
        </form>
    </body>
</html>
