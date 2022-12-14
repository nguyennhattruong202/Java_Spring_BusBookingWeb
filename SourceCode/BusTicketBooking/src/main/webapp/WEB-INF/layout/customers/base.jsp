<%-- 
    Document   : base
    Created on : Aug 2, 2022, 9:51:11 PM
    Author     : KIMNAM - ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><tiles:insertAttribute name="title"/></title>
    <link rel="shortcut icon" href="<c:url value="/resources/img/favicon.png"/>"/>
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" >
    <link rel="stylesheet" href="<c:url value="/resources/fonts/fontawesome-free-6.1.1-web/css/all.min.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/resources/css/base.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/resources/css/grid.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/resources/css/responsive.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>"/>
    <script src="<c:url value="../../../resources/js/main.js"/>"></script>
    <script src="<c:url value="../../../resources/js/validator.js" />"></script>
    <!-- Counter up/ Slick slider -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Counter-Up/1.0.0/jquery.counterup.min.js"></script>
    <script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
</head>
<body>
<div id="app">
    <!-- Begin Header -->
    <tiles:insertAttribute name="header"/>
    <!-- End Header -->

    <!-- Begin Main -->
    <div class="container">
        <tiles:insertAttribute name="main"/>
    </div>

    <!-- End Main -->

    <!-- Begin Footer -->
    <tiles:insertAttribute name="footer"/>
    <!-- End Footer -->
</div>

<script>
    // counter
    $('.counter').counterUp({
        delay: 10,
        time: 2000,
    })
    // slider
    $(".footer-slider").slick({
        slidesToShow: 4,
        slidesToScroll: 1,
        arrows: false,
        autoplay: true,
        autoplaySpeed: 3000,
        responsive: [
            {
                breakpoint: 1023,
                settings: {
                    slidesToShow: 2,
                },
            },
            {
                breakpoint: 749,
                settings: {
                    slidesToShow: 2,
                },
            },
        ]
    });
</script>
</body>
</html>
