<%-- 
    Document   : adminBus
    Created on : Aug 11, 2022, 5:03:31 PM
    Author     : ACER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <script src="<c:url value="/js/admin/jsAdminBus.js"/>"></script>
</head>
<div class="text-center mt-3 text-primary text-uppercase">
    <h2>Quản lý xe khách</h2>
</div>

<div class="d-flex justify-content-center">
    <hr class="w-25">
</div>

<form:form>
    <div class="row mt-3">
        <div class="col-8">
            <label>Tên xe:</label>
            <input type="text" class="form-control" placeholder="Nhập tên xe">
        </div>
        <div class="col-4">
            <label>Biển số xe:</label>
            <input type="text" class="form-control" placeholder="Nhập biển số xe">
        </div>
    </div>
    <div class="row mt-3">
        <div class="col">
            <label>Số chỗ ngồi/giường:</label>
            <input type="number" class="form-control" placeholder="Nhập số chỗ ngồi/giường">
        </div>
        <div class="col">
            <label>Hãng sản xuất:</label>
            <input type="text" class="form-control" placeholder="Nhập hãng sản xuất">
        </div>
        <div class="col">
            <label>Loại xe:</label>
            <select class="form-select" aria-label="Default select example">
                <option value="1" selected>Xe ngồi</option>
                <option value="2">Xe giường</option>
            </select>
        </div>
    </div>
</form:form>

<div class="d-grid gap-2 d-md-flex justify-content-md-end mt-3 mb-3">
    <button class="btn btn-primary me-md-2 fw-bold" type="button"><i class="fa fa-plus me-2"></i>Thêm xe mới</button>
</div>

<hr>

<div class="text-center mt-3 text-primary text-uppercase">
    <h4>Danh sách xe khách</h4>
</div>

<div class="d-flex justify-content-center">
    <hr class="w-25">
</div>

<div class="input-group mt-3 mb-3">
    <input type="search" class="form-control" placeholder="Tìm kiếm xe">
    <button type="button" class="btn btn-primary"><i class="bi bi-search"></i></button>
</div>

<table class="table table-hover table-bordered table-striped">
    <thead class="table-dark">
        <tr>
            <th>#</th>
            <th>Tên xe</th>
            <th>Biển số xe</th>
            <th>Sức chứa</th>
            <th>Hãng sản xuất</th>
            <th>Loại xe</th>
            <th></th>
        </tr>
    </thead>
    <tbody id="listBus"></tbody>
</table>

<script>
    <c:url value="/admin/bus" var="endpoint"/>
    window:onload = function () {
        loadBus('${endpoint}');
    };
</script>