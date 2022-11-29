/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.btl.service;

import com.btl.pojo.Customer;
import java.util.List;

public interface CustomerService {

    List<Customer> getCustomer(int page, boolean active);

    long countCustomer(boolean active);

    boolean deleteCustomer(int id);
}
