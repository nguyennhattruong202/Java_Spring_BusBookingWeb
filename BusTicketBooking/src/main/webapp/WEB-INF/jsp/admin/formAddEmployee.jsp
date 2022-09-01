<%-- 
    Document   : formAddEmployee
    Created on : Aug 31, 2022, 5:24:04 PM
    Author     : ACER
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="d-flex justify-content-center mt-3 mb-3 w-100">
    <div class="my-style-card-box p-4 w-75">
        <div class="border-bottom">
            <h4 class="fw-bold my-style-text-blue text-center">Đăng ký nhân sự mới</h4>
        </div>
        <c:url value="/admin/employee/add" var="action"/>
        <form:form method="post" action="${action}" modelAttribute="employee" enctype="multipart/form-data">
            <form:errors path="*" element="div" cssClass="alert alert-danger"/>
            <div class="row mt-3">
                <div class="col-6">
                    <label for="lastName">Họ và tên lót:</label>
                    <form:input id="lastName" path="lastName" type="text" cssClass="form-control"/>
                    <form:errors path="lastName" cssClass="text text-danger"/>
                </div>
                <div class="col-6">
                    <label for="firstName">Tên:</label>
                    <form:input id="firstName" path="firstName" type="text" cssClass="form-control"/>
                    <form:errors path="firstName" cssClass="text text-danger"/>
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-6">
                    <label for="dateOfBirth">Ngày sinh:</label>
                    <form:input id="dateOfBirth" path="dateOfBirth" type="date" cssClass="form-control"/>
                    <form:errors path="dateOfBirth" cssClass="text text-danger"/>
                </div>
                <div class="col-6">
                    <label for="gender">Giới tính:</label>
                    <form:select id="gender" path="gender" cssClass="form-select">
                        <option value="1" selected="">Nam</option>
                        <option value="0">Nữ</option>
                    </form:select>
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-6">
                    <label for="identityNum">CMND/CCCD:</label>
                    <form:input id="identityNum" path="identityNum" type="text" cssClass="form-control"/>
                    <form:errors path="identityNum" cssClass="text text-danger"/>
                </div>
                <div class="col-6">
                    <label for="phone">Số điện thoại:</label>
                    <form:input id="phone" path="phone" type="tel" cssClass="form-control"/>
                    <form:errors path="phone" cssClass="text text-danger"/>
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-12">
                    <label for="address">Địa chỉ:</label>
                    <form:input id="address" path="address" type="text" cssClass="form-control"/>
                    <form:errors path="address" cssClass="text text-danger"/>
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-6">
                    <label for="email">Email:</label>
                    <div class="input-group flex-nowrap">
                        <span class="input-group-text">@</span>
                        <form:input id="email" path="email" type="email" cssClass="form-control" placeholder="abc@gmail.com"/>
                        <form:errors path="email" cssClass="text text-danger"/>
                    </div>
                </div>
                <div class="col-6">
                    <label for="userRole">User role:</label>
                    <form:select id="userRole" path="userRole" cssClass="form-select">
                        <option value="ROLE_ADMIN" selected>ROLE_ADMIN</option>
                        <option value="ROLE_DRIVER">ROLE_DRIVER</option>
                        <option value="ROLE_STAFF">ROLE_STAFF</option>
                    </form:select>
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-6">
                    <label for="username">Tên tài khoản:</label>
                    <form:input id="username" path="username" type="email" cssClass="form-control"/>
                    <form:errors path="username" cssClass="text text-danger"/>
                </div>
                <div class="col-6">
                    <label for="password">Mật khẩu:</label>
                    <form:input id="password" path="password" type="password" cssClass="form-control"/>
                    <form:errors path="password" cssClass="text text-danger"/>
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-12">
                    <label for="image" class="form-label">Hình ảnh</label>
                    <form:input id="image" path="image" type="file" cssClass="form-control"/>
                    <form:errors path="image" cssClass="text text-danger"/>
                </div>
            </div>
            <div class="d-grid gap-2 d-flex justify-content-end mt-3">
                <button class="btn btn-primary fw-bold" type="submit"><i class="bi bi-person-plus me-2" style="font-size: 20px;"></i>Thêm nhân sự mới</button>
            </div>
        </form:form>
    </div>
</div>