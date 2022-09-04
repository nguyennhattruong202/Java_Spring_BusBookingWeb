/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.btl.controller.admin;

import com.btl.service.CustomerService;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/admin")
public class AdminCustomerController {

    @Autowired
    private CustomerService customerService;

    @GetMapping("/customer")
    public String customerManagelayout(Model model, @RequestParam Map<String, String> params) {
        int page = Integer.parseInt(params.getOrDefault("page", "1"));
        model.addAttribute("listCustomer", this.customerService.getCustomer(page));
        model.addAttribute("customerCounter", this.customerService.countCustomer());
        return "adminCustomerPage";
    }

    @GetMapping("/customer/{customerId}")
    public String customerRemove(Model model, @PathVariable(value = "customerId") int customerId) {
        model.addAttribute("deleteStatus", this.customerService.deleteCustomer(customerId));
        return "adminCustomerPage";
    }
}
