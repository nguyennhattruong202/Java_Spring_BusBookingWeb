<%-- 
    Document   : coachDeleted
    Created on : Sep 10, 2022, 5:14:30 PM
    Author     : ACER
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Begin message area -->
<spring:message code="admin.content.pageSize" var="pageSize"/>
<!-- End message area -->

<div class="d-flex justify-content-center w-100 mt-4 mb-4">
    <div class="shadow p-3 bg-body rounded w-100 p-4">
        <div class="border-bottom">
            <h4 class="fw-bold text-primary"><fmt:message key="admin.content.coachListDeleted"/></h4>
        </div>
        <c:if test="${listCoach.size() != 0}">
            <table class="table table-hover mt-3 table-bordered" id="coachDeletedTable">
                <thead class="bg-light">
                    <tr>
                        <th onclick="sortTable(0, 'coachDeletedTable')" class="text-center my-style-th-cursor">ID</th>
                        <th onclick="sortTable(1, 'coachDeletedTable')" class="text-center my-style-th-cursor"><fmt:message key="admin.coach.name"/></th>
                        <th onclick="sortTable(2, 'coachDeletedTable')" class="text-center my-style-th-cursor"><fmt:message key="admin.coach.licensePlates"/></th>
                        <th onclick="sortTable(3, 'coachDeletedTable')" class="text-center my-style-th-cursor"><fmt:message key="admin.coach.capacity"/></th>
                        <th onclick="sortTable(4, 'coachDeletedTable')" class="text-center my-style-th-cursor"><fmt:message key="admin.coach.manufacturer"/></th>
                        <th onclick="sortTable(5, 'coachDeletedTable')" class="text-center my-style-th-cursor"><fmt:message key="admin.coach.type"/></th>
                        <th class="text-center my-style-th-cursor"><fmt:message key="admin.action"/></th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${coachDeletedList}" var="listDeletedCoach">
                        <tr class="align-middle">
                            <td>${listDeletedCoach.id}</td>
                            <td>${listDeletedCoach.name}</td>
                            <td>${listDeletedCoach.licensePlates}</td>
                            <td>${listDeletedCoach.capacity}</td>
                            <td>${listDeletedCoach.manufacturer}</td>
                            <td>${listDeletedCoach.type}</td>
                            <td class="text-center">
                                <a class="btn btn-outline-danger" data-bs-toggle="modal" data-bs-target="#deleteCoach${listDeletedCoach.id}"><fmt:message key="content.customer.restore"/></a>
                            </td>
                        </tr>
                    <div class="modal fade" id="deleteCoach${listDeletedCoach.id}">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h4 class="modal-title"><fmt:message key="content.attention"/></h4>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                </div>
                                <div class="modal-body">
                                    Are you sure to restore ${listDeletedCoach.name}?
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
        </c:if>
        <c:if test="${coachDeletedList.size() == 0}">
            <div class="alert alert-danger mt-4" role="alert"><fmt:message key="content.customer.listEmpty"/></div>
        </c:if>
        <nav>
            <ul class="pagination justify-content-end">
                <c:forEach begin="1" end="${Math.ceil(coachDeletedCount/pageSize)}" var="i">
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
