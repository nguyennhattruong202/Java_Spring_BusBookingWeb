<%-- 
    Document   : customer
    Created on : Aug 25, 2022, 1:47:09 PM
    Author     : ACER
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<script src="<c:url value="/js/admin/customer.js" />"></script>

<!-- Begin message area -->
<spring:message code="admin.content.pageSize" var="pageSize"/>
<!-- End message area -->

<c:if test="${listCustomer.size() == 0}">
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Lưu ý</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">Danh sách khách hàng trống</div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
</c:if>

<div class="d-flex justify-content-center w-100 mt-3 mb-3">
    <div class="shadow p-3 bg-body rounded w-100 p-4">
        <div class="border-bottom">
            <h4 class="fw-bold text-primary">Danh sách khách hàng</h4>
        </div>
        <table class="table table-hover mt-3 table-bordered" id="customerTable">
            <thead class="bg-light">
                <tr>
                    <th class="text-center my-style-th-cursor">Hình ảnh</th>
                    <th onclick="sortTable(1, 'customerTable')" class="text-center my-style-th-cursor">Họ và tên lót</th>
                    <th onclick="sortTable(2, 'customerTable')" class="text-center my-style-th-cursor">Tên</th>
                    <th onclick="sortTable(3, 'customerTable')" class="text-center my-style-th-cursor">Giới tính</th>
                    <th onclick="sortTable(4, 'customerTable')" class="text-center my-style-th-cursor">Ngày sinh</th>
                    <th onclick="sortTable(5, 'customerTable')" class="text-center my-style-th-cursor">SĐT</th>
                    <th onclick="sortTable(6, 'customerTable')" class="text-center my-style-th-cursor">Email</th>
                    <th onclick="sortTable(7, 'customerTable')" class="text-center my-style-th-cursor">Địa chỉ</th>
                    <th class="text-center my-style-th-cursor">Thao tác</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listCustomer}" var="customer">
                    <c:url value="/api/customer/${customer.id}" var="endpoint"/>
                    <tr class="align-middle">
                        <td class="text-center">
                            <img src="${customer.image}" alt="customer${customer.id}" class="rounded-circle shadow rounded" style="width: 50px; height: 50px;">
                        </td>
                        <td>${customer.lastName}</td>
                        <td>${customer.firstName}</td>
                        <td>${customer.gender}</td>
                        <td>${customer.dateOfBirth}</td>
                        <td>${customer.phone}</td>
                        <td>${customer.email}</td>
                        <td>${customer.address}</td>
                        <td class="text-center">
                            <a class="text text-primary my-style-action-size" data-bs-toggle="modal" data-bs-target="#customerDetail${customer.id}"><i class="fa fa-bars"></i></a>
                            <a class="text text-danger ms-2 my-style-action-size" data-bs-toggle="modal" data-bs-target="#deleteCustomer${customer.id}"><i class="fa fa-trash"></i></a>
                        </td>
                    </tr>
                <div class="modal fade" id="customerDetail${customer.id}">
                    <div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title">Thông tin khách hàng</h4>
                                <button typr="button" class="btn-close" data-bs-dismiss="modal"></button>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-4 text-center">
                                        <img style="width: 200px; height: 200px;" class="rounded-circle shadow rounded" src="${customer.image}" alt="customerImage${customer.id}">
                                    </div>
                                    <div class="col-8">
                                        <div class="row mt-2">
                                            <div class="col-3">
                                                <span class="fw-bold h-100 d-flex align-items-center">ID:</span>
                                            </div>
                                            <div class="col-9">
                                                <input type="number" class="form-control bg-white" value="${customer.id}" readonly>
                                            </div>
                                        </div>
                                        <div class="row mt-2">
                                            <div class="col-3">
                                                <span class="fw-bold h-100 d-flex align-items-center">Họ và tên lót:</span>
                                            </div>
                                            <div class="col-9">
                                                <input type="text" class="form-control bg-white" value="${customer.lastName}" readonly>
                                            </div>
                                        </div>
                                        <div class="row mt-2">
                                            <div class="col-3">
                                                <span class="fw-bold h-100 d-flex align-items-center">Tên:</span>
                                            </div>
                                            <div class="col-9">
                                                <input type="text" class="form-control bg-white" value="${customer.firstName}" readonly>
                                            </div>
                                        </div>
                                        <div class="row mt-2">
                                            <div class="col-3">
                                                <span class="fw-bold h-100 d-flex align-items-center">Giới tính:</span>
                                            </div>
                                            <div class="col-9">
                                                <input type="text" class="form-control bg-white" value="${customer.gender}" readonly>
                                            </div>
                                        </div>
                                        <div class="row mt-2">
                                            <div class="col-3">
                                                <span class="fw-bold h-100 d-flex align-items-center">Ngày sinh:</span>
                                            </div>
                                            <div class="col-9">
                                                <input type="date" class="form-control bg-white" value="${customer.dateOfBirth}" readonly>
                                            </div>
                                        </div>
                                        <div class="row mt-2">
                                            <div class="col-3">
                                                <span class="fw-bold h-100 d-flex align-items-center">CMND/CCCD:</span>
                                            </div>
                                            <div class="col-9">
                                                <input type="text" class="form-control bg-white" value="${customer.identityNum}" readonly>
                                            </div>
                                        </div>
                                        <div class="row mt-2">
                                            <div class="col-3">
                                                <span class="fw-bold h-100 d-flex align-items-center">Địa chỉ:</span>
                                            </div>
                                            <div class="col-9">
                                                <input type="text" class="form-control bg-white" value="${customer.address}" readonly>
                                            </div>
                                        </div>
                                        <div class="row mt-2">
                                            <div class="col-3">
                                                <span class="fw-bold h-100 d-flex align-items-center">Số điện thoại:</span>
                                            </div>
                                            <div class="col-9">
                                                <input type="text" class="form-control bg-white" value="${customer.phone}" readonly>
                                            </div>
                                        </div>
                                        <div class="row mt-2">
                                            <div class="col-3">
                                                <span class="fw-bold h-100 d-flex align-items-center">Email:</span>
                                            </div>
                                            <div class="col-9">
                                                <input type="email" class="form-control bg-white" value="${customer.email}" readonly>
                                            </div>
                                        </div>
                                        <div class="row mt-2">
                                            <div class="col-3">
                                                <span class="fw-bold h-100 d-flex align-items-center">Username:</span>
                                            </div>
                                            <div class="col-9">
                                                <input type="text" class="form-control bg-white" value="${customer.username}" readonly>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-primary" data-bs-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal fade" id="confirmEditCustomer${customer.id}">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title">Lưu ý</h4>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                            </div>
                            <div class="modal-body">
                                Are you sure to edit ${customer.lastName} ${customer.firstName}?
                            </div>
                            <div class="modal-footer">
                                <button class="btn btn-primary">Yes</button>
                                <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#customerEdit${customer.id}" data-bs-dismiss="modal">Back</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal fade" id="deleteCustomer${customer.id}">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title">Lưu ý</h4>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                            </div>
                            <div class="modal-body">
                                Are you sure to delete ${customer.lastName} ${customer.firstName}?
                            </div>
                            <div class="modal-footer">
                                <button onclick="deleteCustomer('${endpoint}', ${customer.id})" class="btn btn-primary">Yes</button>
                                <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Cancel</button>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
            </tbody>
        </table>
        <nav>
            <ul class="pagination justify-content-end">
                <c:forEach begin="1" end="${Math.ceil(customerCounter/pageSize)}" var="i">
                    <c:url value="/admin/customer" var="c">
                        <c:param value="${i}" name="page"/>
                    </c:url>
                    <li class="page-item">
                        <a class="page-link" href="${c}">${i}</a>
                    </li>
                </c:forEach>
            </ul>
        </nav>
    </div>
</div>