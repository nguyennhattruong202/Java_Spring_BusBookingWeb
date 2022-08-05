<%-- 
    Document   : adminLineBus
    Created on : Aug 5, 2022, 4:01:38 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<div>
    <img class="img-fluid" src="<c:url value="/images/admin/daNangBanner.jpg"/>" alt="mainBannerLineBus">
</div>

<div class="text-center mt-3 text-primary text-uppercase">
    <h2>Quản lý tuyến xe</h2>
</div>

<div class=" d-flex justify-content-center">
    <hr class="w-25">
</div>

<div>
    <form:form>
        <div class="row mt-3">
            <div class="col">
                <label>Nhập nơi khởi hành:</label>
                <input type="text" class="form-control" placeholder="Nhập nơi khởi hành" name="email">
            </div>
            <div class="col">
                <label>Nhập nơi đến:</label>
                <input type="text" class="form-control" placeholder="Nhập nơi đến" name="pswd">
            </div>
        </div>
        <div class="row mt-3">
            <div class="col">
                <label>Nhập tên tuyến:</label>
                <input type="text" class="form-control" placeholder="Nhập tên tuyến" name="email">
            </div>
        </div>
    </form:form>
</div>

<div class="d-grid gap-2 d-md-flex justify-content-md-end mt-3">
    <button class="btn btn-primary" type="button">Thêm tuyến xe</button>
</div>

<hr>

<div class="text-center mt-3 text-primary">
    <h3>Danh sách các tuyến xe</h3>
</div>

<div class=" d-flex justify-content-center">
    <hr class="w-25">
</div>

<div class="mt-3 mb-3">
    <form method="get" action="<c:url value="/admin/linesbus"/>" class="d-flex">
        <input class="form-control me-2" type="text" name="kwName" placeholder="Nhập từ khóa...">
        <button type="submit" class="btn btn-primary" style="font-weight: bold;">Tìm</button>
    </form>
</div>

<div>
    <table class="table table-hover">

        <thead>
            <tr>
                <th>#</th>
                <th><spring:message code="admin.content.table.nameLineBus"/></th>
        <th><spring:message code="admin.content.table.departureLineBus"/></th>
        <th><spring:message code="admin.content.table.destinationLineBus"/></th>
        </tr>
        </thead>

        <tbody>
            <c:forEach items="${lineBus}" var="l">
                <tr>
                    <td>${l.id}</td>
                    <td>${l.name}</td>
                    <td>${l.departure}</td>
                    <td>${l.destination}</td>
                </tr>
            </c:forEach>
        </tbody>

    </table>
</div>

<c:if test="${lineBus.size() == 0}">

    <p class="text-center" style="color: red;">
        <strong>Không có tuyến xe nào!</strong>
    </p>

</c:if>

<ul class="pagination justify-content-center">
    <c:forEach begin="1" end="${Math.ceil(lineBusCounter/pageSize)}" var="p">

        <c:url value="/admin/linesbus" var="admin">
            <c:param name="page" value="${p}"/>
        </c:url>

        <li class="page-item"><a class="page-link" href="${admin}">${p}</a></li>

    </c:forEach>
</ul>
