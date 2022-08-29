<%-- 
    Document   : adminBusTrip
    Created on : Aug 10, 2022, 4:38:14 PM
    Author     : ACER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="d-flex justify-content-center w-100 mb-3 mt-3">
    <div class="my-style-card-box my-style-w-98 p-3">
        <div class="h5 my-style-pd-20 mb-0">Bus trip list</div>
        <table class="table table-hover">
            <thead>
            <th>#</th>
            <th>Departure</th>
            <th>Destination</th>
            <th>Distance</th>
            <th>License plates</th>
            <th>Driver</th>
            <th>Phone</th>
            <th>Action</th>
            </thead>
            <tbody>
                <c:forEach begin="1" end="20" var="i">
                    <tr class="align-middle">
                        <td>${i}</td>
                        <td>Departure ${i}</td>
                        <td>Destination ${i}</td>
                        <td>Distance ${i}</td>
                        <td>License plates ${i}</td>
                        <td>Driver ${i}</td>
                        <td>Phone ${i}</td>
                        <td>
                            <a class="text text-primary h5"><i class="bi bi-pencil-square"></i></a>
                            <a class="text text-danger h5 ms-2"><i class="fa fa-trash"></i></a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>


<style>
    .my-style-card-box{
        background-color: white;
        border-radius: 10px;
        box-shadow: 0 0 30px rgba(0, 0, 0, .08);
    }
    .my-style-pd-20{
        padding: 20px;
    }
    .my-style-w-98{
        width: 98%;
    }
</style>
