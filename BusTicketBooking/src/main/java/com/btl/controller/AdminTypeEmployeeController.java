///*
// * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
// * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
// */
//package com.btl.controller;
//
//import com.btl.service.TypeEmployeeService;
//import java.util.Map;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//
//@Controller
//@RequestMapping("/admin")
//public class AdminTypeEmployeeController {
//
//    @Autowired
//    private TypeEmployeeService typeEmployeeService;
//
//    @GetMapping("/typeemployee")
//    public String getTypeEmployee(Model model, @RequestParam Map<String, String> params) {
//        model.addAttribute("employees", this.typeEmployeeService.getTypeEmployee(params));
//        return "adminTypeEmployee";
//    }
//}
