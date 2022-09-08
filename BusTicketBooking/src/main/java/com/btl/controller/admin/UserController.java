/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.btl.controller.admin;

import com.btl.service.UserEmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UserController {

    @Autowired
    private UserEmployeeService userEmployeeService;

    @GetMapping("/login")
    public String login() {
        return "login";
    }

    @GetMapping("/admin/myaccount")
    public String myAccount() {
        return "adminInfoCurrentUser";
    }

    @GetMapping("/index")
    public String index() {
        return "adminIndexPage";
    }

    @GetMapping("/admin/changepassword")
    public String viewChangePassword() {
        return "adminChangePassword";
    }

    @PostMapping("/admin/changepassword")
    public String changePassword(Model model,
            @RequestParam(value = "oldPassword", required = false) String oldPassword,
            @RequestParam(value = "newPassword", required = false) String newPassword,
            @RequestParam(value = "confirmNewPass", required = false) String confirmNewPass) {
        model.addAttribute("checkOldPass", this.userEmployeeService.checkOldPassword(oldPassword));
        return "adminChangePassword";
    }
}
