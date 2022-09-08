<%-- 
    Document   : adminChangePassword
    Created on : Sep 8, 2022, 6:05:05 PM
    Author     : ACER
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<c:if test="${checkOldPass == false}">
    <div class="alert alert-danger" role="alert">
        Mật khẩu cũ không đúng
    </div>
</c:if>
<div class="d-flex justify-content-center w-100 mt-4 mb-4">
    <div class="shadow p-3 bg-body rounded w-50 p-4">
        <div class="border-bottom mb-4">
            <h3 class="fw-bold text-primary text-center">Đổi mật khẩu</h3>
        </div>
        <div class="row mb-3">
            <div class="col-4 d-flex align-items-center">
                <span class="fw-bold">Nhập mật khẩu cũ:</span>
            </div>
            <div class="col-8">
                <input type="password" class="form-control" name="oldPassword">
            </div>
        </div>
        <div class="row mb-3">
            <div class="col-4 d-flex align-items-center">
                <span class="fw-bold">Nhập mật khẩu mới:</span>
            </div>
            <div class="col-8">
                <input type="password" class="form-control" name="newPassword">
            </div>
        </div>
        <div class="row mb-3">
            <div class="col-4 d-flex align-items-center">
                <span class="fw-bold">Nhập lại mật khẩu mới:</span>
            </div>
            <div class="col-8">
                <input type="password" class="form-control" name="confirmNewPass">
            </div>
        </div>
        <div class="row">
            <div class="col-4"></div>
            <div class="col-8 text-end">
                <a class="btn btn-outline-primary me-3" role="button" href="<c:url value="/admin/index"/>"><i class="bi bi-arrow-left me-2"></i>Trang chủ</a>
                <button type="submit" class="btn btn-outline-danger">Đổi mật khẩu</button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="modalConfirmChangePass" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Lưu ý</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                Bạn có chắc muốn thay đổi mật khẩu
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-bs-dismiss="modal">Đóng</button>
                <button type="button" class="btn btn-danger">Đổi mật khẩu</button>
            </div>
        </div>
    </div>
</div>