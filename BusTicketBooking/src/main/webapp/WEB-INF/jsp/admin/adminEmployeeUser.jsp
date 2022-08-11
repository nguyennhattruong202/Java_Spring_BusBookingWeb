<%-- 
   Document   : adminEmployeeUser
   Created on : Aug 8, 2022, 5:38:16 PM
   Author     : ACER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <script src="<c:url value="/js/admin/jsAdminEmployee.js"/>"></script>
</head>
<div class="text-center mt-3 text-primary text-uppercase">
    <h2>Quản lý nhân sự</h2>
</div>

<div class=" d-flex justify-content-center">
    <hr class="w-25">
</div>

<form:form>
    <div class="row mt-3">
        <div class="col">
            <label>Last name:</label>
            <input type="text" class="form-control" placeholder="Enter last name">
        </div>
        <div class="col">
            <label>First name:</label>
            <input type="text" class="form-control" placeholder="Enter first name">
        </div>
        <div class="col">
            <label>Sex:</label>
            <select class="form-select" aria-label="Default select example">
                <option value="1" selected>Male</option>
                <option value="2">Female</option>
            </select>
        </div>
    </div>
    <div class="row mt-3">
        <div class="col">
            <label>Date of birth:</label>
            <input type="date" class="form-control">
        </div>
        <div class="col">
            <label>Identity number:</label>
            <input type="text" class="form-control" placeholder="Enter identity number">
        </div>
        <div class="col">
            <label>Phone number:</label>
            <input type="text" class="form-control" placeholder="Enter phone number">
        </div>
    </div>
    <div class="row mt-3">
        <div class="col">
            <label>Address:</label>
            <input type="text" class="form-control" placeholder="Enter address">
        </div>
    </div>
    <div class="row mt-3">
        <div class="col">
            <label>Email:</label>
            <input type="text" class="form-control" placeholder="Enter email">
        </div>
        <div class="col-3">
            <label>Type employee:</label>
            <select class="form-select" aria-label="Role select">
                <option value="1" selected>Admin</option>
                <option value="2">Staff</option>
                <option value="3">Driver</option>
            </select>
        </div>
        <div class="col-3">
            <label>Active:</label>
            <select class="form-select" aria-label="Active select">
                <option value="1" selected>Active</option>
                <option value="2">Non-Active</option>
            </select>
        </div>
    </div>
</form:form>

<div class="d-grid gap-2 d-md-flex justify-content-md-end mt-3 mb-3">
    <button class="btn btn-primary me-md-2 fw-bold" type="button"><i class="fa fa-plus me-2"></i>Thêm nhân sự mới</button>
</div>

<hr>

<div class="text-center mt-3 text-primary text-uppercase">
    <h4>Danh sách nhân sự</h4>
</div>
<div class=" d-flex justify-content-center">
    <hr class="w-25">
</div>

<div class="input-group mt-3 mb-3">
    <input type="search" class="form-control" placeholder="Search">
    <button class="btn btn-primary" type="button"><i class="bi bi-search"></i></button>
</div>

<table class="table table-hover">
    <tr>
        <th>#</th>
        <th>Last name</th>
        <th>First name</th>
        <th>Date of birth</th>
        <th>Phone number</th>
        <th>Email</th>
    </tr>
    <tbody id="listEmployee">

    </tbody>
</table>

<script>
    <c:url value="/admin/employee" var="endpoint"/>
    window:onload = function () {
        loadEmployee('${endpoint}');
    };
</script>
