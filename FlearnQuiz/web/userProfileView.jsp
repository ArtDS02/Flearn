<%-- 
    Document   : userProfileView
    Created on : Jun 2, 2023, 1:00:32 PM
    Author     : quoct
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:set var="acc" value="${sessionScope.account}">

        </c:set>

        <h1>${acc.firstName} ${acc.lastName}</h1>        
        <h1>${acc.email}</h1>    
        <h1>${acc.phone}</h1>
        <h1>${acc.role}</h1>
    </body>
</html>
