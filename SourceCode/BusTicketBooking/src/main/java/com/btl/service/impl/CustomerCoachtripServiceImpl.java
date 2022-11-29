/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.btl.service.impl;

import com.btl.repository.CustomerCoachtripRepository;
import com.btl.service.CustomerCoachtripService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CustomerCoachtripServiceImpl implements CustomerCoachtripService {

    @Autowired
    private CustomerCoachtripRepository customerCoachtripRepository;

    @Override
    public List<Object[]> orderCoachTrip() {
        return this.customerCoachtripRepository.orderCoachTrip();
    }

}
