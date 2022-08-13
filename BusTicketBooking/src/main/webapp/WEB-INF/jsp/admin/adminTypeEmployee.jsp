<%-- 
    Document   : adminTypeEmployee
    Created on : Aug 13, 2022, 3:13:17 PM
    Author     : ACER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <script src="<c:url value="/js/admin/jsAdminTypeEmployee.js"/>"></script>
</head>
<div class="text-center mt-3 text-primary text-uppercase">
    <h2>Quản lý loại nhân sự</h2>
</div>

<div class=" d-flex justify-content-center">
    <hr class="w-25">
</div>

<form:form>
    <div class="row mt-3">
        <div class="col">
            <label>Loại nhân sự:</label>
            <input type="text" class="form-control" placeholder="Nhập loại nhân sự">
        </div>
        <div class="col">
            <label>Bậc lương:</label>
            <input type="text" class="form-control" placeholder="Nhập bậc lương">
        </div>
</form:form>

<div class="d-grid gap-2 d-md-flex justify-content-md-end mt-3 mb-3">
    <button class="btn btn-primary me-md-2 fw-bold" type="button"><i class="fa fa-plus me-2"></i>Thêm loại nhân sự mới</button>
</div>

<hr>

<div class="text-center mt-3 text-primary text-uppercase">
    <h4>Danh sách loại nhân sự</h4>
</div>
<div class=" d-flex justify-content-center">
    <hr class="w-25">
</div>

<div class="input-group mt-3 mb-3">
    <input type="search" class="form-control" placeholder="Tìm kiếm loại nhân sự">
    <button class="btn btn-primary" type="button"><i class="bi bi-search"></i></button>
</div>

<table class="table table-hover table-bordered table-striped">
    <thead class="table-dark">
        <tr>
            <th>#</th>
            <th>Loại nhân sự</th>
            <th>Bậc lương</th>
            <th>Thao tác</th>
        </tr>
    </thead>
    <tbody id="listTypeEmployee">

    </tbody>
</table>

<script>
    <c:url value="/admin/typeemployee" var="endpoint"/>
    window:onload = function () {
        loadTypeEmployee('${endpoint}');
    };
</script>