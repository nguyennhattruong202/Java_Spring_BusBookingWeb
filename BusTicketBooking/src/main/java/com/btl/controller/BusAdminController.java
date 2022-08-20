/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.btl.controller;

import com.btl.pojo.Bus;
import com.btl.service.BusService;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@ControllerAdvice
@RequestMapping("/admin")
public class BusAdminController {

    @Autowired
    private BusService busService;

    @ModelAttribute
    public String busAdminManage(Model model) {
        return "adminBus";
    }

    @GetMapping("/bus")
    public String busManage(Model model) {
        model.addAttribute("newBus", new Bus());
        return "adminBus";
    }

    @PostMapping("/bus")
    public String pullNewBus(@ModelAttribute(value = "newBus") @Valid Bus bus,
            BindingResult result) {
        if (result.hasErrors()) {
            return "adminBus";
        }
        if (this.busService.addBus(bus) == true) {
            return "adminBus";
        }
        return "adminBus";
    }
}
