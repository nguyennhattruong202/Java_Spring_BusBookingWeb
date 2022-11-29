<%--
    Document   : addCoach
    Created on : Sep 10, 2022, 10:02:05 AM
    Author     : ACER
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="d-flex justify-content-center w-100 mt-4 mb-4">
    <div class="shadow p-3 bg-body rounded w-50 p-4">
        <div class="border-bottom">
            <h4 class="fw-bold text-primary"><fmt:message key="admin.content.addCoach"/></h4>
        </div>
        <c:url value="/admin/coach/add" var="action"/>
        <form:form method="post" action="${action}" cssClass="mt-3" modelAttribute="newCoach">
            <label for="nameCoach" class="mt-3"><fmt:message key="admin.coach.name"/></label> 
            <form:input type="text" cssClass="form-control" id="nameCoach" path="name"/>
            <form:errors path="name" cssClass="text text-danger"/>
            <label for="licensePlates" class="mt-3"><fmt:message key="admin.coach.licensePlates"/></label> 
            <form:input type="text" class="form-control" id="licensePlates" path="licensePlates"/>
            <form:errors path="licensePlates" cssClass="text text-danger"/>
            <label for="capacity" class="mt-3"><fmt:message key="admin.coach.capacity"/></label> 
            <form:input type="number" class="form-control" id="capacity" path="capacity"/>
            <form:errors path="capacity" cssClass="text text-danger"/>
            <label for="manufacturer" class="mt-3"><fmt:message key="admin.coach.manufacturer"/></label> 
            <form:input type="text" class="form-control" id="manufacturer" path="manufacturer"/>
            <form:errors path="manufacturer" cssClass="text text-danger"/>
            <label for="type" class="mt-3"><fmt:message key="admin.coach.type"/></label>
            <form:select class="form-select" id="type" path="type">
                <option value="1" selected>Xe ngồi</option>
                <option value="2">Xe giường nằm</option>
            </form:select>
            <div class="row mt-3">
                <div class="col-6">
                    <a href="<c:url value="/admin/coach"/>" class="btn btn-outline-primary"><i class="bi bi-arrow-left me-2"></i><fmt:message key="admin.button.back"/></a>
                </div>
                <div class="col-6 text-end">
                    <input type="submit" class="btn btn-outline-danger" value="<fmt:message key="admin.button.add"/>">
                </div>
            </div>
        </form:form>
    </div>
</div>
