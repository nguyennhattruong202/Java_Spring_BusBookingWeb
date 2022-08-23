<%-- 
    Document   : adminTypeEmployee
    Created on : Aug 13, 2022, 3:13:17 PM
    Author     : ACER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <script src="<c:url value="/js/admin/typeEmployee.js"/>"></script>
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/admin/typeEmployee.css"/>"/>
</head>

<!-- Begin message area -->
<spring:message code="admin.typeEmployee.h2.mainTitle" var="msgMainTitle"/>
<spring:message code="admin.typeEmployee.nameTypeEmployee" var="msgNameTypeEmployee"/>
<spring:message code="admin.typeEmployee.salaryLevel" var="msgSalaryLevel"/>
<spring:message code="admin.typeEmployee.button.addTypeEmployee" var="msgAddTypeEmployee"/>
<spring:message code="admin.typeEmployee.h4.listTitle" var="msgListTitle"/>
<spring:message code="admin.typeEmployee.inputPlaceholder.search" var="msgSearch"/>
<spring:message code="admin.typeEmployee.table.action" var="msgAction"/>
<!-- End message area -->

<div class="d-flex justify-content-center w-100 mt-4">
    <div class="my-style-card-box my-style-w-98 p-4">
        <h3 class="fw-bold my-style-text-blue">${msgMainTitle}</h3>
    </div>
</div>

<div class="d-flex justify-content-center w-100 mt-5">
    <div class="my-style-card-box my-style-w-98 p-4">
        <h4 class="my-style-pt-10 my-style-pb-10 fw-bold my-style-text-blue">${msgAddTypeEmployee}</h4>

        <form:form>
            <div class="row mt-3">
                <div class="col">
                    <label class="fw-bold mb-2">${msgNameTypeEmployee}:</label>
                    <input type="text" class="form-control my-style-element-height my-style-input-radius">
                </div>

                <div class="col">
                    <label class="fw-bold mb-2">${msgSalaryLevel}:</label>
                    <input type="text" class="form-control my-style-element-height my-style-input-radius">
                </div>
            </div>
        </form:form>

        <div class="d-grid gap-2 d-md-flex justify-content-md-end mt-3">
            <button class="btn btn-primary me-md-2 fw-bold my-style-input-radius my-style-element-height" type="button"><i class="fa fa-plus me-2"></i>${msgAddTypeEmployee}</button>
        </div>
    </div>
</div>

<div class="d-flex justify-content-center w-100 mt-5 mb-4">
    <div class="my-style-card-box my-style-w-98 p-4">
        <h4 class="my-style-pt-10 my-style-pb-10 fw-bold my-style-text-blue">${msgListTitle}</h4>

        <div class="input-group mt-3 mb-3">
            <input type="search" class="form-control my-style-input-radius my-style-element-height" placeholder="${msgSearch}">
            <button class="btn btn-primary my-style-input-radius my-style-element-height" type="button"><i class="bi bi-search"></i></button>
        </div>

        <hr>

        <table class="table table-hover">
            <thead>
                <tr>
                    <th>#</th>
                    <th>${msgNameTypeEmployee}</th>
                    <th>${msgSalaryLevel}</th>
                    <th>${msgAction}</th>
                </tr>
            </thead>

            <tbody id="listTypeEmployee"></tbody>
        </table>
    </div>
</div>

<script>
    <c:url value="/admin/typeemployee" var="endpoint"/>
    window:onload = function () {
        loadTypeEmployee('${endpoint}');
    };
</script>