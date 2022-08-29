///*
// * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
// * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
// */
//package com.btl.controller;
//
//import com.btl.pojo.TypeEmployee;
//import com.btl.service.TypeEmployeeService;
//import java.util.List;
//import java.util.Map;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.http.HttpStatus;
//import org.springframework.http.ResponseEntity;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.RestController;
//
//@RestController
//@RequestMapping("/api")
//public class ApiTypeEmployeeController {
//
//    @Autowired
//    private TypeEmployeeService typeEmployeeService;
//
//    @GetMapping("/typeemployee")
//    public ResponseEntity<List<TypeEmployee>> getAllTypeEmployee(@RequestParam(required = false, defaultValue = "") Map<String, String> params) {
//        return new ResponseEntity<>(this.typeEmployeeService.getTypeEmployee(params), HttpStatus.OK);
//    }
//}
