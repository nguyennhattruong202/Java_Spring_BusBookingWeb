<%-- 
    Document   : login
    Created on : Aug 29, 2022, 5:45:43 PM
    Author     : ACER
--%>

<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Đăng nhập</title>

        <!-- Begin Bootstrap 5 cdn -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <!-- End Bootstrap 5 cdn -->

        <!-- Begin font and icon cdn -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.9.1/font/bootstrap-icons.min.css" integrity="sha512-5PV92qsds/16vyYIJo3T/As4m2d8b6oWYfoqV+vtizRB6KhF1F9kYzWzQmsO6T3z3QG2Xdhrx7FQ+5R1LiQdUA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <!-- End font and icon cdn -->

        <!-- Begin css of this project -->
        <link rel="stylesheet" type="text/css" href="<c:url value="/css/admin/commonLayout.css"/>"/>
        <!-- End css of this project -->
    </head>

    <body>
        <section class="vh-100" style="background-color: #508bfc;">
            <div class="container py-5 h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                        <div class="card shadow-2-strong" 
                             style="border-radius: 1rem;">
                            <div class="card-body p-5 text-center">
                                <h3 class="mb-5">Sign in</h3>
                                <form>
                                    <div class="form-outline mb-4">
                                        <input type="email" id="typeEmailX-2" 
                                               class="form-control"
                                               placeholder="Email"/>
                                    </div>
                                    <div class="mb-4">
                                        <input type="password" id="typePasswordX-2" 
                                               class="form-control"
                                               placeholder="Password"/>
                                    </div>

                                    <div class="d-grid gap-2 mb-4">
                                        <button class="btn btn-primary form-control" 
                                                type="button">
                                            Login
                                        </button>
                                    </div>
                                    <p style="color: #393f81;">
                                        Don't have an account? 
                                        <a href="#" style="color: #393f81;">
                                            Register here</a>
                                    </p>
                                </form>

                                <hr class="my-5">

                                <div class="d-grid gap-2">
                                    <button class="btn form-control mb-2 text-white" 
                                            style="background-color: #dd4b39;"
                                            type="submit">
                                        <i class="bi bi-google me-2"></i>
                                        Sign in with google
                                    </button>
                                </div>
                                <div class="d-grid gap-2">
                                    <button class="btn form-control text-white" 
                                            style="background-color: #3b5998;"
                                            type="submit">
                                        <i class="bi bi-facebook me-2"></i>
                                        Sign in with facebook
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>
