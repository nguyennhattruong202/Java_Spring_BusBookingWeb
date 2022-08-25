<%-- 
    Document   : adminTypeEmployee
    Created on : Aug 13, 2022, 3:13:17 PM
    Author     : ACER
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix = "format" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
                    <div class="input-group">
                        <span class="input-group-text my-style-input-radius" id="basic-addon1">VND</span>
                        <input type="text" class="form-control my-style-element-height my-style-input-radius" aria-label="SalaryLevel" aria-describedby="basic-addon1">
                    </div>
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

        <div class="d-flex my-style-element-height">
            <div class="w-25">
                <select id="selectedSearch" class="form-select h-100 my-style-input-radius" aria-label="Default select example" onchange="inputSearchSelected()">
                    <option value="id">Search by id</option>
                    <option value="name">Search by type name</option>
                    <option value="salaryLevel">Search by salary level</option>
                </select>
            </div>

            <div class="w-75 ms-2">
                <form id="formSearchTypeEmployee" action="<c:url value="/admin/typeemployee"/>">
                    <div class="input-group my-style-element-height">
                        <input name="id" type="search" class="form-control my-style-input-radius">
                        <button class="btn btn-primary my-style-input-radius" type="submit"><i class="bi bi-search"></i></button>
                    </div>
                </form>
            </div>
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

            <tbody>
                <c:forEach items="${employees}" var="e">
                    <tr class="align-middle">
                        <td>${e.id}</td>
                        <td>${e.name}</td>
                        <td><format:formatNumber type="number" maxFractionDigits="3" value="${e.salaryLevel}"/></td>
                        <td>
                            <a class="text text-primary h5" data-bs-toggle="modal" data-bs-target="#typeEmployeeDetail${e.id}"><i class="fa fa-bars"></i></a>
                            <a class="text text-primary h5 ms-2"><i class="bi bi-pencil-square"></i></a>
                            <a class="text text-danger h5 ms-2" data-bs-toggle="modal" data-bs-target="#deleteTypeEmployeeModal${e.id}"><i class="fa fa-trash"></i></a>
                        </td>
                        <div class="modal fade" id="deleteTypeEmployeeModal${e.id}">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h4 class="modal-title">Attention</h4>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                    </div>
                                    <div class="modal-body">
                                        Are you sure to delete ${e.name}?
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-primary">Yes</button>
                                        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Cancel</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal fade" id="typeEmployeeDetail${e.id}">
                            <div class="modal-dialog modal-dialog-centered">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h4 class="modal-title">Type Employee Detail</h4>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                    </div>
                                    <div class="modal-body">
                                        <div class="row mb-2">
                                            <div class="col-3 fw-bold">ID:</div>
                                            <div class="col-9">${e.id}</div>
                                        </div>
                                        <div class="row mb-2">
                                            <div class="col-3 fw-bold">Type name:</div>
                                            <div class="col-9">${e.name}</div>
                                        </div>
                                        <div class="row">
                                            <div class="col-3 fw-bold">Salary level:</div>
                                            <div class="col-9"><format:formatNumber type="number" maxFractionDigits="3" value="${e.salaryLevel}"/></div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-primary" data-bs-dismiss="modal">Close</button>
                                    </div>
                                </div>
                            </div>                    
                        </div>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>