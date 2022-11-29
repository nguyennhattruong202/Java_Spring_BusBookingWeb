<%-- 
    Document   : adminHeader
    Created on : Aug 5, 2022, 3:59:20 PM
    Author     : ACER
--%>

<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<nav class="navbar navbar-light" style="background-color: cyan;">
    <sec:authorize access="isAuthenticated()">
        <div class="container-fluid">
            <a class="navbar-brand text-white" href="<c:url value="/admin/index"/>">
                <img src="<c:url value="/images/admin/mainLogo.png"/>" alt="mainLogo" width="100" height="50" class="d-inline-block align-text-top">
            </a>
            <li class="d-flex nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownUser" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    <img class="img-fluid" style="width: 40px;" src="${pageContext.session.getAttribute("currentUser").image}" alt="iconCurentUser">
                    ${pageContext.session.getAttribute("currentUser").lastName}
                    ${pageContext.session.getAttribute("currentUser").firstName}
                </a>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdownUser">
                    <li>
                        <a class="dropdown-item" href="<c:url value="/admin/user/myaccount"/>">
                            <i class="bi bi-info-circle me-2" style="font-size: 20px;"></i>
                            <fmt:message key="header.infoUser.langv"/>
                        </a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="<c:url value="/admin/user/changepassword"/>">
                            <i class="bi bi-key me-2" style="font-size: 20px;"></i>
                            <fmt:message key="admin.header.changePass"/>
                        </a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="<c:url value="/logout"/>">
                            <i class="bi bi-box-arrow-left me-2" style="font-size: 20px;"></i>
                            <fmt:message key="admin.header.signOut"/>
                        </a>
                    </li>
                </ul>
            </li>
        </div>
    </sec:authorize>
</nav>

<div class="d-grid gap-2 d-flex justify-content-end mt-3">
    <div class="dropdown">
        <a class="btn btn-outline-danger dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
            <fmt:message key="header.lang.select"/>
        </a>

        <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
            <li><a class="dropdown-item" href="?lang=en"><fmt:message key="header.lang.en"/></a></li>
            <li><a class="dropdown-item" href="?lang=vi"><fmt:message key="header.lang.vi"/></a></li>
        </ul>
    </div>
</div>

<div class="list-group list-group-horizontal dropdown mt-3">
    <a class="border border-light bg-secondary list-group-item list-group-item-action text-white" href="<c:url value="/admin/index"/>">
        <i class="bi bi-house me-2" style="font-size: 20px;"></i>
        <fmt:message key="admin.header.home"/>
    </a>
    <a class="border border-light bg-secondary list-group-item list-group-item-action text-white" href="#" role="button" data-bs-toggle="dropdown" id="dropdownCoachline">
        <i class="bi bi-signpost-2 me-2" style="font-size: 20px;"></i>
        <fmt:message key="admin.header.coachline"/>
    </a>
    <ul class="dropdown-menu list-group-flush" aria-labelledby="dropdownCoachline">
        <li>
            <a class="dropdown-item" href="#"><fmt:message key="admin.header.coachlineList"/></a>
        </li>
        <li>
            <a class="dropdown-item" href="#"><fmt:message key="admin.header.coachlineDeleted"/></a>
        </li>
    </ul>
    <a class="border border-light bg-secondary list-group-item list-group-item-action text-white" href="#" role="button" data-bs-toggle="dropdown" id="dropdownCoachtrip">
        <i class="bi bi-pin-map me-2" style="font-size: 20px;"></i>
        <fmt:message key="admin.header.coachtrip"/>
    </a>
    <ul class="dropdown-menu" aria-labelledby="dropdownCoachtrip">
        <li>
            <a class="dropdown-item" href="#"><fmt:message key="admin.header.coachtripList"/></a>
        </li>
        <li>
            <a class="dropdown-item" href="#"><fmt:message key="admin.header.coachtripDeleted"/></a>
        </li>
    </ul>
    <a class="border border-light bg-secondary list-group-item list-group-item-action text-white" href="#" role="button" data-bs-toggle="dropdown" id="dropdownCoach">
        <i class="bi bi-truck-front me-2" style="font-size: 20px;"></i>
        <fmt:message key="admin.header.coach"/>
    </a>
    <ul class="dropdown-menu" aria-labelledby="dropdownCoach">
        <li>
            <a class="dropdown-item" href="<c:url value="/admin/coach"/>"><fmt:message key="admin.header.coachList"/></a>
        </li>
        <li>
            <a class="dropdown-item" href="<c:url value="/admin/coach/deleted"/>"><fmt:message key="admin.header.coachDeleted"/></a>
        </li>
    </ul>
    <a class="border border-light bg-secondary list-group-item list-group-item-action text-white" href="#" role="button" data-bs-toggle="dropdown" id="dropdownEmployee">
        <i class="bi bi-people me-2" style="font-size: 20px;"></i>
        <fmt:message key="admin.header.employee"/>
    </a>
    <ul class="dropdown-menu" aria-labelledby="dropdownEmployee">
        <li>
            <a class="dropdown-item" href="<c:url value="/admin/employee"/>"><fmt:message key="admin.header.employeeList"/></a>
        </li>
        <li>
            <a class="dropdown-item" href="#"><fmt:message key="admin.header.employeeDeleted"/></a>
        </li>
    </ul>
    <a class="border border-light bg-secondary list-group-item list-group-item-action text-white" href="#" role="button" data-bs-toggle="dropdown" id="dropdownCustomer">
        <i class="bi bi-person me-2" style="font-size: 20px;"></i>
        <fmt:message key="admin.header.customer"/>
    </a>
    <ul class="dropdown-menu" aria-labelledby="dropdownCustomer">
        <li>
            <a class="dropdown-item" href="<c:url value="/admin/customer"/>"><fmt:message key="admin.header.customerList"/></a>
        </li>
        <li>
            <a class="dropdown-item" href="<c:url value="/admin/customer/deleted"/>"><fmt:message key="admin.header.customerDeleted"/></a>
        </li>
    </ul>
</div>

