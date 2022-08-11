<%-- 
    Document   : adminIndex
    Created on : Aug 5, 2022, 4:01:31 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<div class="row mt-3">
    <div class="col-4">
        <a href="<c:url value="/admin/linesbus"/>" class="text-decoration-none">
            <div class="card shadow p-3 mb-5 bg-body rounded" style="width: 18rem; height: 16rem;">
                <img src="<c:url value="/images/admin/pinMap.jpg"/>" class="card-img-top img-fluid" alt="indexLineBus" style="height: 300px;">
                <div class="card-body text-center">
                    <h5 class="card-title">Quản lý tuyến xe</h5>
                </div>
            </div>
        </a>
    </div>
    <div class="col-4">
        <a href="<c:url value="/admin/bustrip"/>" class="text-decoration-none">
            <div class="card shadow p-3 mb-5 bg-body rounded" style="width: 18rem; height: 16rem;">
                <img src="<c:url value="/images/admin/univerceBus3.jpg"/>" class="card-img-top img-fluid" alt="indexBusTrip" style="height: 300px;">
                <div class="card-body text-center">
                    <h5 class="card-title">Quản lý chuyến xe</h5>
                </div>
            </div>
        </a>
    </div>
    <div class="col-4">
        <a href="<c:url value="/admin/bus"/>" class="text-decoration-none">
            <div class="card shadow p-3 mb-5 bg-body rounded" style="width: 18rem; height: 16rem;">
                <img src="<c:url value="/images/admin/univerceBus.jpg"/>" class="card-img-top img-fluid" alt="indexBusTrip" style="height: 300px;">
                <div class="card-body text-center">
                    <h5 class="card-title">Quản lý xe khách</h5>
                </div>
            </div>
        </a>
    </div>
</div>
<div class="row mt-3">
    <div class="col-4">
        <a href="<c:url value="/admin/employee"/>" class="text-decoration-none">
            <div class="card shadow p-3 mb-5 bg-body rounded" style="width: 18rem; height: 16rem;">
                <img src="<c:url value="/images/admin/employee2.jpg"/>" class="card-img-top img-fluid" alt="indexEmployee" style="height: 300px;">
                <div class="card-body text-center">
                    <h5 class="card-title">Quản lý nhân sự</h5>
                </div>
            </div>
        </a>
    </div>
    <div class="col-4">
        <a href="#" class="text-decoration-none">
            <div class="card shadow p-3 mb-5 bg-body rounded" style="width: 18rem; height: 16rem;">
                <img src="<c:url value="/images/admin/manager.jpg"/>" class="card-img-top img-fluid" alt="indexTypeEmployee" style="height: 300px;">
                <div class="card-body text-center">
                    <h5 class="card-title">Quản lý loại nhân sự</h5>
                </div>
            </div>
        </a>
    </div>
</div>