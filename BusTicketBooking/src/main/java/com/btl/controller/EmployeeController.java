/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.btl.controller;

import com.btl.pojo.Employee;
import com.btl.service.UserEmployeeService;
import com.btl.validator.WebAppValidator;
import java.util.Map;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/admin")
public class EmployeeController {

    @Autowired
    private UserEmployeeService userEmployeeService;
    @Autowired
    private WebAppValidator employeeValidators;

    @InitBinder
    public void initBinder(WebDataBinder binder) {
        binder.setValidator(employeeValidators);
    }

    @GetMapping("/employee")
    public String listEmployee(Model model, @RequestParam Map<String, String> params) {
        int page = Integer.parseInt(params.getOrDefault("page", "1"));
        model.addAttribute("listEmployee", this.userEmployeeService.getEmployee(page));
        model.addAttribute("employeeCounter", this.userEmployeeService.countEmployee());
        return "adminEmployeeUser";
    }

    @GetMapping("/employee/add")
    public String getFormAddEmployee(Model model) {
        model.addAttribute("employee", new Employee());
        return "formAddEmployee";
    }

    @PostMapping("/employee/add")
    public String addEmployee(@ModelAttribute(value = "employee") @Valid Employee employee, BindingResult result) {
        if (result.hasErrors()) {
            return "formAddEmployee";
        }
        if (this.userEmployeeService.addEmployee(employee) == true) {
            return "redirect:/admin/employee";
        }
        return "formAddEmployee";
    }
}
