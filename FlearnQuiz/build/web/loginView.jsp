<%-- 
    Document   : loginView
    Created on : Jun 1, 2023, 9:48:42 PM
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
        <form action="login" method="post">
            <input type="text" placeholder="User name" name="username" required=""/>
            <br>
            <input type="text" placeholder="Password" name="password" required=""/>
            <input type="submit" value="Login"/>
        </form>
        <h3 style="color: red">${requestScope.error}</h3>
        <a href="signup">New account?</a>
    </body>
</html>
