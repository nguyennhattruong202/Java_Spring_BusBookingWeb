<%-- 
    Document   : customerDeletedPage
    Created on : Sep 9, 2022, 11:45:04 AM
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
            <h4 class="fw-bold text-primary"><fmt:message key="admin.content.customerDeletedList"/></h4>
        </div>
        <c:if test="${customerDeletedList.size() != 0}">
            <table class="table table-hover mt-3 table-bordered" id="customerDeletedTable">
                <thead class="bg-light">
                    <tr>
                        <th class="text-center"><fmt:message key="admin.picture"/></th>
                        <th onclick="sortTable(1, 'customerDeletedTable')" class="text-center"><fmt:message key="admin.lastname"/></th>
                        <th onclick="sortTable(2, 'customerDeletedTable')" class="text-center"><fmt:message key="admin.firstname"/></th>
                        <th onclick="sortTable(3, 'customerDeletedTable')" class="text-center"><fmt:message key="admin.gender"/></th>
                        <th onclick="sortTable(4, 'customerDeletedTable')" class="text-center"><fmt:message key="admin.DOB"/></th>
                        <th onclick="sortTable(5, 'customerDeletedTable')" class="text-center"><fmt:message key="admin.phone"/></th>
                        <th onclick="sortTable(6, 'customerDeletedTable')" class="text-center"><fmt:message key="admin.email"/></th>
                        <th onclick="sortTable(7, 'customerDeletedTable')" class="text-center"><fmt:message key="admin.address"/></th>
                        <th class="text-center"><fmt:message key="admin.action"/></th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${customerDeletedList}" var="customerDeleted">
                        <tr class="align-middle">
                            <td class="text-center">
                                <img src="${customerDeleted.image}" alt="customerDeleted${customerDeleted.id}" class="rounded-circle shadow rounded" style="width: 50px; height: 50px;">
                            </td>
                            <td>${customerDeleted.lastName}</td>
                            <td>${customerDeleted.firstName}</td>
                            <td>${customerDeleted.gender}</td>
                            <td>${customerDeleted.dateOfBirth}</td>
                            <td>${customerDeleted.phone}</td>
                            <td>${customerDeleted.email}</td>
                            <td>${customerDeleted.address}</td>
                            <td class="text-center">
                                <input type="submit" class="btn btn-outline-danger" value="<fmt:message key="content.customer.restore"/>">
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </c:if>
        <c:if test="${customerDeletedList.size() == 0}">
            <div class="alert alert-danger mt-4" role="alert"><fmt:message key="content.customer.listEmpty"/></div>
        </c:if>
        <nav>
            <ul class="pagination justify-content-end">
                <c:forEach begin="1" end="${Math.ceil(customerDeletedCount/pageSize)}" var="i">
                    <c:url value="/admin/customer/deleted" var="c">
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
