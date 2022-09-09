/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.btl.controller.admin;

import com.btl.service.CoachService;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/admin/coach")
public class CoachController {

    @Autowired
    private CoachService coachService;

    @GetMapping
    public String getListOfCoach(Model model, @RequestParam Map<String, String> params) {
        int page = Integer.parseInt(params.getOrDefault("page", "1"));
        model.addAttribute("listCoach", this.coachService.getCoach(page, true));
        model.addAttribute("coachCounter", this.coachService.countCoach(true));
        return "adminCoach";
    }
    
    @GetMapping("/deleted")
    public String removedCoach(Model model, @RequestParam Map<String, String> params) {
        int page = Integer.parseInt(params.getOrDefault("page", "1"));
        model.addAttribute("coachDeletedList", this.coachService.getCoach(page, false));
        model.addAttribute("coachDeletedCount", this.coachService.countCoach(false));
        return "kk";
    }
}
