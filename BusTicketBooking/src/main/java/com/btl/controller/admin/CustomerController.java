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
@RequestMapping("/admin/customer")
public class CustomerController {

    @Autowired
    private CustomerService customerService;

    @GetMapping
    public String getListOfCustomer(Model model, @RequestParam Map<String, String> params) {
        int page = Integer.parseInt(params.getOrDefault("page", "1"));
        model.addAttribute("listCustomer", this.customerService.getCustomer(page, true));
        model.addAttribute("customerCounter", this.customerService.countCustomer(true));
        return "adminCustomer";
    }

    @GetMapping("/{customerId}")
    public String removeCustomer(Model model, @PathVariable(value = "customerId") int customerId) {
        model.addAttribute("deleteStatus", this.customerService.deleteCustomer(customerId));
        return "adminCustomer";
    }

    @GetMapping("/deleted")
    public String removedCustomer(Model model, @RequestParam Map<String, String> params) {
        int page = Integer.parseInt(params.getOrDefault("page", "1"));
        model.addAttribute("customerDeletedList", this.customerService.getCustomer(page, false));
        model.addAttribute("customerDeletedCount", this.customerService.countCustomer(false));
        return "adminCustomerDeleted";
    }
}
