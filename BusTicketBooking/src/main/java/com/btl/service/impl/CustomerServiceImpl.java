/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.btl.service.impl;

import com.btl.pojo.Customer;
import com.btl.repository.CustomerRepository;
import com.btl.service.CustomerService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CustomerServiceImpl implements CustomerService {

    @Autowired
    private CustomerRepository customerRepository;

    @Override
    public List<Customer> getCustomer(int page, boolean active) {
        return this.customerRepository.getCustomer(page, active);
    }

    @Override
    public long countCustomer(boolean active) {
        return this.customerRepository.countCustomer(active);
    }

    @Override
    public boolean deleteCustomer(int id) {
        return this.customerRepository.deleteCustomer(id);
    }

}
