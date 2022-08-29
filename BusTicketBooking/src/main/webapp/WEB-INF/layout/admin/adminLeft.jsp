<%-- 
    Document   : adminLeft
    Created on : Aug 10, 2022, 1:11:07 PM
    Author     : ACER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<nav id="sidebarMenu" class="collapse d-lg-block sidebar collapse bg-light h-100">
    <div class="w-100 text-center">
        <img src="<c:url value="/images/admin/iconUserAvatar.png"/>" alt="avartarUser" width="150" height="150" class="align-center">
    </div>
    <h3 class="text-center mt-3">Employee 1</h3>
    <hr>
    <div class="position-sticky">
        <div class="list-group list-group-flush mx-3 mt-4">
            <a href="<c:url value="/admin/index"/>" class="list-group-item list-group-item-action py-2 ripple bg-light my-left-sidebar-hover" aria-current="true">
                <i class="bi bi-house me-3" style="font-size: 20px;"></i>
                <span>Trang chủ</span>
            </a>
            <a href="<c:url value="/admin/linesbus"/>" class="list-group-item list-group-item-action py-2 ripple bg-light my-left-sidebar-hover">
                <i class="bi bi-signpost-2 me-3" style="font-size: 20px;"></i>
                <span>Quản lý tuyến xe</span>
            </a>
            <a href="<c:url value="/admin/bustrip"/>" class="list-group-item list-group-item-action py-2 ripple bg-light my-left-sidebar-hover">
                <i class="bi bi-pin-map me-3" style="font-size: 20px;"></i>
                <span>Quản lý chuyến xe</span>
            </a>
            <a href="<c:url value="/admin/bus"/>" class="list-group-item list-group-item-action py-2 ripple bg-light my-left-sidebar-hover">
                <i class="bi bi-truck-front me-3" style="font-size: 20px;"></i>
                <span>Quản lý xe khách</span>
            </a>
            <a href="<c:url value="/admin/employee"/>" class="list-group-item list-group-item-action py-2 ripple bg-light my-left-sidebar-hover">
                <i class="bi bi-people me-3" style="font-size: 20px;"></i>
                <span>Quản lý nhân sự</span>
            </a>
            <a href="<c:url value="/admin/typeemployee"/>" class="list-group-item list-group-item-action py-2 ripple bg-light my-left-sidebar-hover">
                <i class="bi bi-person me-3" style="font-size: 20px;"></i>
                <span>Quản lý loại nhân sự</span>
            </a>
        </div>
    </div>
</nav>
<style>
    .my-left-sidebar-hover:hover{
        background-color: #0d6efd !important;
        color: white;
    }
</style>