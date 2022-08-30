<%-- 
    Document   : adminHeader
    Created on : Aug 5, 2022, 3:59:20 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<nav class="navbar navbar-light" style="background-color: cyan;">
    <div class="container-fluid">
        <a class="navbar-brand text-white" href="<c:url value="/admin/index"/>">
            <img src="<c:url value="/images/admin/mainLogo.png"/>" alt="mainLogo" width="100" height="50" class="d-inline-block align-text-top">
        </a>
        <li class="d-flex nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownUser" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                <img class="img-fluid" style="width: 40px;" src="<c:url value="/images/admin/iconUserAvatar.png"/>" alt="iconUser">
                Epmloyee 1
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdownUser">
                <li>
                    <a class="dropdown-item" href="#">
                        <i class="bi bi-info-circle me-2" style="font-size: 20px;"></i>
                        Thông tin tài khoản
                    </a>
                </li>
                <li>
                    <a class="dropdown-item" href="#">
                        <i class="bi bi-key me-2" style="font-size: 20px;"></i>
                        Thay đổi mật khẩu
                    </a>
                </li>
                <li>
                    <a class="dropdown-item" href="#">
                        <i class="bi bi-box-arrow-left me-2" style="font-size: 20px;"></i>
                        Đăng xuất
                    </a>
                </li>
            </ul>
        </li>
    </div>
</nav>
<div class="list-group list-group-horizontal dropdown mt-2">
    <a class="border border-light bg-secondary list-group-item list-group-item-action text-white" href="<c:url value="/admin/index"/>">
        <i class="bi bi-house me-2" style="font-size: 20px;"></i>
        Trang chủ
    </a>
    <a class="border border-light bg-secondary list-group-item list-group-item-action text-white" href="#" role="button" data-bs-toggle="dropdown" id="dropdownCoachline">
        <i class="bi bi-signpost-2 me-2" style="font-size: 20px;"></i>
        Tuyến xe
    </a>
    <ul class="dropdown-menu list-group-flush" aria-labelledby="dropdownCoachline">
        <li>
            <a class="dropdown-item" href="#">Danh sách tuyến</a>
        </li>
        <li>
            <a class="dropdown-item" href="#">Tuyến đã xóa</a>
        </li>
    </ul>
    <a class="border border-light bg-secondary list-group-item list-group-item-action text-white" href="#" role="button" data-bs-toggle="dropdown" id="dropdownCoachtrip">
        <i class="bi bi-pin-map me-2" style="font-size: 20px;"></i>
        Chuyến xe
    </a>
    <ul class="dropdown-menu" aria-labelledby="dropdownCoachtrip">
        <li>
            <a class="dropdown-item" href="#">Danh sách chuyến</a>
        </li>
        <li>
            <a class="dropdown-item" href="#">Chuyến đã xóa</a>
        </li>
    </ul>
    <a class="border border-light bg-secondary list-group-item list-group-item-action text-white" href="#" role="button" data-bs-toggle="dropdown" id="dropdownCoach">
        <i class="bi bi-truck-front me-2" style="font-size: 20px;"></i>
        Xe
    </a>
    <ul class="dropdown-menu" aria-labelledby="dropdownCoach">
        <li>
            <a class="dropdown-item" href="#">Danh sách xe khách</a>
        </li>
        <li>
            <a class="dropdown-item" href="#">Xe khách đã xóa</a>
        </li>
    </ul>
    <a class="border border-light bg-secondary list-group-item list-group-item-action text-white" href="#" role="button" data-bs-toggle="dropdown" id="dropdownEmployee">
        <i class="bi bi-people me-2" style="font-size: 20px;"></i>
        Nhân sự
    </a>
    <ul class="dropdown-menu" aria-labelledby="dropdownEmployee">
        <li>
            <a class="dropdown-item" href="#">Danh sách nhân sự</a>
        </li>
        <li>
            <a class="dropdown-item" href="#">Nhân sự đã xóa</a>
        </li>
    </ul>
    <a class="border border-light bg-secondary list-group-item list-group-item-action text-white" href="#" role="button" data-bs-toggle="dropdown" id="dropdownCustomer">
        <i class="bi bi-person me-2" style="font-size: 20px;"></i>
        Khách hàng
    </a>
    <ul class="dropdown-menu" aria-labelledby="dropdownCustomer">
        <li>
            <a class="dropdown-item" href="<c:url value="/admin/customer"/>">Danh sách khách hàng</a>
        </li>
        <li>
            <a class="dropdown-item" href="#">Khách hàng đã xóa</a>
        </li>
    </ul>
</div>

