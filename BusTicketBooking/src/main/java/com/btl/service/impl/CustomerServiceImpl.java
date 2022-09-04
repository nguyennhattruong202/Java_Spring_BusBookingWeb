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
    public List<Customer> getCustomer(int page) {
        return this.customerRepository.getCustomer(page);
    }

    @Override
    public long countCustomer() {
        return this.customerRepository.countCustomer();
    }

    @Override
    public boolean deleteCustomer(int id) {
        return this.customerRepository.deleteCustomer(id);
    }

    @Override
    public void editCustomer(Customer customer) {
        this.customerRepository.editCustomer(customer);
    }

    @Override
    public boolean changeStatusActive(int id, boolean status) {
        return this.customerRepository.changeStatusActive(id, status);
    }

}
