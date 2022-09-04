<%-- 
    Document   : authentications
    Created on : Sep 3, 2022, 6:52:57 PM
    Author     : KIMNAM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"/>-->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"/>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"/>
<link rel="stylesheet" href="<c:url value="/resources/css/style_authentication.css"/>"/>

<div class="wrapper">
    <div class="logo">
        <img src="<c:url value="/resources/img/favicon.png"/>" alt="">
    </div>
    <div class="text-center mt-4 name">
        Truong Nam
    </div>
    <div class="text-center mt-4 name">
        Dai ly ve xe
    </div>
    <form class="p-3 mt-3">
        <div class="form-field d-flex align-items-center">
            <span class="far fa-user"></span>
            <input type="text" name="userName" id="userName" placeholder="Username">
        </div>
        <div class="form-field d-flex align-items-center">
            <span class="fas fa-key"></span>
            <input type="password" name="password" id="pwd" placeholder="Password">
        </div>
        <button class="btn mt-3">Dang nhap</button>
    </form>
    <div class="text-center fs-6">
        <a href="#">Quen mat khau ?</a> Hoac <a href="#">Dang ky</a>
    </div>
</div>