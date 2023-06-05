<%-- 
    Document   : register
    Created on : May 30, 2023, 8:07:05 PM
    Author     : W
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <title>RegistrationForm</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <!-- LINEARICONS -->
        <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
        <!-- STYLE CSS -->
        <link rel="stylesheet" href="css/register.css">
        <link rel="stylesheet" href="https://cdn.linearicons.com/free/1.0.0/icon-font.min.css">
    </head>

    <body>
        <div class="wrapper">
            <div class="inner">
                <img src="img/image-1.png" alt="" class="image-1">
                <form action="registerServlet" method="post">
                    <h3 style="float: left;"><a href="login.jsp"><i style="color: #000;"
                                                                    class="fa fa-regular fa fa-backward"></i></a></h3>
                    <h3>New Account?</h3>

                    <div class="form-row">
                        <div class="form-holder">
                            <span class="lnr lnr-user"></span>
                            <input type="text" class="form-control" placeholder="Firstname" name="firstname" required>
                        </div>
                        <div class="form-holder">
                            <span class="lnr lnr-user"></span>
                            <input type="text" class="form-control" placeholder="Lastname" name="lastname" required>
                        </div>
                    </div>



                    <div class="form-holder">
                        <span class="lnr lnr-phone-handset"></span>
                        <input type="text" required pattern="[0-9]{10}" class="form-control" placeholder="Phone Number"
                               name="phonenumber">
                    </div>
                    <div class="form-holder">
                        <span class="lnr lnr-envelope"></span>
                        <input type="text" required pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" class="form-control"
                               placeholder="Mail" name="mail">
                    </div>
                    <div class="form-holder">
                        <span class="lnr lnr-calendar-full"></span>
                        <input type="date" class="form-control" placeholder="Date of Birth" name="dob" required>
                    </div>

                    <h1 style="margin: 20px 0; font-size: 16px">Are you ?</h1>
                    <div class="form-row">
                        <div class="form-holder">
                            <input style="margin: 0" type="radio" id="teacher" name="option" value="1">
                              <label for="teacher">Teacher</label><br>
                        </div>
                        <div class="form-holder">
                            <input style="margin: 0"  type="radio" id="student" name="option" value="2">
                              <label for="student">Student</label><br>
                        </div>
                    </div>
                    <div class="form-holder">
                        <span class="lnr lnr-user"></span>
                        <input type="text" class="form-control" placeholder="Username" name="username" required>
                    </div>
                    <span style="color: red">${errr}<span>
                            <div class="form-holder">
                                <span class="lnr lnr-lock"></span>
                                <input type="password" class="form-control" placeholder="Password" name="password" required>
                            </div>
                            <div class="form-holder">
                                <span class="lnr lnr-lock"></span>
                                <input type="password" class="form-control" placeholder="Confirm Password" name="repassword"
                                       required>
                            </div>
                            <span style="color: Red">${err}<span>
                                    <button type="submit">
                                        <span><a href=""></a>Register</span>
                                    </button>
                                    </form>

                                    <img src="img/image-2.png" alt="" class="image-2">
                                    </div>

                                    </div>

                                    <script src="js/jquery-3.3.1.min.js"></script>
                                    <script src="js/main.js"></script>
                                    <script src="https://cdn.linearicons.com/free/1.0.0/svgembedder.min.js"></script>
                                    </body>
