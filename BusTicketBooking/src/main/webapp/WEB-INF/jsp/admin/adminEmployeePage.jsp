<%-- 
   Document   : adminEmployeeUser
   Created on : Aug 8, 2022, 5:38:16 PM
   Author     : ACER
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!-- Begin message area -->
<spring:message code="admin.content.pageSize" var="pageSize"/>
<!-- End message area -->

<c:if test="${listEmployee.size() == 0}">
    <div class="modal fade" id="modalEmpty" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="modalEmptyLabel">Lưu ý</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">Danh sách nhân sự trống</div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
</c:if>

<div class="d-flex justify-content-center w-100 mt-3 mb-3">
    <div class="my-style-card-box w-100 p-4">
        <div class="border-bottom">
            <h4 class="fw-bold my-style-text-blue">Danh sách nhân sự</h4>
        </div>
        <div class="d-grid gap-2 d-flex justify-content-end mt-3">
            <a class="btn btn-primary fw-bold" href="<c:url value="/admin/employee/add"/>" role="button"><i class="bi bi-person-plus me-2" style="font-size: 20px;"></i>Thêm nhân sự mới</a>
        </div>
        <table class="table table-hover mt-3 table-bordered" id="employeeTable">
            <thead class="bg-light">
                <tr>
                    <th class="text-center">Hình ảnh</th>
                    <th onclick="sortTable(1, 'employeeTable')" class="text-center">Họ và tên lót</th>
                    <th onclick="sortTable(2, 'employeeTable')" class="text-center">Tên</th>
                    <th onclick="sortTable(3, 'employeeTable')" class="text-center">Giới tính</th>
                    <th onclick="sortTable(4, 'employeeTable')" class="text-center">Ngày sinh</th>
                    <th onclick="sortTable(5, 'employeeTable')" class="text-center">SĐT</th>
                    <th onclick="sortTable(6, 'employeeTable')" class="text-center">Email</th>
                    <th onclick="sortTable(7, 'employeeTable')" class="text-center">User role</th>
                    <th class="text-center">Thao tác</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listEmployee}" var="employee">
                    <c:url value="/api/customer/${employee.id}" var="endpoint"/>
                    <tr class="align-middle">
                        <td class="text-center">
                            <img src="${employee.image}" alt="employee${employee.id}" class="rounded-circle shadow rounded" style="width: 50px; height: 50px;">
                        </td>
                        <td>${employee.lastName}</td>
                        <td>${employee.firstName}</td>
                        <td>${employee.gender}</td>
                        <td>${employee.dateOfBirth}</td>
                        <td>${employee.phone}</td>
                        <td>${employee.email}</td>
                        <td>${employee.userRole}</td>
                        <td class="text-center">
                            <a class="text text-primary my-style-action-size" data-bs-toggle="modal" data-bs-target="#getEmployeeInfo${employee.id}"><i class="fa fa-bars"></i></a>
                            <a class="text text-primary ms-2 my-style-action-size" data-bs-toggle="modal" data-bs-target="#editEmployeeInfo${employee.id}"><i class="bi bi-pencil-square"></i></a>
                            <a class="text text-danger ms-2 my-style-action-size" data-bs-toggle="modal" data-bs-target="#deleteEmployee${employee.id}"><i class="fa fa-trash"></i></a>
                        </td>
                    </tr>
                <div class="modal fade" id="editEmployeeInfo${employee.id}">
                    <div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title">Chỉnh sửa thông tin nhân sự</h4>
                                <button typr="button" class="btn-close" data-bs-dismiss="modal"></button>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-4 text-center">
                                        <img style="width: 200px; height: 200px;" class="rounded-circle shadow rounded" src="${employee.image}" alt="employeeImage${employee.id}">
                                    </div>
                                    <div class="col-8">
                                        <div class="row mt-2">
                                            <div class="col-3">
                                                <span class="fw-bold h-100 d-flex align-items-center">ID:</span>
                                            </div>
                                            <div class="col-9">
                                                <input type="number" class="form-control bg-white" value="${employee.id}" readonly>
                                            </div>
                                        </div>
                                        <div class="row mt-2">
                                            <div class="col-3">
                                                <span class="fw-bold h-100 d-flex align-items-center">Họ và tên lót:</span>
                                            </div>
                                            <div class="col-9">
                                                <input type="text" class="form-control" value="${employee.lastName}">
                                            </div>
                                        </div>
                                        <div class="row mt-2">
                                            <div class="col-3">
                                                <span class="fw-bold h-100 d-flex align-items-center">Tên:</span>
                                            </div>
                                            <div class="col-9">
                                                <input type="text" class="form-control" value="${employee.firstName}">
                                            </div>
                                        </div>
                                        <div class="row mt-2">
                                            <div class="col-3">
                                                <span class="fw-bold h-100 d-flex align-items-center">Giới tính:</span>
                                            </div>
                                            <div class="col-9">
                                                <select class="form-select w-100">
                                                    <option value="Nam" selected>Nam</option>
                                                    <option value="Nữ">Nữ</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="row mt-2">
                                            <div class="col-3">
                                                <span class="fw-bold h-100 d-flex align-items-center">Ngày sinh:</span>
                                            </div>
                                            <div class="col-9">
                                                <input type="date" class="form-control" value="${employee.dateOfBirth}">
                                            </div>
                                        </div>
                                        <div class="row mt-2">
                                            <div class="col-3">
                                                <span class="fw-bold h-100 d-flex align-items-center">CMND/CCCD:</span>
                                            </div>
                                            <div class="col-9">
                                                <input type="text" class="form-control" value="${employee.identityNum}">
                                            </div>
                                        </div>
                                        <div class="row mt-2">
                                            <div class="col-3">
                                                <span class="fw-bold h-100 d-flex align-items-center">Địa chỉ:</span>
                                            </div>
                                            <div class="col-9">
                                                <input type="text" class="form-control" value="${employee.address}">
                                            </div>
                                        </div>
                                        <div class="row mt-2">
                                            <div class="col-3">
                                                <span class="fw-bold h-100 d-flex align-items-center">Số điện thoại:</span>
                                            </div>
                                            <div class="col-9">
                                                <input type="text" class="form-control" value="${employee.phone}">
                                            </div>
                                        </div>
                                        <div class="row mt-2">
                                            <div class="col-3">
                                                <span class="fw-bold h-100 d-flex align-items-center">Email:</span>
                                            </div>
                                            <div class="col-9">
                                                <input type="email" class="form-control" value="${employee.email}">
                                            </div>
                                        </div>
                                        <div class="row mt-2">
                                            <div class="col-3">
                                                <span class="fw-bold h-100 d-flex align-items-center">Username:</span>
                                            </div>
                                            <div class="col-9">
                                                <input type="text" class="form-control" value="${employee.username}">
                                            </div>
                                        </div>
                                        <div class="row mt-2">
                                            <div class="col-3">
                                                <span class="fw-bold h-100 d-flex align-items-center">User role:</span>
                                            </div>
                                            <div class="col-9">
                                                <input type="text" class="form-control" value="${employee.userRole}">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#confirmEditEmployeeInfo${employee.id}" data-bs-dismiss="modal">Edit</button>
                                <button type="button" class="btn btn-primary" data-bs-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal fade" id="getEmployeeInfo${employee.id}">
                    <div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title">Thông tin nhân sự</h4>
                                <button typr="button" class="btn-close" data-bs-dismiss="modal"></button>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-4 text-center">
                                        <img style="width: 200px; height: 200px;" class="rounded-circle shadow rounded" src="${employee.image}" alt="employeeImage${employee.id}">
                                    </div>
                                    <div class="col-8">
                                        <div class="row mt-2">
                                            <div class="col-3">
                                                <span class="fw-bold h-100 d-flex align-items-center">ID:</span>
                                            </div>
                                            <div class="col-9">
                                                <input type="number" class="form-control bg-white" value="${employee.id}" readonly>
                                            </div>
                                        </div>
                                        <div class="row mt-2">
                                            <div class="col-3">
                                                <span class="fw-bold h-100 d-flex align-items-center">Họ và tên lót:</span>
                                            </div>
                                            <div class="col-9">
                                                <input type="text" class="form-control bg-white" value="${employee.lastName}" readonly>
                                            </div>
                                        </div>
                                        <div class="row mt-2">
                                            <div class="col-3">
                                                <span class="fw-bold h-100 d-flex align-items-center">Tên:</span>
                                            </div>
                                            <div class="col-9">
                                                <input type="text" class="form-control bg-white" value="${employee.firstName}" readonly>
                                            </div>
                                        </div>
                                        <div class="row mt-2">
                                            <div class="col-3">
                                                <span class="fw-bold h-100 d-flex align-items-center">Giới tính:</span>
                                            </div>
                                            <div class="col-9">
                                                <input type="text" class="form-control bg-white" value="${employee.gender}" readonly>
                                            </div>
                                        </div>
                                        <div class="row mt-2">
                                            <div class="col-3">
                                                <span class="fw-bold h-100 d-flex align-items-center">Ngày sinh:</span>
                                            </div>
                                            <div class="col-9">
                                                <input type="date" class="form-control bg-white" value="${employee.dateOfBirth}" readonly>
                                            </div>
                                        </div>
                                        <div class="row mt-2">
                                            <div class="col-3">
                                                <span class="fw-bold h-100 d-flex align-items-center">CMND/CCCD:</span>
                                            </div>
                                            <div class="col-9">
                                                <input type="text" class="form-control bg-white" value="${employee.identityNum}" readonly>
                                            </div>
                                        </div>
                                        <div class="row mt-2">
                                            <div class="col-3">
                                                <span class="fw-bold h-100 d-flex align-items-center">Địa chỉ:</span>
                                            </div>
                                            <div class="col-9">
                                                <input type="text" class="form-control bg-white" value="${employee.address}" readonly>
                                            </div>
                                        </div>
                                        <div class="row mt-2">
                                            <div class="col-3">
                                                <span class="fw-bold h-100 d-flex align-items-center">Số điện thoại:</span>
                                            </div>
                                            <div class="col-9">
                                                <input type="text" class="form-control bg-white" value="${employee.phone}" readonly>
                                            </div>
                                        </div>
                                        <div class="row mt-2">
                                            <div class="col-3">
                                                <span class="fw-bold h-100 d-flex align-items-center">Email:</span>
                                            </div>
                                            <div class="col-9">
                                                <input type="email" class="form-control bg-white" value="${employee.email}" readonly>
                                            </div>
                                        </div>
                                        <div class="row mt-2">
                                            <div class="col-3">
                                                <span class="fw-bold h-100 d-flex align-items-center">Username:</span>
                                            </div>
                                            <div class="col-9">
                                                <input type="text" class="form-control bg-white" value="${employee.username}" readonly>
                                            </div>
                                        </div>
                                        <div class="row mt-2">
                                            <div class="col-3">
                                                <span class="fw-bold h-100 d-flex align-items-center">User role:</span>
                                            </div>
                                            <div class="col-9">
                                                <input type="text" class="form-control bg-white" value="${employee.userRole}" readonly>
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
                <div class="modal fade" id="confirmEditEmployeeInfo${employee.id}">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title">Lưu ý</h4>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                            </div>
                            <div class="modal-body">
                                Are you sure to edit ${employee.lastName} ${employee.firstName}?
                            </div>
                            <div class="modal-footer">
                                <button class="btn btn-primary">Yes</button>
                                <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#editEmployeeInfo${employee.id}" data-bs-dismiss="modal">Back</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal fade" id="deleteEmployee${employee.id}">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title">Lưu ý</h4>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                            </div>
                            <div class="modal-body">
                                Are you sure to delete ${employee.lastName} ${employee.firstName}?
                            </div>
                            <div class="modal-footer">
                                <button class="btn btn-primary">Yes</button>
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
                <c:forEach begin="1" end="${Math.ceil(employeeCounter/pageSize)}" var="i">
                    <c:url value="/admin/employee" var="c">
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

<style>
    th{
        cursor: pointer;
    }
    .my-style-action-size{
        font-size: 20px;
        cursor: pointer;
    }
</style>
