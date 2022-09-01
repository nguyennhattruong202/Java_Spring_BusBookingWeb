<%-- 
    Document   : authentication
    Created on : Aug 2, 2022, 10:11:00 PM
    Author     : KIMNAM - ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            Validator.isMinLength("#password", 8, "Mat khau phai co it nhat 8 ki tu."),
            Validator.isRequired("#password_confirmation"),
            Validator.isConfirmed("#password_confirmation", function () {
                return document.querySelector("#register #password").value
            }, "Mat khau khong trung khop."),
        ],
        onsubmit: function () {
            alert("Dang ki thanh cong. Vui lòng dang nhap lai !")
        }
    })
</script>
