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
<spring:message code="admin.bus.busName" var="busName"/>
<spring:message code="admin.bus.licensePlates" var="licensePlates"/>
<spring:message code="admin.bus.capacity" var="capacity"/>
<spring:message code="admin.bus.manufacturer" var="manufacturer"/>
<spring:message code="admin.bus.type" var="type"/>
<spring:message code="admin.bus.form.status" var="status"/>

<div class="text-center mt-3 text-primary text-uppercase">
    <h2 class="fw-bold"><spring:message code="admin.bus.h2.mainTitle"/></h2>
</div>

<div class="d-flex justify-content-center">
    <hr class="w-25">
</div>
<c:url value="/admin/bus" var="formAction"/>
<form:form method="post" action="${formAction}" modelAttribute="newBus">
    <div class="row mt-3">
        <div class="col-8">
            <label for="name">${busName}</label>
            <form:input id="name" path="name" type="text" class="form-control" placeholder="Nhập ${busName.toLowerCase()}"/>
            <form:errors path="name" cssClass="text text-danger"/>
        </div>

        <div class="col-4">
            <label for="licensePlates">${licensePlates}</label>
            <form:input id="licensePlates" path="licensePlates" type="text" class="form-control" placeholder="Nhập ${licensePlates.toLowerCase()}"/>
            <form:errors path="licensePlates" cssClass="text text-danger"/>
        </div>
    </div>
    <div class="row mt-3">
        <div class="col">
            <label for="capacity">${capacity}</label>
            <form:input id="capacity" path="capacity" type="number" class="form-control" placeholder="Nhập ${capacity.toLowerCase()}"/>
            <form:errors path="capacity" cssClass="text text-danger"/>
        </div>

        <div class="col">
            <label for="manufacturer">${manufacturer}</label>
            <form:input id="manufacturer" path="manufacturer" type="text" class="form-control" placeholder="Nhập ${manufacturer.toLowerCase()}"/>
            <form:errors path="manufacturer" cssClass="text text-danger"/>
        </div>

        <div class="col">
            <label for="busType">${type}</label>
            <form:select id="busType" path="type" class="form-control">
                <option value="Xe ngồi" selected="">Xe ngồi</option>
                <option value="Xe giường">Xe giường</option>
            </form:select>
        </div>
    </div>

    <div class="d-grid gap-2 d-md-flex justify-content-md-end mt-3 mb-3">
        <button class="btn btn-primary me-md-2 fw-bold" type="submit"><i class="fa fa-plus me-2"></i><spring:message code="admin.bus.button.addBus"/></button>
    </div>
</form:form>

<hr>

<div class="text-center mt-3 text-primary text-uppercase">
    <h4><spring:message code="admin.bus.h4.listTitle"/></h4>
</div>

<div class="d-flex justify-content-center">
    <hr class="w-25">
</div>

<form action="<c:url value="/admin/bus"/>" id="myForm">
    <div class="input-group mt-3 mb-3">
        <input type="search" name="kwName" class="form-control" placeholder="Tìm kiếm xe">
        <button type="submit" class="btn btn-primary"><i class="bi bi-search"></i></button>
    </div>
</form>

<table class="table table-hover table-bordered table-striped">
    <thead class="table-light">
        <tr>
            <th class="text-center">#</th>
            <th class="text-center">${busName}</th>
            <th class="text-center">${licensePlates}</th>
            <th class="text-center">${capacity}</th>
            <th class="text-center">${manufacturer}</th>
            <th class="text-center">${type}</th>
            <th class="text-center"><spring:message code="admin.bus.table.action"/></th>
        </tr>
    </thead>

    <tbody id="listBus">
        <c:forEach items="${listBus}" var="lBus">
            <tr class="align-middle">
                <td style="text-align: center;">${lBus[0]}</td>
                <td>${lBus[1]}</td>
                <td style="text-align: center;">${lBus[2]}</td>
                <td style="text-align: center;">${lBus[3]}</td>
                <td>${lBus[4]}</td>
                <td>${lBus[5]}</td>
                <td>
                    <a class="text text-primary h5" data-bs-toggle="modal" data-bs-target="#editBusModal"><i class="bi bi-pencil-square"></i></a>
                    <a class="text text-danger h5 ms-2" data-bs-toggle="modal" data-bs-target="#deleteBusModal"><i class="fa fa-trash"></i></a>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>

<div class="modal fade" id="deleteBusModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Attention</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>

            <div class="modal-body">
                Are you sure to delete this bus  ?
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-primary">Yes</button>
                <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Cancel</button>
            </div>
        </div>
    </div>
</div> 
<div class="modal fade" id="editBusModal">
    <div class="modal-dialog modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Edit bus</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>

            <div class="modal-body">
                <form>
                    <div class="mb-3">
                        <label class="col-form-label">Tên xe:</label>
                        <input class="form-control" type="text" placeholder="Nhập tên xe">
                    </div>

                    <div class="mb-3">
                        <label class="col-form-label">Biển số xe:</label>
                        <input class="form-control" type="text" placeholder="Nhập biển số xe">
                    </div>

                    <div class="mb-3">
                        <label class="col-form-label">Sức chứa:</label>
                        <input class="form-control" type="number" placeholder="Nhập sức chứa">
                    </div>

                    <div class="mb-3">
                        <label class="col-form-label">Hãng sản xuất:</label>
                        <input class="form-control" type="number" placeholder="Nhập hãng sản xuất">
                    </div>

                    <div class="mb-3">
                        <label class="col-form-label">Loại:</label>
                        <select class="form-select" aria-label="Default select example">
                            <option value="Xe ngồi" selected>Xe ngồi</option>
                            <option value="Xe giường">Xe giường</option>
                        </select>
                    </div>
                </form>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-primary">Edit</button>
                <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Cancel</button>
            </div>
        </div>
    </div>
</div>