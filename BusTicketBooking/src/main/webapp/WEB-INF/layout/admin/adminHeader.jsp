<%-- 
    Document   : adminHeader
    Created on : Aug 5, 2022, 3:59:20 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<nav class="navbar navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand text-white" href="<c:url value="/admin/index"/>">
            <img src="<c:url value="/images/admin/mainLogo.png"/>" alt="mainLogo" width="100" height="50" class="d-inline-block align-text-top">
        </a>
        <li class="d-flex nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                <img class="img-fluid" style="width: 40px;" src="<c:url value="/images/admin/iconUserAvatar.png"/>" alt="iconUser">
                Epmloyee 1
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                <li><a class="dropdown-item" href="#"><i class="bi bi-info-circle me-2" style="font-size: 20px;"></i>Thông tin tài khoản</a></li>
                <li><a class="dropdown-item" href="#"><i class="bi bi-key me-2" style="font-size: 20px;"></i>Thay đổi mật khẩu</a></li>
                <li><a class="dropdown-item" href="#"><i class="bi bi-box-arrow-left me-2" style="font-size: 20px;"></i>Đăng xuất</a></li>
            </ul>
        </li>
    </div>
</nav>

