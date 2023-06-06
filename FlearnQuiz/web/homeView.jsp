<%-- 
    Document   : homeView
    Created on : Jun 1, 2023, 9:25:40 PM
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

            .header-container{
                display: flex;
                justify-content: space-evenly;
            }

            ul {
                list-style-type: none;
                margin: 0;
                padding: 0;
                overflow: hidden;
                background-color: #333333;
            }

            li {
                float: left;
            }

            li a {
                display: block;
                color: white;
                text-align: center;
                padding: 16px;
                text-decoration: none;
            }

            li a:hover {
                background-color: #111111;
            }
        </style>
    </head>
    <body>

        <div class="header-container">
            <div class="row">
                Abc
            </div>   



            <div class="row">  
                <ul>
                    <li><a href="${pageContext.request.contextPath}">Home</a></li>
                    <li><a href="views/aboutUsView.jsp">About</a></li>
                    <li><a href="listcollectiondetail">Quizzzz</a></li>
                    <li><a href="library">Your library</a></li>
                </ul>
            </div>        


            <c:if test="${sessionScope.account == null}">
                <div class="row">           
                    <a href="login">Join now</a>                
                </div>    
            </c:if>

            <c:if test="${sessionScope.account != null}">
                <div class="row">           
                    <a href="views/userProfileView.jsp">${sessionScope.account.firstName}</a> || <a href="logout">Logout</a>
                </div>    
            </c:if>


        </div>   


    </body>
</html>
