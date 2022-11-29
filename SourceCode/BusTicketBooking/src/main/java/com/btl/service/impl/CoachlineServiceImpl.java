/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.btl.service.impl;

import com.btl.pojo.Coachline;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.btl.repository.CoachlineRepository;
import com.btl.service.CoachlineService;

@Service
public class CoachlineServiceImpl implements CoachlineService {

    @Autowired
    private CoachlineRepository lineBusRepository;

    @Override
    public List<Coachline> getCoachline(Map<String, String> params, int page) {
        return this.lineBusRepository.getCoachline(params, page);
    }

    @Override
    public int countCoachline() {
        return this.lineBusRepository.countCoachline();
    }

    @Override
    public boolean addCoachline(Coachline coachline) {
        return this.lineBusRepository.addCoachline(coachline);
    }

}
