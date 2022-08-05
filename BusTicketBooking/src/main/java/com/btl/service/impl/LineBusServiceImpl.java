/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.btl.service.impl;

import com.btl.pojo.LineBus;
import com.btl.repository.LineBusRepository;
import com.btl.service.LineBusService;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LineBusServiceImpl implements LineBusService {

    @Autowired
    private LineBusRepository lineBusRepository;

    @Override
    public List<LineBus> getAllLineBus(Map<String, String> params, int page) {
        return this.lineBusRepository.getAllLineBus(params, page);
    }

    @Override
    public int countLineBus() {
        return this.lineBusRepository.countLineBus();
    }

    @Override
    public boolean addLineBus(LineBus lb) {
        return this.lineBusRepository.addLineBus(lb);
    }

}
