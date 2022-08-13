/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.btl.controller;

import com.btl.service.LineBusService;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private LineBusService lineBusService;
    @Autowired
    private Environment env;

    @GetMapping("/index")
    public String adminIndex() {
        return "adminIndex";
    }

    @GetMapping("/linesbus")
    public String adminLineBusIndex(Model model, @RequestParam Map<String, String> params) {
        int page = Integer.parseInt(params.getOrDefault("page", "1"));
        model.addAttribute("lineBus", this.lineBusService.getAllLineBus(params, page));
        model.addAttribute("lineBusCounter", this.lineBusService.countLineBus());
        model.addAttribute("pageSize", Integer.parseInt(env.getProperty("admin.content.pageSize")));
        return "adminLineBus";
    }

    @GetMapping("/employee")
    public String adminEmployeeManage() {
        return "adminEmployeeUser";
    }

    @GetMapping("/bustrip")
    public String adminBusTrip() {
        return "adminBusTrip";
    }

    @GetMapping("/bus")
    public String adminBusManage() {
        return "adminBus";
    }
    @GetMapping("/typeemployee")
    public String adminTypeEmployeeManage() {
        return "adminTypeEmployee";
    }
}