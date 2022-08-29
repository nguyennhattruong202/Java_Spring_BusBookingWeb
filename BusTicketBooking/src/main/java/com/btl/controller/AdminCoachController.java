/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.btl.controller;

import com.btl.pojo.Coach;
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
import com.btl.service.CoachService;

@Controller
@ControllerAdvice
@RequestMapping("/admin")
public class AdminCoachController {

    @Autowired
    private CoachService busService;

    @ModelAttribute
    public String sendReponseCoachData(Model model) {
        return "adminCoach";
    }

    @GetMapping("/coach")
    public String sendReponseEmptyCoach(Model model) {
        model.addAttribute("newCoach", new Coach());
        return "adminCoach";
    }

    @PostMapping("/coach")
    public String getRequestNewCoach(@ModelAttribute(value = "newCoach") @Valid Coach coach,
            BindingResult result) {
        if (result.hasErrors()) {
            return "adminCoach";
        }
        if (this.busService.addCoach(coach) == true) {
            return "adminCoach";
        }
        return "adminCoach";
    }
}
