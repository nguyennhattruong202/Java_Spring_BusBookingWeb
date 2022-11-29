/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.btl.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/user")
public class UserController {

    @GetMapping("/myaccount")
    public String myAccount() {
        return "adminInfoCurrentUser";
    }

    @GetMapping("/changepassword")
    public String viewChangePassword() {
        return "adminChangePassword";
    }
}
