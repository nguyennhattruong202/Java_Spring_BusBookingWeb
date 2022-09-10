/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.btl.service.impl;

import com.btl.pojo.Coach;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.btl.repository.CoachRepository;
import com.btl.service.CoachService;

@Service
public class CoachServiceImpl implements CoachService {
    
    @Autowired
    private CoachRepository coachRepository;
    
    @Override
    public List<Coach> getCoach(int page, boolean active) {
        return this.coachRepository.getCoach(page, active);
    }
    
    @Override
    public long countCoach(boolean active) {
        return this.coachRepository.countCoach(active);
    }
    
    @Override
    public boolean addCoach(Coach coach) {
        return this.coachRepository.addCoach(coach);
    }
    
}
