<%-- 
    Document   : adminHeader
    Created on : Aug 5, 2022, 3:59:20 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<header class="header">
    <div class="header-top-wrapper">
        <div class="header-top-wrap">
            <div></div>
            <div class="header-top-right">
                <ul>
                    <li class="header-top-login">
                        <a href="#" id="login-top">
                            <i class="fa-regular fa-circle-user icon-user"></i>Dang nhap</a>
                        <a href="#" id="register-top">Dang ky</a>
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
                        <img src="img/logo/logo.png" alt="logo">
                    </a>
                    <a href="index.html" class="logo__link logo-two">
                        <img src="img/logo/logo.png" alt="logo">
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
                                        <a href="#"><img src="img/product/cart_p01.jpg" alt="img"></a>
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
                                        <a href="#"><img src="img/product/cart_p02.jpg" alt="img"></a>
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
                                        <a href="#"><img src="img/product/cart_p02.jpg" alt="img"></a>
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
                    <input type="text" name="search" id="search" placeholder="Nhap tu khoa can tim ..." class="input-search">
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
                    <a href="index.html"><img src="img/logo/logo.png" alt=""></a>
                </div>
            </div>
        </div>
        <!-- Side bar mobile-end -->
    </div>
</header>
