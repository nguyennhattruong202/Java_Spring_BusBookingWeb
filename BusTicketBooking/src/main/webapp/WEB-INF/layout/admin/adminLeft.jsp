<%-- 
    Document   : adminLeft
    Created on : Aug 10, 2022, 1:11:07 PM
    Author     : ACER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="d-flex flex-column flex-shrink-0 p-3 bg-light w-100 h-100">
    <div class="w-100 text-center">
        <img src="<c:url value="/images/admin/iconUserAvatar.png"/>" alt="avartarUser" width="150" height="150" class="align-center">
    </div>
    <h3 class="text-center mt-3">Employee 1</h3>
    <hr>
    <ul class="nav nav-pills flex-column">
        <li>
            <a href="<c:url value="/admin/index"/>" class="nav-link link-dark"><i class="fa-solid fa-house me-3" style="width: 20px;"></i>Trang chủ</a>
        </li>
        <li>
            <a href="<c:url value="/admin/linesbus"/>" class="nav-link link-dark"><i class="fa-solid fa-signs-post me-3" style="width: 20px;"></i>Quản lý tuyến xe</a>
        </li>
        <li>
            <a href="<c:url value="/admin/bustrip"/>" class="nav-link link-dark"><i class="fa-solid fa-bus me-3" style="width: 20px;"></i>Quản lý chuyến xe</a>
        </li>
        <li>
            <a href="<c:url value="/admin/employee"/>" class="nav-link link-dark"><i class="fa-solid fa-users me-3" style="width: 20px;"></i>Quản lý nhân sự</a>
        </li>
        <li>
            <a href="#" class="nav-link link-dark"><i class="fa-solid fa-user me-3" style="width: 20px;"></i>Quản lý loại nhân sự</a>
        </li>
    </ul>
</div>
