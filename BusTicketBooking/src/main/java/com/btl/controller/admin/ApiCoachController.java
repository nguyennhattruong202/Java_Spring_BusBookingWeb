/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.btl.controller.admin;

import com.btl.pojo.Coach;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.btl.service.CoachService;

@RestController
@RequestMapping("/api")
public class ApiCoachController {

    @Autowired
    private CoachService busService;

    @GetMapping("/coach")
    public ResponseEntity<List<Coach>> getCoach(@RequestParam(required = false, defaultValue = "", name = "kwName") String keyword) {
        return new ResponseEntity<>(this.busService.getCoach(keyword), HttpStatus.OK);
    }
}
