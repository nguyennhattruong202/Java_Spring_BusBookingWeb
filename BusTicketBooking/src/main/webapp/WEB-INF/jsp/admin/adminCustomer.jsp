<%-- 
    Document   : customer
    Created on : Aug 25, 2022, 1:47:09 PM
    Author     : ACER
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="d-flex justify-content-center w-100 mt-5 mb-4">
    <div class="my-style-card-box my-style-w-98 p-4">
        <div class="border-bottom">
            <h4 class="fw-bold my-style-text-blue">Danh sách khách hàng</h4>
        </div>
        <table class="table table-hover mt-3" id="customerTable">
            <thead>
                <tr>
                    <th onclick="sortTable(0)">#</th>
                    <th onclick="sortTable(1)">Họ và tên lót</th>
                    <th onclick="sortTable(2)">Tên</th>
                    <th onclick="sortTable(3)">Giới tính</th>
                    <th onclick="sortTable(4)">Số điện thoại</th>
                    <th onclick="sortTable(5)">Email</th>
                    <th onclick="sortTable(6)">Thao tác</th>
                </tr>
            </thead>
            <tbody>
                <tr class="align-middle">
                    <td>1</td>
                    <td>Nguyễn Hồng</td>
                    <td>Ngọc</td>
                    <td>Nữ</td>
                    <td>08908794432</td>
                    <td>ngoc1211@gmail.com</td>
                    <td>
                        <a class="text text-primary h5"><i class="fa fa-bars"></i></a>
                        <a class="text text-primary h5 ms-2"><i class="bi bi-pencil-square"></i></a>
                        <a class="text text-danger h5 ms-2"><i class="fa fa-trash"></i></a>
                    </td>
                </tr>
                <tr class="align-middle">
                    <td>2</td>
                    <td>Nguyễn Tân</td>
                    <td>Phúc</td>
                    <td>Nam</td>
                    <td>0935440166</td>
                    <td>phuc0707@gmail.com</td>
                    <td>
                        <a class="text text-primary h5"><i class="fa fa-bars"></i></a>
                        <a class="text text-primary h5 ms-2"><i class="bi bi-pencil-square"></i></a>
                        <a class="text text-danger h5 ms-2"><i class="fa fa-trash"></i></a>
                    </td>
                </tr>
                <tr class="align-middle">
                    <td>3</td>
                    <td>Nguyễn Hoàng</td>
                    <td>Khang</td>
                    <td>Nam</td>
                    <td>0707860066</td>
                    <td>khang2606@gmail.com</td>
                    <td>
                        <a class="text text-primary h5"><i class="fa fa-bars"></i></a>
                        <a class="text text-primary h5 ms-2"><i class="bi bi-pencil-square"></i></a>
                        <a class="text text-danger h5 ms-2"><i class="fa fa-trash"></i></a>
                    </td>
                </tr>
                <tr class="align-middle">
                    <td>4</td>
                    <td>Lê Thiên</td>
                    <td>Ân</td>
                    <td>Nam</td>
                    <td>0907863077</td>
                    <td>an2807@gmail.com</td>
                    <td>
                        <a class="text text-primary h5"><i class="fa fa-bars"></i></a>
                        <a class="text text-primary h5 ms-2"><i class="bi bi-pencil-square"></i></a>
                        <a class="text text-danger h5 ms-2"><i class="fa fa-trash"></i></a>
                    </td>
                </tr>
                <tr class="align-middle">
                    <td>5</td>
                    <td>Phan Ngọc Phương</td>
                    <td>Toàn</td>
                    <td>Nam</td>
                    <td>0387552103</td>
                    <td>toan0404@gmail.com</td>
                    <td>
                        <a class="text text-primary h5"><i class="fa fa-bars"></i></a>
                        <a class="text text-primary h5 ms-2"><i class="bi bi-pencil-square"></i></a>
                        <a class="text text-danger h5 ms-2"><i class="fa fa-trash"></i></a>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</div>

<style>
    th{
        cursor: pointer;
    }
</style>

<script>
    function sortTable(n) {
        var table;
        var rows;
        var switching;
        var i, x, y;
        var shoudSwitch;
        var dir;
        var switchCount = 0;
        table = document.getElementById("customerTable");
        switching = true;
        dir = "asc";
        while (switching) {
            switching = false;
            rows = table.rows;
            for (i = 1; i < (rows.length - 1); i++) {
                shoudSwitch = false;
                x = rows[i].getElementsByTagName("TD")[n];
                y = rows[i + 1].getElementsByTagName("TD")[n];
                if (dir === "asc") {
                    if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
                        shoudSwitch = true;
                        break;
                    }
                } else if (dir === "desc") {
                    if (x.innerHTML.toLowerCase() < y.innerHTML.toLowerCase()) {
                        shoudSwitch = true;
                        break;
                    }
                }
            }
            if (shoudSwitch) {
                rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
                switching = true;
                switchCount++;
            } else {
                if (switchCount === 0 && dir === "asc") {
                    dir = "desc";
                    switching = true;
                }
            }
        }
    }
</script>