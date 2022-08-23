<%-- 
    Document   : adminBus
    Created on : Aug 11, 2022, 5:03:31 PM
    Author     : ACER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Begin script -->
<script src="<c:url value="/js/admin/jsAdminBus.js" />"></script>
<script>
    <c:url value="/api/bus" var="endpoint" />

    window.onload = function () {
        loadBus('${endpoint}');
    };
</script>
<!-- End script -->

<!-- Begin message area -->
<spring:message code="admin.bus.h2.mainTitle" var="msgMainTitle"/>
<spring:message code="admin.bus.busName" var="msgBusName"/>
<spring:message code="admin.bus.licensePlates" var="msgLicensePlates"/>
<spring:message code="admin.bus.capacity" var="msgCapacity"/>
<spring:message code="admin.bus.manufacturer" var="msgManufacturer"/>
<spring:message code="admin.bus.type" var="msgType"/>
<spring:message code="admin.bus.form.status" var="msgStatus"/>
<spring:message code="admin.bus.h4.listTitle" var="msgListTitle"/>
<spring:message code="admin.bus.table.action" var="msgAction"/>
<!-- End message area -->

<div class="d-flex justify-content-center w-100 mt-4">
    <div class="my-style-card-box my-style-w-98 p-4">
        <h3 class="fw-bold my-style-text-blue">${msgMainTitle}</h3>
    </div>
</div>

<div class="d-flex justify-content-center w-100 mt-4">
    <div class="my-style-card-box my-style-w-98 p-3">
        <div class="h4 my-style-pt-10 my-style-pb-10 fw-bold my-style-text-blue">Thêm xe khách mới</div>
        <c:url value="/admin/bus" var="formAction"/>
        <form:form method="post" action="${formAction}" modelAttribute="newBus">
            <div class="row mt-3">
                <div class="col-8">
                    <label for="name">${msgBusName}</label>
                    <form:input id="name" path="name" type="text" class="form-control my-style-input-radius"/>
                    <form:errors path="name" cssClass="text text-danger"/>
                </div>

                <div class="col-4">
                    <label for="licensePlates">${msgLicensePlates}</label>
                    <form:input id="licensePlates" path="licensePlates" type="text" class="form-control my-style-input-radius"/>
                    <form:errors path="licensePlates" cssClass="text text-danger"/>
                </div>
            </div>
            <div class="row mt-3">
                <div class="col">
                    <label for="capacity">${msgCapacity}</label>
                    <form:input id="capacity" path="capacity" type="number" class="form-control my-style-input-radius"/>
                    <form:errors path="capacity" cssClass="text text-danger"/>
                </div>

                <div class="col">
                    <label for="manufacturer">${msgManufacturer}</label>
                    <form:input id="manufacturer" path="manufacturer" type="text" class="form-control my-style-input-radius"/>
                    <form:errors path="manufacturer" cssClass="text text-danger"/>
                </div>

                <div class="col">
                    <label for="busType">${msgType}</label>
                    <form:select id="busType" path="type" class="form-control my-style-input-radius">
                        <option value="Xe ngồi" selected="">Xe ngồi</option>
                        <option value="Xe giường">Xe giường</option>
                    </form:select>
                </div>
            </div>

            <div class="d-grid gap-2 d-md-flex justify-content-md-end mt-3 mb-3">
                <button class="btn btn-primary me-md-2 fw-bold my-style-input-radius" type="submit"><i class="fa fa-plus me-2"></i><spring:message code="admin.bus.button.addBus"/></button>
            </div>
        </form:form>
    </div>
</div>

<div class="d-flex justify-content-center w-100 mb-4 mt-4">
    <div class="my-style-card-box my-style-w-98 p-3">
        <div class="h4 my-style-pt-20 my-style-pb-20 fw-bold my-style-text-blue">Danh sách xe khách</div>
        <form action="<c:url value="/admin/bus"/>" id="myForm">
            <div class="input-group">
                <input id="inputSearch" type="search" name="kwName" class="form-control my-style-input-radius" placeholder="Tìm kiếm xe">
                <button type="submit" class="btn btn-primary my-style-input-radius"><i class="bi bi-search"></i></button>
            </div>
        </form>
        <hr>
        <table class="table table-hover">

            <thead>
                <tr>
                    <th>#</th>
                    <th>${msgBusName}</th>
                    <th>${msgLicensePlates}</th>
                    <th>${msgCapacity}</th>
                    <th>${msgManufacturer}</th>
                    <th>${msgType}</th>
                    <th>${msgAction}</th>
                </tr>
            </thead>

            <tbody id="listBus">

            </tbody>
        </table>
    </div>
</div>
