<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Login</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" type="image/png" href="" />
        <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
      
        <link rel="stylesheet" type="text/css" href="css/util.css">
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdn.linearicons.com/free/1.0.0/icon-font.min.css">
    </head>

    <body style="background-color: #666666;">
        <div class="limiter">
            <div class="container-login100">
                <div class="wrap-login100">
                    <form class="login100-form validate-form" action="LoginServlet" method="post">
                        <span class="login100-form-title p-b-43">
                            Login to continue
                        </span>
                        <div class="wrap-input100 validate-input">
                            <input value="${uname}"  class="input100" type="text"   name="username" required="">
                            <span class="focus-input100"></span>
                            <span class="label-input100">Username</span>
                        </div>


                        <div class="wrap-input100 validate-input">
                            <input value="${upass}" class="input100" type="password"  name="pass" required="">
                            <span class="focus-input100"></span>
                            <span class="label-input100">Password</span>
                        </div>
                        <div style="margin-top: 10px">

                            <span style="color: red">${err}</span>
                        </div>
                        <div class="flex-sb-m w-full p-t-3 p-b-32">
                            <div class="contact100-form-checkbox">
                                <input class="input-checkbox100" id="ckb1" type="checkbox" name="rememberme" value="1">
                                <label class="label-checkbox100" for="ckb1">
                                    Remember me
                                </label>
                            </div>


                            <div>
                                <a href="register.jsp" class="txt1">
                                    Not registered? Create an account
                                </a>
                            </div>
                        </div>

                        <div class="container-login100-form-btn">
                            <button class="login100-form-btn" type="submit">
                                Login
                            </button>
                        </div>
                    </form>
                        

                    <div class="login100-more" style="background-image: url('img/bg-02.jpg');">
                    </div>
                </div>
            </div>
        </div>

                        
        <script type="text/javascript" src="vendor/jquery/jquery-3.2.1.min.js"></script>
        <script src="js/main.js"></script>



    </body>

</html>