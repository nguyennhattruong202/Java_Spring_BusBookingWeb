/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.btl.service.impl;

import com.btl.pojo.TypeEmployee;
import com.btl.repository.TypeEmployeeRepository;
import com.btl.service.TypeEmployeeService;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TypeEmployeeServiceImpl implements TypeEmployeeService {
    
    @Autowired
    private TypeEmployeeRepository typeEmployeeRepository;
    
    @Override
    public List<TypeEmployee> getTypeEmployee(Map<String, String> params) {
        return this.typeEmployeeRepository.getTypeEmployee(params);
    }
}
