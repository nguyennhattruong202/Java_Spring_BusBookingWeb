<%-- 
    Document   : trip
    Created on : Sep 2, 2022, 8:41:37 PM
    Author     : KIMNAM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Google font -->
<link href="https://fonts.googleapis.com/css?family=Lato:400,700" rel="stylesheet">

<!-- Bootstrap -->
<%--<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css"/>"/>--%>
<!--<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">-->

<!-- Custom stlylesheet -->
<link rel="stylesheet" href="<c:url value="/resources/css/style_trip.css"/>"/>

<div id="booking" class="container py-5 px-5 ">
    <div class="container ">
        <div class="row">
            <div class="col-md-7 col-lg-6">
                <div class="booking-form px-5 py-5">
                    <form>
                        <div class="form-group" style="font-size: 15px;">
                            <div class="form-checkbox row">
                                <div class="col-6">
                                    <label for="roundtrip">
                                        <input type="radio" id="roundtrip" name="flight-type" checked>
                                        <span></span>Xe giuong
                                    </label>
                                </div>
                                <div class="col-6">
                                    <label for="one-way">
                                        <input type="radio" id="one-way" name="flight-type">
                                        <span></span>Xe ngoi
                                    </label>
                                </div>

                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <span class="form-label">Diem di</span>
                                    <input class="form-control" type="text" placeholder="Diem di">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <span class="form-label">Diem den</span>
                                    <input class="form-control" type="text" placeholder="Diem den">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <span class="form-label">Ngay di</span>
                                    <input class="form-control" type="date" required>
                                </div>
                            </div>
                        </div>
                        <div class="form-btn">
                            <button class="submit-btn">TIM CHUYEN</button>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-md-5 col-lg-6 m-auto">
                <div class="booking-cta text-center">
                    <h1 class="">Truong Nam Dai ly ve xe</h1>
                    <p>Kinh doanh ve xe khach Bac - Nam chat luong 5 sao. Nang cao chat luong dich vu</p>
                </div>
            </div>

        </div>
        <div class="my-5 p-5" id="table-tour">
            <table class="h3 mx-auto text-center w-100">
                <thead>
                <th class="py-2 w-auto">Ma Chuyen</th>
                <th class="py-2 w-auto">Ten Chuyen</th>
                <th class="py-2 w-auto">Khoang Cach</th>
                <th class="py-2 w-auto">Gia Ve</th>
                <th class="py-2 w-auto">Loai Xe</th>
                <th class="py-2 w-auto">Nut Dat Ve</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>001</td>
                    <td>Nam</td>
                    <td>1111</td>
                    <td>1111</td>
                    <td>1111</td>
                    <td class="py-2">
                        <button type="button" class="btn btn-primary m-auto w-75">Dat ve</button>
                    </td>
                </tr>
                <tr>
                    <td>001</td>
                    <td>Nam</td>
                    <td>123456789</td>
                    <td>123456789</td>
                    <td>1111</td>
                    <td class="py-2">
                        <button type="button" class="btn btn-primary m-auto w-75">Dat ve</button>
                    </td>
                </tr>
                <tr>
                    <td>001</td>
                    <td>Nam</td>
                    <td>1111</td>
                    <td>1111</td>
                    <td>1111</td>
                    <td class="py-2">
                        <button type="button" class="btn btn-primary m-auto w-75">Dat ve</button>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>

