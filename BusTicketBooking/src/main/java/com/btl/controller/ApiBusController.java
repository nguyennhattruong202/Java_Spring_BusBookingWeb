/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.btl.controller;

import com.btl.pojo.Bus;
import com.btl.service.BusService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class ApiBusController {

    @Autowired
    private BusService busService;

    @GetMapping("/bus")
    public ResponseEntity<List<Bus>> getBus(String keyword) {
        return new ResponseEntity<>(this.busService.getBus(keyword), HttpStatus.OK);
    }
}
