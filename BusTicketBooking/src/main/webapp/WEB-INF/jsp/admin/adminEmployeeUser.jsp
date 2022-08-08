<%-- 
    Document   : adminEmployeeUser
    Created on : Aug 8, 2022, 5:38:16 PM
    Author     : ACER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="text-center mt-3 text-primary text-uppercase">
    <h2>Quản lý nhân sự</h2>
</div>

<div class=" d-flex justify-content-center">
    <hr class="w-25">
</div>

<form:form>
    <div class="row mt-3">
        <div class="col">
            <label>Last name:</label>
            <input type="text" class="form-control" placeholder="Enter last name">
        </div>
        <div class="col">
            <label>First name:</label>
            <input type="text" class="form-control" placeholder="Enter first name">
        </div>
    </div>
    <div class="row mt-3">
        <div class="col">
            <label>Date of birth:</label>
            <input type="date" class="form-control">
        </div>
        <div class="col">
            <label>Sex:</label>
            <select class="form-select" aria-label="Default select example">
                <option value="1" selected>Male</option>
                <option value="2">Female</option>
            </select>
        </div>
    </div>
    <div class="row mt-3">
        <div class="col">
            <label>Address:</label>
            <input type="text" class="form-control" placeholder="Enter address">
        </div>
    </div>
    <div class="row mt-3">
        <div class="col-3">
            <label>Identity number:</label>
            <input type="text" class="form-control" placeholder="Enter identity number">
        </div>
        <div class="col-3">
            <label>Phone number:</label>
            <input type="text" class="form-control" placeholder="Enter phone number">
        </div>
        <div class="col">
            <label>Email:</label>
            <input type="text" class="form-control" placeholder="Enter email">
        </div>
    </div>
    <div class="row mt-3">
        <div class="col">
            <label></label>
            <div class="form-check form-switch">
                <input class="form-check-input" type="checkbox" id="flexSwitchCheckChecked" checked>
                <label class="form-check-label" for="flexSwitchCheckChecked">Active</label>
            </div>
        </div>
        <div class="col">
            <label>Type employee:</label>
            <select class="form-select" aria-label="Default select example">
                <option value="1" selected>Admin</option>
                <option value="2">Staff</option>
                <option value="3">Driver</option>
            </select>
        </div>
    </div>
</form:form>

<table class="table table-hover">
    <tr>
        <th>Last name</th>
        <th>First name</th>
        <th>Date of birth</th>
        <th>Sex</th>
        <th>Address</th>
        <th>Identity number</th>
        <th>Phone number</th>
        <th>Email</th>
        <th>Active</th>
        <th>Type employee</th>
    </tr>
    <c:forEach begin="1" end="10" var="i">
        <tr>
            <td>Last name ${i}</td>
            <td>First name ${i}</td>
            <td>Date of birth ${i}</td>
            <td>Sex ${i}</td>
            <td>Address ${i}</td>
            <td>Identity number ${i}</td>
            <td>Phone number ${i}</td>
            <td>Email ${i}</td>
            <td>Active ${i}</td>
            <td>Type employee ${i}</td>
        </tr>
    </c:forEach>
</table>
