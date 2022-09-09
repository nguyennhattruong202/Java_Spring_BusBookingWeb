<%-- 
    Document   : adminInfoCurrentUser
    Created on : Sep 8, 2022, 1:48:07 PM
    Author     : ACER
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="d-flex justify-content-center w-100 mt-4 mb-4">
    <div class="shadow p-3 bg-body rounded w-75 p-4">
        <div class="border-bottom mb-4">
            <h3 class="fw-bold text-primary text-center">Thông tin tài khoản</h3>
        </div>
        <div class="row">
            <div class="col-5 text-center">
                <img src="${pageContext.session.getAttribute("currentUser").image}" alt="currentUserAvatar" width="230" height="230" class="rounded-circle shadow rounded">
                <h3 class="fw-bold mt-4 text-primary">
                    ${pageContext.session.getAttribute("currentUser").lastName}
                    ${pageContext.session.getAttribute("currentUser").firstName}
                </h3>
                <h5>
                    <span class="badge rounded-pill bg-danger">${pageContext.session.getAttribute("currentUser").userRole}</span>
                </h5>
                <h5>
                    <span class="badge rounded-pill bg-info">${pageContext.session.getAttribute("currentUser").gender}</span>
                </h5>
            </div>
            <div class="col-7">
                <div class="row mb-3">
                    <div class="col-3 d-flex align-items-center">
                        <span class="fw-bold">ID:</span>
                    </div>
                    <div class="col-9">
                        <input type="number" class="form-control bg-white" value="${pageContext.session.getAttribute("currentUser").id}" readonly>
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col-3 d-flex align-items-center">
                        <span class="fw-bold">Ngày sinh:</span>
                    </div>
                    <div class="col-9">
                        <input type="date" class="form-control bg-white" value="${pageContext.session.getAttribute("currentUser").dateOfBirth}" readonly>
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col-3 d-flex align-items-center">
                        <span class="fw-bold">CMND/CCCD:</span>
                    </div>
                    <div class="col-9">
                        <input type="text" class="form-control bg-white" value="${pageContext.session.getAttribute("currentUser").identityNum}" readonly>
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col-3 d-flex align-items-center">
                        <span class="fw-bold">Địa chỉ:</span>
                    </div>
                    <div class="col-9">
                        <input type="text" class="form-control bg-white" value="${pageContext.session.getAttribute("currentUser").address}" readonly>
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col-3 d-flex align-items-center">
                        <span class="fw-bold">Số điện thoại:</span>
                    </div>
                    <div class="col-9">
                        <input type="text" class="form-control bg-white" value="${pageContext.session.getAttribute("currentUser").phone}" readonly>
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col-3 d-flex align-items-center">
                        <span class="fw-bold">Email:</span>
                    </div>
                    <div class="col-9">
                        <input type="text" class="form-control bg-white" value="${pageContext.session.getAttribute("currentUser").email}" readonly>
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col-3 d-flex align-items-center">
                        <span class="fw-bold">Username:</span>
                    </div>
                    <div class="col-9">
                        <input type="text" class="form-control bg-white" value="${pageContext.session.getAttribute("currentUser").username}" readonly>
                    </div>
                </div>
                <div class="row">
                    <div class="col-3"></div>
                    <div class="col-9 text-center">
                        <a class="btn btn-outline-primary me-3" role="button" href="<c:url value="/admin/index"/>"><i class="bi bi-arrow-left me-2"></i>Trang chủ</a>
                        <button type="button" class="btn btn-outline-danger" data-bs-toggle="modal" data-bs-target="#modalWarningEdit">Chỉnh sửa thông tin</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="modalWarningEdit" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Lưu ý</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                Liên hệ admin để cập nhật thông tin cá nhân
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-bs-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
