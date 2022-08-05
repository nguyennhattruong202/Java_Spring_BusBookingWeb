<%-- 
    Document   : adminHeader
    Created on : Aug 5, 2022, 3:59:20 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">

        <a class="navbar-brand" href="<c:url value="/admin/index"/>"><spring:message code="admin.header.navbar.home"/></a>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="<c:url value="/admin/linesbus"/>"><spring:message code="admin.header.navbar.lineBus"/></a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="#"><spring:message code="admin.header.navbar.busTrip"/></a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="#"><spring:message code="admin.header.navbar.bus"/></a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="#"><spring:message code="admin.header.navbar.employmentUser"/></a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="#"><spring:message code="admin.header.navbar.employeeType"/></a>
                </li>

                <li class="nav-item">
                    <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
