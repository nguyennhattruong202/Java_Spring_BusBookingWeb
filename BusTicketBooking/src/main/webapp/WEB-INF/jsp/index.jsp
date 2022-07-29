<%-- 
    Document   : index
    Created on : Jul 29, 2022, 10:50:03 PM
    Author     : KIMNAM - ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Truong Nam - Dai ly ve xe</title>
        <link rel="shortcut icon" href="./assets/assetHome/img/favicon.png">
        <link rel="stylesheet"  type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">  
        <link rel="stylesheet" href="./assets/assetHome/fonts/fontawesome-free-6.1.1-web/css/all.min.css">
        <link rel="stylesheet" href="./assets/assetHome/css/grid.css">
        <link rel="stylesheet" href="./assets/assetHome/css/base.css">
        <link rel="stylesheet" href="./assets/assetHome/css/style.css">
        <link rel="stylesheet" href="./assets/assetHome/css/responsive.css">
    </head>
    <body>
        <div id="app">
            <!-- Begin Header -->
            <header class="header">
                <div class="header-top-wrapper">
                    <div class="header-top-wrap">
                        <div class="header-top-left">
                            <ul>
                                <li>
                                    <i class="fa-regular fa-envelope icon-email"></i>
                                    <a href="#" class="support-email">truongnam_busbooking@gmail.com</a>
                                </li>
                                <li>
                                    <i class="fa-regular fa-clock icon-clock"></i>
                                    Begin 7:00 AM To 5:00 PM
                                </li> 
                            </ul>
                        </div>
                        <div class="header-top-right">
                            <ul>
                                <li class="header-top-social">
                                    <a href="https://www.facebook.com/profile.php?id=100012783071174"><i class="fa-brands fa-facebook-square"> Truong</i></a>
                                    <a href="https://www.facebook.com/truongkim.nam.9/"><i class="fa-brands fa-facebook-square"> Nam</i></a>
                                </li>
                                <li class="header-top-login">
                                    <a href="#" id="login-top">
                                        <i class="fa-regular fa-circle-user icon-user"></i>
                                        Dang nhap
                                    </a>
                                    <a href="#" id="register-top">
                                        Dang ky
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- stick-menu -->
                <div class="header-main-wrap">
                    <div class="header-container-wrap ">
                        <div class="header-container">
                            <div class="logo">
                                <a href="index.html" class="logo__link logo-one">
                                    <img src="./assets/assetHome/img/logo/logo.png" alt="logo">
                                </a>
                                <a href="index.html" class="logo__link logo-two">
                                    <img src="./assets/assetHome/img/logo/logo.png" alt="logo">
                                </a>
                            </div>
                            <div class="navbar-wrap">
                                <ul class="navbar-wrap-list">
                                    <li class="navbar-wrap-item active">
                                        <a href="#">Trang chu</a>
                                    </li>
                                    <li class="navbar-wrap-item inventory-hv">
                                        <a href="#">Chuyen xe</a>
                                        <ul class="navbar-wrap-list-child">
                                            <li>
                                                <a href="#">Xe ngoi</a>
                                            </li>
                                            <li>
                                                <a href="#">Xe giuong</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="navbar-wrap-item blog-hv">
                                        <a href="#">Tin tuc</a>
                                    </li>
                                    <li class="navbar-wrap-item">
                                        <a href="#">Lien he</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="header-action">
                                <ul>
                                    <li class="header-cart">
                                        <a href="#">
                                            <i class="fa-solid fa-basket-shopping"></i>
                                            <span>4</span>
                                        </a>
                                        <!-- have items-->
                                        <div class="cart-wrap">                               
                                            <ul class="mini-cart">
                                                <li class="mini-cart-item">
                                                    <a href="#"><img src="./assets/assetHome/img/product/cart_p01.jpg" alt="img"></a>
                                                    <div class="cart-item-content">
                                                        <h4 class="cart-item__heading"><a href="#">Ha Noi - TP.HCM</a></h4>
                                                        <div class="cart-item-price">
                                                            <span class="item-price__new">500000 VND</span>
                                                        </div>
                                                    </div>
                                                    <a href="#">
                                                        <i class="fa-regular fa-trash-can icon-trash"></i>
                                                    </a>
                                                </li>
                                                <li class="mini-cart-item"> 
                                                    <a href="#"><img src="./assets/assets/assetHome/img/product/cart_p02.jpg" alt="img"></a>
                                                    <div class="cart-item-content">
                                                        <h4 class="cart-item__heading"><a href="#">TP.HCM - Ha Noi</a></h4>
                                                        <div class="cart-item-price">
                                                            <span class="item-price__new">500000 VND</span>
                                                        </div>
                                                    </div>
                                                    <a href="#">
                                                        <i class="fa-regular fa-trash-can icon-trash"></i>
                                                    </a>
                                                </li>
                                                <li class="mini-cart-item"> 
                                                    <a href="#"><img src="./assets/assetHome/img/product/cart_p02.jpg" alt="img"></a>
                                                    <div class="cart-item-content">
                                                        <h4 class="cart-item__heading"><a href="#">Da Nang - TP.HCM</a></h4>
                                                        <div class="cart-item-price">
                                                            <span class="item-price__new">300000 VND</span>
                                                        </div>
                                                    </div>
                                                    <a href="#">
                                                        <i class="fa-regular fa-trash-can icon-trash"></i>
                                                    </a>
                                                </li>

                                            </ul>
                                            <div class="total-price">
                                                <span>Tổng cộng:</span>
                                                <span>2000000 VND</span>
                                            </div>
                                            <div class="checkout-link">
                                                <a href="#" class="btn btn-shopping">Thanh toan</a>
                                                <a href="#" class="btn btn-checkout">Dat ve</a>
                                            </div>
                                        </div>
                                        <!-- no item -->
                                        <div class="cart-wrap-no__item">
                                            <img src="https://bizweb.dktcdn.net/100/416/931/themes/806831/assets/empty-cart.png?1616484068897
                                                 " alt="list-cart" class="header-cart-list__img">
                                            <span class="header-cart-list_msg">Không có sản phẩm</span>
                                        </div>
                                    </li>
                                    <li class="header-quote">
                                        <a href="#" class="btn btn__quote">DAT VE</a>
                                    </li>
                                    <li class="btn-search">
                                        <i class="fa-solid fa-magnifying-glass icon-search"></i>
                                    </li>
                                    <div class="btn-list">
                                        <a href="#">
                                            <i class="fa-solid fa-bars"></i>
                                        </a>
                                    </div>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- stick-search -->
                    <div class="header-search-body ">
                        <div class="search-body">
                            <form action="#">
                                <input type="text" name="search" id="search" placeholder="Type here..." class="input-search">
                                <button type="submit" class="btn-search-cart">
                                    <i class="fa-solid fa-magnifying-glass"></i>
                                </button>
                            </form>
                        </div>
                    </div>
                    <!-- Side bar mobile -->
                    <div class="side-bar-wrapper">
                        <div class="overlay__mobile"></div>
                        <div class="side-bar">
                            <div class="btn-close">
                                <i class="fa-solid fa-xmark"></i>
                            </div>
                            <div class="side-bar-logo">
                                <a href="index.html"><img src="./assets/assetHome/img/logo/logo.png" alt=""></a>
                            </div>
                        </div>
                    </div>
                    <!-- Side bar mobile-end -->
                </div>
            </header>
            <!-- End Header -->
            <!-- Begin Main -->
            <main class="main">
                <!-- slider-area -->
                <div class="main-slider" style="background-image: url(./assets/assetHome/img/slider/banner_bg02.jpg);">
                    <!-- banner-area-->
                    <div class="grid ">
                        <div class="row">
                            <div class="col l-12">
                                <div class="main-content-show">
                                    <!-- <img src="./assets/assetHome/img/slider/slider_content_icon.png" alt="img"> -->
                                    <div class="fact-area-title">
                                        CHAT LUONG 5 SAO
                                        <span class="left"></span>
                                        <span class="right"></span>
                                    </div>
                                    <h2>
                                        VUON TAM QUOC TE
                                    </h2>
                                    <p>AN TOAN - UY TIN - THAN THIEN</p>
                                    <a href="#" class="btn btn-find">GIOI THIEU</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="banner-car-search-wrap">
                        <div class="banner-car-container">
                            <div class="grid wide">
                                <div class="row mr-3">
                                    <div class="col m-4 c-12 l-2-4">
                                        <div class="form-select">
                                            <span>Diem di</span>
                                            <ul class="form-select-list">
                                                <li class="select-car-item active">TP.HCM</li>
                                                <li class="select-car-item">Ha Noi</li>
                                                <li class="select-car-item">Da Nang</li>
                                                <li class="select-car-item">Hue</li>
                                                <li class="select-car-item">Binh Thuan</li>
                                                <li class="select-car-item">Can Tho</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col m-4 c-12 l-2-4">
                                        <div class="form-select">
                                            <span>Diem den</span>
                                            <ul class="form-select-list">
                                                <li class="select-car-item active">TP.HCM</li>
                                                <li class="select-car-item">Ha Noi</li>
                                                <li class="select-car-item">Da Nang</li>
                                                <li class="select-car-item">Hue</li>
                                                <li class="select-car-item">Binh Thuan</li>
                                                <li class="select-car-item">Can Tho</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col m-4 c-12 l-2-4">
                                        <div class="form-select">
                                            <span>Ngay di</span>
                                            <ul class="form-select-list">
                                                <li class="select-car-item active">Select Model</li>
                                                <li class="select-car-item">SORN Status</li>
                                                <li class="select-car-item">Fuel Type</li>
                                                <li class="select-car-item">Last Log Book</li>
                                                <li class="select-car-item">MOT Expires</li>
                                                <li class="select-car-item">Vehicle TAX</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col m-4 c-12 l-2-4">
                                        <div class="form-select">
                                            <span>Loai ve</span>
                                            <ul class="form-select-list">
                                                <li class="select-car-item active">Giuong nam</li>
                                                <li class="select-car-item">Ghe ngoi</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col m-4 c-12 l-2-4">
                                        <a href="#" class="btn btn-vehicle">Tim chuyen</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- banner-area-end -->
                </div>

                <div class="latest-cars-area pb-120 pt-120">
                    <div class="grid wide">
                        <div class="latest-cars-control">
                            <div class="row large-gutter ">
                                <div class="col l-12 m-12 c-12">
                                    <div class="section-title mb-35">
                                        <div class="overlay-title">THONG TIN</div>
                                        <span>THONG TIN</span>
                                        <h2>CAC CHUYEN XE HIEN HANH</h2>
                                    </div>
                                    <div class="latest-cars-menu">
                                        <button href="#" class="btn btn-cars-menu active" data-type="all">Xe ngoi</button>
                                        <button href="#" class="btn btn-cars-menu" data-type="new-car">Xe giuong</button>
                                    </div>
                                </div>
                            </div>
                        </div>              
                        <div class="latest-cars-wrapper">
                            <div class="row large-gutter mr-3 ">

                            </div>
                        </div>
                        <div class="latest-cars-btn">
                            <div class="row">
                                <div class="col col-12">
                                    <a href="" class="btn bnt-show-all">XEM THEM</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- slider-area-end -->
                <!-- features-area -->
                <div class="features-area pt-120 pb-90">
                    <div class="grid wide">
                        <div class="row large-gutter  mr-3">
                            <div class="col l-3 m-6 c-12 custom-c-12">
                                <div class="features-item">
                                    <div class="features-icon mb-25">
                                        <img src="./assets/assetHome/img/icon/h3_features_icon01.png" alt="icon">
                                    </div>
                                    <div class="features-content">
                                        <h5>Hang 1</h5>
                                        <p>Huan chuong lao dong hang nhat danh cho doanh nghiep có thành tich xuat sac nhat</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col l-3 m-6 c-12 custom-c-12">
                                <div class="features-item">
                                    <div class="features-icon mb-25">
                                        <img src="./assets/assetHome/img/icon/h3_features_icon02.png" alt="icon">
                                    </div>
                                    <div class="features-content">
                                        <h5>Top 5</h5>
                                        <p>Top 5 Doanh nghiep phat trien nhanh nhat Viet Nam. Nen dich vu van tai vươn tam chau luc
                                    </div>
                                </div>
                            </div>
                            <div class="col l-3 m-6 c-12 custom-c-12">
                                <div class="features-item">
                                    <div class="features-icon mb-25">
                                        <img src="./assets/assetHome/img/icon/h3_features_icon03.png" alt="icon">
                                    </div>
                                    <div class="features-content">
                                        <h5>An toan</h5>
                                        <p>Dam bao tinh than trong, an toan moi chuyen xe, nang cao su tien ich toan dien
                                    </div>
                                </div>
                            </div>
                            <div class="col l-3 m-6 c-12 custom-c-12">
                                <div class="features-item">
                                    <div class="features-icon mb-25">
                                        <img src="./assets/assetHome/img/icon/h3_features_icon04.png" alt="icon">
                                    </div>
                                    <div class="features-content">
                                        <h5>Bao ve moi truong</h5>
                                        <p>Tiet kiem nhien lieu, han che khi thai, nang cao su xanh - sach - dep moi truong
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- features-area-end -->
                <!-- latest-cars-area -->

                <!-- latest-cars-area-end -->
                <!-- about-area -->
                <div style="background-image: url('./assets/assetHome/img/bg/about_bg.jpg');" class="about-area ">
                    <div class="about-container pt-120 pb-120">
                        <div class="grid wide">
                            <div class="row large-gutter mr-3">
                                <div class="col l-3 m-6 c-12 custom-c-12">
                                    <div class="about-text">
                                        <!-- <h2>49<span>+</span></h2> -->
                                    </div>
                                    <div class="about-img">
                                        <img src="./assets/assetHome/img/images/about_img01.jpg" alt="img">
                                    </div>
                                </div>
                                <div class="col l-3 m-6 c-12  custom-c-12">
                                    <div class="about-img">
                                        <img src="./assets/assetHome/img/images/about_img01.jpg" alt="img">
                                    </div>
                                </div>
                                <div class="col l-6 m-12 c-12  custom-c-12">
                                    <div class="about-content-wrapper">
                                        <div class="about-heading mb-40">
                                            <p>DOANH NGHIEP - TAP DOAN VAN TAI</p>
                                            <h2>Truong Nam - Dai ly ve xe</h2>
                                        </div>
                                        <div class="about-desc mb-40">
                                            <img src="./assets/assetHome/img/images/m.png" alt="img" class="about-desc__img">
                                            <p>anh dung, thinh vuong, phat trien lau dai. Xay dung nen tang cong nghe hien dai, ket hop voi nen dich vu van tai thinh hanh. Vuon tam khu vuc, khang dinh vi the Viet Nam
                                        </div>
                                        <div class="about-list mb-40">
                                            <ul>
                                                <li class="about-item">
                                                    <i class="fa-solid fa-check"></i>
                                                    Tien ich vuot troi
                                                </li>
                                                <li class="about-item">
                                                    <i class="fa-solid fa-check"></i>
                                                    Cong nghe hien dai, tich hop tri tue nhan tao
                                                </li>
                                                <li class="about-item">
                                                    <i class="fa-solid fa-check"></i>
                                                    Nhanh chong, mo rong, hoa nhap
                                                </li>
                                                <li class="about-item">
                                                    <i class="fa-solid fa-check"></i>
                                                    An toan, uy tin, than thien
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- about-area-end -->
                <!-- exclusive car featured -->
                <div class="exclusive-car-area pb-120 pt-120">
                    <div class="grid wide">
                        <div class="latest-cars-control">
                            <div class="row large-gutter ">
                                <div class="col l-12 m-12 c-12">
                                    <div class="section-title mb-35">
                                        <div class="overlay-title">CONG NGHE & DICH VU</div>
                                        <span>CONG NGHE & DICH VU</span>
                                        <h2>TIEU CHUAN XE CHINH HANG DOC QUYEN</h2>
                                        <img src="./assets/assetHome/img/images/title_line.png" alt="" class="img-line">
                                    </div>

                                </div>
                            </div>
                        </div>  
                        <div class="exclusive-car-content">
                            <div class="row large-gutter mr-3">
                                <div class="col l-3 m-6 c-12 custom-c-12">
                                    <div class="exclusive-car-item mr--30 mb-35 text-right ">
                                        <div class="exclusive-car__img-right ">
                                            <img src="./assets/assetHome/img/flaticon/car-parts.png" alt="img">
                                        </div>
                                        <h5>DAN DONG CAU TRUOC (FWD) </h5>
                                        <p>
                                            La dang bo tri dat dong co và hop so len phia truoc, khien toan bo suc manh, kha nang di chuyen duoc don vào banh xe truoc.
                                        </p>
                                    </div>
                                    <div class="exclusive-car-item mr--30 text-right ">
                                        <div class="exclusive-car__img-right">
                                            <img src="./assets/assetHome/img/flaticon/piston.png" alt="img">
                                        </div>
                                        <h5>CONG NGHE PISTON DAP</h5>
                                        <p>
                                            Che tao bang cach nau chay nhom o nhiet do cao, sau do do vao khuon duc. Vi nhom chua nong chay nen no van giu duoc cau truc mang tinh the va kim loai chac chan hon.
                                        </p>
                                    </div>
                                </div>
                                <div class="col l-6 d-none">
                                    <div class="exclusive-car-featured__img">
                                        <img src="./assets/assetHome/img/images/exc_featured_img.png" alt="img">
                                    </div>
                                </div>
                                <div class="col l-3 m-6 c-12 custom-c-12">
                                    <div class="exclusive-car-item ml--30 mb-35  ">
                                        <div class="exclusive-car__img ">
                                            <img src="./assets/assetHome/img/flaticon/fan.png " alt="img">
                                        </div>
                                        <h5>XE SIEU NHANH </h5>
                                        <p>
                                            Su dung hop so 6 cap, he thong phanh caa 4 banh, cai thien thoi gian hoan thanh quang duong đi. He thong giam sat tich hop giup hanh khach yen tam ve tai san.
                                        </p>
                                    </div>
                                    <div class="exclusive-car-item ml--30 ">
                                        <div class="exclusive-car__img">
                                            <img src="./assets/assetHome/img/flaticon/jerrycan.png" alt="img">
                                        </div>
                                        <h5>TIET KIEM NHIEN LIEU</h5>
                                        <p>
                                            Muc tieu hao nhien lieu chi bang 1/2 so voi muc tieu thu chung. Hạn che duoc khi thai tu chat dot nhien lieu.
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>           
                    </div>
                </div>          
                <!-- exclusive car featured-end -->
                <!-- fact-area -->
                <div class="fact-area" style="background-image: url(./assets/assetHome/img/bg/fact_bg.jpg);">
                    <div class="fact-area-title-wrap">
                        <div class="fact-area-title">
                            DANH GIA DICH VU
                            <span class="left"></span>
                            <span class="right"></span>
                        </div>
                    </div>
                    <div class="fact-container">
                        <div class="grid wide">
                            <div class="row large-gutter mr-3">
                                <div class="col l-3 m-6 c-12 custom-c-12">
                                    <div class="fact-item">
                                        <div class="fact-img">
                                            <img src="./assets/assetHome/img/flaticon/car.png" alt="img">
                                        </div>
                                        <div class="fact-content">
                                            <h3>
                                                <span  class="counter">2900</span>
                                                <span>+</span>
                                            </h3>
                                            <p>CHUYEN XE</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col l-3 m-6 c-12 custom-c-12">
                                    <div class="fact-item">
                                        <div class="fact-img">
                                            <img src="./assets/assetHome/img/flaticon/settings car.png" alt="img">
                                        </div>
                                        <div class="fact-content">
                                            <h3>
                                                <span class="counter">
                                                    3400
                                                </span>
                                                <span>+</span>
                                            </h3>
                                            <p>DICH VU VE</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col l-3 m-6 c-12 custom-c-12">
                                    <div class="fact-item">
                                        <div class="fact-img">
                                            <img src="./assets/assetHome/img/flaticon/settings.png" alt="img">
                                        </div>
                                        <div class="fact-content">
                                            <h3>
                                                <span class="counter">
                                                    1200
                                                </span>
                                                <span>+</span>
                                            </h3>
                                            <p>SUA CHUA & NOI THAT</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col l-3 m-6 c-12 custom-c-12">
                                    <div class="fact-item">
                                        <div class="fact-img">
                                            <img src="./assets/assetHome/img/flaticon/rocket.png" alt="img">
                                        </div>
                                        <div class="fact-content">
                                            <h3>
                                                <span class="counter">
                                                    34
                                                </span>
                                                <span>K</span>
                                            </h3>
                                            <p>CHAT LUONG</p>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <!-- fact-area-end -->
                <!-- blog-area -->
                <div class="blog-area pd-120 pt-120">
                    <div class="grid wide">
                        <div class="latest-cars-control">
                            <div class="row large-gutter">
                                <div class="col l-12 m-12 c-12">
                                    <div class="section-title mb-35">
                                        <div class="overlay-title">TIN TUC</div>
                                        <span>TIN TUC</span>
                                        <h2>THONG TIN PHO BIEN</h2>
                                        <img src="./assets/assetHome/img/images/title_line.png" alt="" class="img-line">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row large-gutter mr-3">
                            <div class="col l-4 m-6 c-12 custom-c-12">
                                <div class="blog-item mb-50-mb-tl">
                                    <div class="blog-item__img">
                                        <a href="#">
                                            <img src="./assets/assetHome/img/blog/blog_post_thumb01.jpg" alt="img">
                                        </a>
                                    </div>
                                    <div class="blog-item-content">
                                        <a href="#">Mo rong tuyen duong Bac - Nam</a>
                                        <h3>
                                            <a href="#">Dau tu von 1000 ty cho cuoc doi moi quy hoach ha tang</a>
                                        </h3>
                                    </div>
                                    <div class="blog-item-bottom">
                                        <ul>
                                            <li class="blog-item__name">
                                                <i class="fa-regular fa-user"></i>
                                                <a href="#">Truong Nam</a>
                                            </li>
                                            <li class="blog-item__time">
                                                <i class="fa-solid fa-calendar-days"></i>
                                                <a href="#">09-2022</a>
                                            </li>
                                        </ul>
                                        <a href="#" class="btn btn-details">
                                            <i class="fa-solid fa-angles-right"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col l-4 m-6 c-12 custom-c-12">
                                <div class="blog-item mb-50-mb-tl">
                                    <div class="blog-item__img">
                                        <a href="#">
                                            <img src="./assets/assetHome/img/blog/blog_post_thumb02.jpg" alt="img">
                                        </a>
                                    </div>
                                    <div class="blog-item-content">
                                        <a href="#">Xay dung cau noi dich vu</a>
                                        <h3>
                                            <a href="#">Quy hoach chi nhanh, trien khai ha tang so hoa dien tu</a>
                                        </h3>
                                    </div>
                                    <div class="blog-item-bottom">
                                        <ul>
                                            <li class="blog-item__name">
                                                <i class="fa-regular fa-user"></i>
                                                <a href="#">Truong Nam</a>
                                            </li>
                                            <li class="blog-item__time">
                                                <i class="fa-solid fa-calendar-days"></i>
                                                <a href="#">09-2022</a>
                                            </li>
                                        </ul>
                                        <a href="#" class="btn btn-details">
                                            <i class="fa-solid fa-angles-right"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col l-4 m-6 c-12 custom-c-12">
                                <div class="blog-item">
                                    <div class="blog-item__img">
                                        <a href="#">
                                            <img src="./assets/assetHome/img/blog/blog_post_thumb03.jpg" alt="img">
                                        </a>
                                    </div>
                                    <div class="blog-item-content">
                                        <a href="#">Dau tu tuyen duong Hue - Mui Ne</a>
                                        <h3>
                                            <a href="#">Phat trien quy mo tuyen duong gan 1000 km</a>
                                        </h3>
                                    </div>
                                    <div class="blog-item-bottom">
                                        <ul>
                                            <li class="blog-item__name">
                                                <i class="fa-regular fa-user"></i>
                                                <a href="#">Truong Nam</a>
                                            </li>
                                            <li class="blog-item__time">
                                                <i class="fa-solid fa-calendar-days"></i>
                                                <a href="#">09-2022</a>
                                            </li>
                                        </ul>
                                        <a href="#" class="btn btn-details">
                                            <i class="fa-solid fa-angles-right"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>  
                    </div>
                </div>
                <!-- blog-area-end -->
            </main>
            <!-- End Main -->
            <!-- Begin Footer -->
            <footer class="footer">
                <div class="footer-top-wrap">
                    <div class="footer-top ">
                        <div class="grid wide">
                            <div class="row large-gutter mr-3">
                                <div class="col l-4 m-6 c-12">
                                    <div class="footer-logo">
                                        <a href="#" class="btn">
                                            <img src="./assets/assetHome/img/logo/w_logo.png" alt="logo">
                                        </a>
                                    </div>
                                </div>
                                <div class="col l-8 m-6 c-12">
                                    <div class="footer-slider"> 
                                        <div class="footer-slider-item">
                                            <div class="slider-img">
                                                <a href="#">
                                                    <img src="./assets/assetHome/img/brand/footer_brand01.png" alt="img">
                                                </a>
                                            </div>
                                        </div>
                                        <div class="footer-slider-item">
                                            <div class="slider-img">
                                                <a href="#">
                                                    <img src="./assets/assetHome/img/brand/footer_brand02.png" alt="img">
                                                </a>
                                            </div>
                                        </div>
                                        <div class="footer-slider-item">
                                            <div class="slider-img">
                                                <a href="#">
                                                    <img src="./assets/assetHome/img/brand/footer_brand03.png" alt="img">
                                                </a>
                                            </div>
                                        </div>
                                        <div class="footer-slider-item">
                                            <div class="slider-img">
                                                <a href="#">
                                                    <img src="./assets/assetHome/img/brand/footer_brand04.png" alt="img">
                                                </a>
                                            </div>
                                        </div>
                                        <div class="footer-slider-item">
                                            <div class="slider-img">
                                                <a href="#">
                                                    <img src="./assets/assetHome/img/brand/footer_brand02.png" alt="img">
                                                </a>
                                            </div>
                                        </div>
                                    </div> 
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="footer-main-wrap" style="background-image: url(./assets/assetHome/img/bg/footer_bg.jpg);">
                    <div class="footer-main">
                        <div class="grid wide">
                            <div class="row large-gutter mr-3">
                                <div class="col l-4 m-6 c-12">
                                    <div class="footer-main__left">
                                        <div class="footer-main__heading">
                                            <h4>Lien He</h4>
                                            <p>Moi thong tin chi tiet can duoc ho tro xin vui long lien he qua cac phuong tien sau
                                            </p>
                                        </div>
                                        <div class="footer-main__contact">
                                            <ul>
                                                <li class="footer-contact-item">
                                                    <a href="#" class="btn btn-contact btn--phone">
                                                        <i class="fa-solid fa-phone-flip"></i>
                                                    </a>
                                                    <div class="contact-item__content">
                                                        <p>SO DIEN THOAI</p>
                                                        <a href="#">
                                                            <p>(+84) 967 164 223</p>
                                                        </a>
                                                    </div>
                                                </li>
                                                <li class="footer-contact-item">
                                                    <a href="#" class="btn btn-contact btn--email">
                                                        <i class="fa-solid fa-envelope"></i>
                                                    </a>
                                                    <div class="contact-item__content">
                                                        <p>EMAIL</p>
                                                        <a href="#">
                                                            <p>truongnam_busbooking@gmail.com</p>
                                                        </a>
                                                    </div>
                                                </li>
                                                <li class="footer-contact-item">
                                                    <a href="#" class="btn btn-contact btn--location">
                                                        <i class="fa-solid fa-location-dot"></i>
                                                    </a>
                                                    <div class="contact-item__content">
                                                        <p>Dia chi</p>
                                                        <span>371 Nguyen Kiem, P.3, Go Vap, TP.HCM</span>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="col l-8 m-12 c-12 ">
                                    <div class="footer-main__right">
                                        <div class="row large-gutter">
                                            <div class="col l-5 m-3 c-12">
                                                <div class="main-right__title">
                                                    <h4>Tong dai ho tro (Mien phi)</h4>
                                                </div>
                                                <ul class="main-right__list">
                                                    <li><a href="#">Dat ve: 1900.1080 (7:00 - 22:00)</a></li>
                                                    <li><a href="#">Gop y : 1900.1808 (7:00 - 22:00)</a></li>
                                                    <li><a href="#">Ho tro: 1900.1050 (7:00 - 22:00)</a></li>
                                                    <li><a href="#">Tu van: 1900.5060 (7:00 - 22:00)</a></li>
                                                </ul>
                                            </div>
                                            <div class="col l-5 m-6 c-12">
                                                <div class="main-right__title">
                                                    <h4>Gop y - Khieu nai</h4>
                                                </div>
                                                <div class="main-right__input">
                                                    <form action="#">
                                                        <input type="text" placeholder="Your mail...">
                                                        <button class="btn btn-submit">
                                                            <i class="fa-solid fa-angles-right"></i>
                                                        </button>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row large-gutter">
                                            <div class="col l-12 m-12 c-12">
                                                <div class="payment">
                                                    <div class="payment__title">
                                                        <p>Ban co the thanh toan truc tuyen hoac qua the tin dung cac ngan hang pho bien hop phap tai Viet Nam
                                                    </div>
                                                    <div class="payment__img">
                                                        <img src="./assets/assetHome/img/images/payment_card.png" alt="img">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="footer-bottom">
                        <div class="grid wide">
                            <div class="row large-gutter mr-3">
                                <div class="col l-8 m-8 c-12">
                                    <div class="footer-copyright">
                                        <p>Copyright © 2022. Nguyen Nhat Truong - Truong Kim Nam</p>
                                    </div>
                                </div>
                                <div class="col l-4 m-4 c-12">
                                    <button class="btn btn-scroll-top">
                                        <i class="fa-solid fa-angle-up"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </footer>
            <!-- End Footer -->
            <!-- Modal login/register -->
            <div class="modal-wrapper">
                <div class="modal__overlay"></div>
                <div class="modal-body">
                    <div class="form">
                        <ul>
                            <li class="line active"><h3 class="heading active">Dang nhap</h3>
                            </li>
                            <li class="line"><h3 class="heading ">Dang ky</h3>
                            </li>

                        </ul>
                        <div class="btn-close-login">
                            <i class="fa-solid fa-xmark"></i>
                        </div>
                        <div class="spacer"></div>
                        <form action="#" method="POST"  id="login">
                            <!-- Login -->
                            <div class="login-form login-tab active">
                                <div class="form-group">
                                    <label for="email" class="form-label">Email <span>*</span></label>
                                    <input id="email-login" name="email" type="text" placeholder="nguyenvana@gmail.com" class="form-control">
                                    <span class="form-message"></span>
                                </div>
                                <div class="form-group">
                                    <label for="password" class="form-label">Mat khau <span>*</span></label>
                                    <input id="password-login" name="password" type="password" placeholder="********" class="form-control">
                                    <span class="form-message"></span>
                                </div>

                                <div class="form-group">
                                    <select class="form-select form-select-sm">
                                        <option selected>** Vai tro dang nhap **</option>
                                        <option value="1">Khach Hang</option>
                                        <option value="2">Nhan Vien</option>
                                        <option value="3">Quan Ly</option>
                                    </select>
                                </div>

                                <button class="form-submit">Dang nhap</button>
                            </div>
                        </form>
                        <form action="#" method="POST" id="register">
                            <!-- Register -->
                            <div class="register-form login-tab" >
                                <div class="form-group">
                                    <label for="fullname" class="form-label">Ten dang nhap <span>*</span></label>
                                    <input id="fullname" name="fullname" type="text" placeholder="nguyenvana" class="form-control">
                                    <span class="form-message"></span>
                                </div>

                                <div class="form-group">
                                    <label for="email" class="form-label">Email <span>*</span></label>
                                    <input id="email" name="email" type="text" placeholder="nguyenvana@gmail.com" class="form-control">
                                    <span class="form-message"></span>
                                </div>

                                <div class="form-group">
                                    <label for="password" class="form-label">Mat khau <span>*</span></label>
                                    <input id="password" name="password" type="password" placeholder="********" class="form-control">
                                    <span class="form-message"></span>
                                </div>

                                <div class="form-group">
                                    <label for="password_confirmation" class="form-label">Xac nhan mat khau <span>*</span></label>
                                    <input id="password_confirmation" name="password_confirmation" placeholder="********" type="password" class="form-control">
                                    <span class="form-message"></span>
                                </div>

                                <div class="form-group">
                                    <select class="form-select form-select-sm">
                                        <option selected>** Vai tro dang nhap **</option>
                                        <option value="1">Khach Hang</option>
                                        <option value="2">Nhan Vien</option>
                                        <option value="3">Quan Ly</option>
                                    </select>
                                </div>

                                <button class="form-submit">Dang ky</button>
                            </div>
                        </form>
                    </div>

                </div>
            </div>
        </div>

        <!-- Js -->
        <!-- Counter up/ Slick slider --> 
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Counter-Up/1.0.0/jquery.counterup.min.js"></script>
        <script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
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
        <!--Validate  -->
        <script src="./assets/assetHome/js/validator.js"></script>
        <script>
            // login
            Validator({
                form: "#login",
                formGroupSelector: ".form-group",
                error: ".form-message",
                rules: [
                    Validator.isRequired("#email-login"),
                    Validator.isRequired("#password-login"),
                ],
                onsubmit: function () {
                    alert("No action!")
                }
            })
            // register
            Validator({
                form: "#register",
                formGroupSelector: ".form-group",
                error: ".form-message",
                rules: [
                    Validator.isRequired("#fullname"),
                    Validator.isRequired("#email"),
                    Validator.isEmail("#email"),
                    Validator.isRequired("#password"),
                    Validator.isMinLength("#password", 8, "Password must be at least 8 characters."),
                    Validator.isRequired("#password_confirmation"),
                    Validator.isConfirmed("#password_confirmation", function () {
                        return document.querySelector("#register #password").value
                    }, "Two passwords do not match."),
                ],
                onsubmit: function () {
                    alert("Sign Up Success! Please login")
                }
            })
        </script>
        <!-- Main -->
        <script src="./assets/assetHome/js/main.js"></script>
    </body>
</html>

