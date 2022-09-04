/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.btl.controllers.customer;

import com.btl.service.CustomerCoachtripService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

/**
 *
 * @author KIMNAM
 */
@Controller
public class TripController {

    @Autowired
    private CustomerCoachtripService customerCoachtripService;

    @GetMapping("/trips")
    public String listOrderTrip(Model model) {
        model.addAttribute("listOrderCoachTrip", this.customerCoachtripService.orderCoachTrip());
        return "trips";
    }
}
