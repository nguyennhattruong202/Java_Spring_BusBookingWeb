<%-- 
    Document   : adminIndex
    Created on : Aug 5, 2022, 4:01:31 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<head>
    <style>
        .my-card-hover:hover{
            opacity: 0.8;
            color: navy;
        }
    </style>
</head>
<div id="carouselExampleIndicators" class="carousel slide mt-3" data-bs-ride="carousel">
    <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
    </div>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="<c:url value="/images/admin/univerceBus1.jpg"/>" height="400" class="d-block w-100" alt="bannerBus1">
        </div>
        <div class="carousel-item">
            <img src="<c:url value="/images/admin/univerceBus2.jpg"/>" height="400" class="d-block w-100" alt="bannerBus2">
        </div>
        <div class="carousel-item">
            <img src="<c:url value="/images/admin/univerceBus3.jpg"/>" height="400" class="d-block w-100" alt="bannerBus3">
        </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </button>
</div>

<div class="d-flex justify-content-center w-100 mt-3 mb-3">
    <div class="my-style-card-box w-100 p-4">
        <div class="border-bottom">
            <h2 class="fw-bold my-style-text-blue text-center text-uppercase">Truong Nam BusLines</h2>
        </div>
        <div class="row mt-5">
            <div class="col-3">
                <a href="<c:url value="/admin/linesbus"/>" class="text-decoration-none my-card-hover">
                    <div class="card shadow p-3 mb-5 bg-body rounded justify-content-center" style="width: 18rem; height: 18rem;">
                        <img src="<c:url value="/images/admin/location.png"/>" class="card-img-top img-fluid rounded mx-auto d-block" alt="indexLineBus" style="height: 200px; width: 200px;">
                        <div class="card-body text-center">
                            <h5 class="card-title">Quản lý tuyến xe</h5>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-3">
                <a href="<c:url value="/admin/bustrip"/>" class="text-decoration-none my-card-hover">
                    <div class="card shadow p-3 mb-5 bg-body rounded justify-content-center" style="width: 18rem; height: 18rem;">
                        <img src="<c:url value="/images/admin/busTrip.png"/>" class="card-img-top img-fluid rounded mx-auto d-block" alt="indexBusTrip" style="height: 200px; width: 200px;">
                        <div class="card-body text-center">
                            <h5 class="card-title">Quản lý chuyến xe</h5>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-3">
                <a href="<c:url value="/admin/bus"/>" class="text-decoration-none my-card-hover">
                    <div class="card shadow p-3 mb-5 bg-body rounded justify-content-center" style="width: 18rem; height: 18rem;">
                        <img src="<c:url value="/images/admin/bus.png"/>" class="card-img-top img-fluid rounded mx-auto d-block" alt="indexBusTrip" style="height: 200px; width: 200px;">
                        <div class="card-body text-center">
                            <h5 class="card-title">Quản lý xe khách</h5>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-3">
                <a href="<c:url value="/admin/employee"/>" class="text-decoration-none my-card-hover">
                    <div class="card shadow p-3 mb-5 bg-body rounded justify-content-center" style="width: 18rem; height: 18rem;">
                        <img src="<c:url value="/images/admin/employee2.jpg"/>" class="card-img-top img-fluid rounded mx-auto d-block" alt="indexEmployee" style="height: 200px; width: 200px;">
                        <div class="card-body text-center">
                            <h5 class="card-title">Quản lý nhân sự</h5>
                        </div>
                    </div>
                </a>
            </div>
        </div>
        <div class="row">
            <div class="col-3">
                <a href="<c:url value="/admin/customer"/>" class="text-decoration-none my-card-hover">
                    <div class="card shadow p-3 bg-body rounded justify-content-center" style="width: 18rem; height: 18rem;">
                        <img src="<c:url value="/images/admin/typeEmployee.png"/>" class="card-img-top img-fluid rounded mx-auto d-block" alt="indexTypeEmployee" style="height: 200px; width: 200px;">
                        <div class="card-body text-center">
                            <h5 class="card-title">Quản khách hàng</h5>
                        </div>
                    </div>
                </a>
            </div>
        </div>
    </div>
</div>
