<%--
    Document   : addCoach
    Created on : Sep 10, 2022, 10:02:05 AM
    Author     : ACER
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="d-flex justify-content-center w-100 mt-4 mb-4">
    <div class="shadow p-3 bg-body rounded w-50 p-4">
        <div class="border-bottom">
            <h4 class="fw-bold text-primary">Thêm xe mới</h4>
        </div>
        <c:url value="/admin/coach/add" var="action"/>
        <form:form method="post" action="${action}" cssClass="mt-3" modelAttribute="newCoach">
            <label for="nameCoach" class="mt-3">Nhập tên xe:</label> 
            <form:input type="text" cssClass="form-control" id="nameCoach" path="name"/>
            <form:errors path="name" cssClass="text text-danger"/>
            <label for="licensePlates" class="mt-3">Nhập biển số xe:</label> 
            <form:input type="text" class="form-control" id="licensePlates" path="licensePlates"/>
            <form:errors path="licensePlates" cssClass="text text-danger"/>
            <label for="capacity" class="mt-3">Nhập sức chứa:</label> 
            <form:input type="number" class="form-control" id="capacity" path="capacity"/>
            <form:errors path="capacity" cssClass="text text-danger"/>
            <label for="manufacturer" class="mt-3">Nhập hãng sản xuất:</label> 
            <form:input type="text" class="form-control" id="manufacturer" path="manufacturer"/>
            <form:errors path="manufacturer" cssClass="text text-danger"/>
            <label for="type" class="mt-3">Loại xe</label>
            <form:select class="form-select" id="type" path="type">
                <option value="1" selected>Xe ngồi</option>
                <option value="2">Xe giường nằm</option>
            </form:select>
            <div class="row mt-3">
                <div class="col-6">
                    <a href="<c:url value="/admin/coach"/>" class="btn btn-outline-primary"><i class="bi bi-arrow-left me-2"></i>Trở lại</a>
                </div>
                <div class="col-6 text-end">
                    <input type="submit" class="btn btn-outline-danger" value="Thêm xe mới">
                </div>
            </div>
        </form:form>
    </div>
</div>
