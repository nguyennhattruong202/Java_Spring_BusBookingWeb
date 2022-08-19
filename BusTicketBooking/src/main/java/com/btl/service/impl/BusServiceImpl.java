/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.btl.service.impl;

import com.btl.pojo.Bus;
import com.btl.repository.BusRepository;
import com.btl.service.BusService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BusServiceImpl implements BusService {
    
    @Autowired
    private BusRepository busRepository;
    
    @Override
    public List<Bus> getBus(String keyword) {
        return this.busRepository.getBus(keyword);
    }
    
    @Override
    public boolean addBus(Bus bus) {
        return this.busRepository.addBus(bus);
    }
    
    @Override
    public boolean deleteBus(int busId) {
        return this.busRepository.deleteBus(busId);
    }
    
}
