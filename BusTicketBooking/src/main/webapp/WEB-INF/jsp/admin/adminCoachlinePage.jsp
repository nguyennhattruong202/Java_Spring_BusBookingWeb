<%-- 
    Document   : adminLineBus
    Created on : Aug 5, 2022, 4:01:38 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<div class="text-primary text-center text-uppercase mt-3">
    <h2>Quản lý tuyến xe khách</h2>
</div>

<div class="d-flex justify-content-center">
    <hr class="w-25">
</div>

<form:form>
    <div class="row mt-3">
        <div class="col">
            <label>Nơi khởi hành:</label>
            <select class="form-select" aria-label="Default select example">
                <option value="" disabled selected>Chọn nơi khởi hành...</option>
                <option value="1">Tp Hồ Chí Minh</option>
                <option value="2">Cần Thơ</option>
                <option value="3">Cà Mau</option>
            </select>
        </div>
        <div class="col">
            <label>Nơi đến:</label>
            <select class="form-select" aria-label="Default select example">
                <option value="" disabled selected>Chọn nơi đến...</option>
                <option value="1">Tp Hồ Chí Minh</option>
                <option value="2">Cần Thơ</option>
                <option value="3">Cà Mau</option>
            </select>
        </div>
    </div>
    <div class="row mt-3">
        <div class="col">
            <label>Độ dài tuyến:</label>
            <input type="text" class="form-control" placeholder="Nhập độ dài tuyến (Km)">
        </div>
        <div class="col">
            <label>Giá tiền:</label>
            <input type="text" class="form-control" placeholder="Nhập giá tiền">
        </div>
        <div class="col">
            <label>Trạng thái khai thác tuyến:</label>
            <select class="form-select" aria-label="Default select example">
                <option value="1">Active</option>
                <option value="2">Non-active</option>
            </select>
        </div>
    </div>
</form:form>

<div class="d-grid gap-2 d-md-flex justify-content-md-end mt-3 md-3">
    <button class="btn btn-primary me-md-2 fw-bold" type="button"><i class="fa fa-plus me-2"></i>Thêm tuyến xe mới</button>
</div>

<hr>

<div class="text-center text-primary text-uppercase mt-3">
    <h4>Danh sách các tuyến xe</h4>
</div>

<div class="d-flex justify-content-center justify-content-md-center">
    <hr class="w-25">
</div>

<div class="input-group mt-3 mb-3">
    <input class="form-control" type="search" placeholder="Tìm tuyến xe">
    <button class="btn btn-primary" type="button"><i class="bi bi-search"></i></button>
</div>

<table class="table table-hover table-bordered table-striped">
    <thead class="table-dark">
        <tr>
            <th>#</th>
            <th>Nơi khởi hành</th>
            <th>Nơi đến</th>
            <th>Độ dài tuyến</th>
            <th>Giá tiền</th>
            <th>Trạng thái khai thác tuyến</th>
            <th>Thao tác</th>
        </tr>
    </thead>
    <tbody id="listLineBus">

    </tbody>
</table>

<!-- Begin script -->
<script src="<c:url value="/js/admin/jsAdminLineBus.js"/>"></script>
<script>
    <c:url value="/admin/linesbus" var="endpoint"/>
    window:onload = function () {
        loadLineBus('${endpoint}');
    };
</script>
<!-- End script -->