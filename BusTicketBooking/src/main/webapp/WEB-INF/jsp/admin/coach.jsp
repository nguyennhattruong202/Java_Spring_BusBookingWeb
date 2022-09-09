<%-- 
    Document   : adminBus
    Created on : Aug 11, 2022, 5:03:31 PM
    Author     : ACER
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Begin message area -->
<spring:message code="admin.content.pageSize" var="pageSize"/>
<!-- End message area -->

<div class="d-flex justify-content-center w-100 mt-4 mb-4">
    <div class="shadow p-3 bg-body rounded w-100 p-4">
        <div class="border-bottom">
            <h4 class="fw-bold text-primary">Danh sách xe khách</h4>
        </div>
        <c:if test="${listCoach.size() != 0}">
            <table class="table table-hover mt-3 table-bordered" id="coachTable">
                <thead class="bg-light">
                    <tr>
                        <th onclick="sortTable(0, 'coachTable')" class="text-center">ID</th>
                        <th onclick="sortTable(1, 'coachTable')" class="text-center">Tên xe</th>
                        <th onclick="sortTable(2, 'coachTable')" class="text-center">Biển số xe</th>
                        <th onclick="sortTable(3, 'coachTable')" class="text-center">Sức chứa</th>
                        <th onclick="sortTable(4, 'coachTable')" class="text-center">Hãng sản xuất</th>
                        <th onclick="sortTable(5, 'coachTable')" class="text-center">Loại</th>
                        <th class="text-center">Thao tác</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${listCoach}" var="listCoach">
                        <tr class="align-middle">
                            <td>${listCoach.id}</td>
                            <td>${listCoach.name}</td>
                            <td>${listCoach.licensePlates}</td>
                            <td>${listCoach.capacity}</td>
                            <td>${listCoach.manufacturer}</td>
                            <td>${listCoach.type}</td>
                            <td class="text-center">
                                <a class="btn btn-outline-primary" data-bs-toggle="modal" data-bs-target="#"><i class="bi bi-pencil-square"></i></a>
                                <a class="btn btn-outline-danger" data-bs-toggle="modal" data-bs-target="#deleteCoach${listCoach.id}"><i class="fa fa-trash"></i></a>
                            </td>
                        </tr>
                    <div class="modal fade" id="deleteCoach${listCoach.id}">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h4 class="modal-title">Lưu ý</h4>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                </div>
                                <div class="modal-body">
                                    Are you sure to delete ${listCoach.name}?
                                </div>
                                <div class="modal-footer">
                                    <button class="btn btn-primary">Xóa</button>
                                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Hủy</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
                </tbody>
            </table>
        </c:if>
        <c:if test="${listCoach.size() == 0}">
            <div class="alert alert-danger mt-4" role="alert">Danh sách trống</div>
        </c:if>
        <nav>
            <ul class="pagination justify-content-end">
                <c:forEach begin="1" end="${Math.ceil(coachCounter/pageSize)}" var="i">
                    <c:url value="/admin/coach" var="c">
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
