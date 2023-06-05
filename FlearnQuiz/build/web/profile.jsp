<%-- 
    Document   : profile
    Created on : Jun 1, 2023, 10:24:06 AM
    Author     : W
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile</title>
        <link rel="stylesheet" href="css/profile.css"/>
        <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css"/>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
    </head>
    <body style="background-image: url(img/profile2.jpg); background-size: cover; background-repeat: no-repeat">
        <div  class="container">
            <div class="row gutters">
                <div class="col-xl-3 col-lg-3 col-md-12 col-sm-12 col-12">
                    <div class="card h-100">
                        <div class="card-body">
                            <div class="account-settings">
                                <div class="user-profile">
                                    <div class="user-avatar">
                                        <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="Maxwell Admin">
                                    </div>
                                    <h5 class="user-name">${a.firstname} ${a.lastname}</h5>
                                    <h6 class="user-email">Have a good day</h6>
                                </div>
                                <div class="about">
                                    <c:if test="${a.role == 1}" >

                                        <h5>Role: Student</h5>
                                    </c:if>
                                    <c:if test="${a.role == 2}" >

                                        <h5>Role: Teacher</h5>
                                    </c:if>
                                    <c:if test="${a.role == 0}" >

                                        <h5>Role: Admin</h5>
                                    </c:if>
                                    <!--                                    
                                    <p>I'm Yuki. Full Stack Designer I enjoy creating user-centric, delightful and human experiences.</p>-->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-12">
                    <div class="card h-100">
                        <form action="updateProfile" method="post">
                            <div class="card-body">
                                <div class="row gutters">
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                        <h6 class="mb-2 text-primary">Personal Details</h6>
                                    </div>
                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                        <div class="form-group">
                                            <label for="first">First Name</label>
                                            <input type="text" class="form-control" id="first" name="firstname" value="${a.firstname}" readonly="">
                                        </div>
                                    </div>
                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                        <div class="form-group">
                                            <label for="last">Last Name</label>
                                            <input type="text" class="form-control" id="last" name="lastname"  value="${a.lastname}" readonly="">
                                        </div>
                                    </div>

                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                        <div class="form-group">
                                            <label for="eMail">Email</label>
                                            <input type="email" class="form-control" id="eMail" name="mail"  value="${a.email}" readonly="">
                                        </div>
                                    </div>
                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                        <div class="form-group">
                                            <label for="phone">Phone</label>
                                            <input type="text" name="phonenumber" class="form-control" id="phone" value="${a.phone}" readonly="">
                                        </div>
                                    </div>
                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                        <div class="form-group">
                                            <label for="website">Date of Birth</label>
                                            <input type="date" class="form-control" placeholder="Date of Birth" name="dob" value="${a.DOB}" readonly="">
    <!--                                        <input type="url" class="form-control" id="website" value="${a.DOB}">-->
                                        </div>
                                    </div>
                                </div>

                                <div class="row gutters">
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                        <div class="text-right">
                                            <!--<button type="button" id="submit" name="submit" class="btn btn-secondary">Cancel</button>-->
                                            <!--                                        <button type="button" id="submit" name="submit" class="btn btn-primary"><a href="updateProfile.jsp"></a>Update</button>-->
                                            <a class="btn btn-secondary" href="index.jsp">Back</a>
                                            <!--                                            <button type="submit" class="btn btn-primary">Update</button>-->
                                            <a class="btn btn-primary" href="updateProfile?id=${a.id}">Update</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
