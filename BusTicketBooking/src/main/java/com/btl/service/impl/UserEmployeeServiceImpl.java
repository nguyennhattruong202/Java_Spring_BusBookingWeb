/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.btl.service.impl;

import com.btl.pojo.Employee;
import com.btl.repository.UserEmployeeRepository;
import com.btl.service.UserEmployeeService;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service("userDetailsService")
public class UserEmployeeServiceImpl implements UserEmployeeService {

    @Autowired
    private UserEmployeeRepository userEmployeeRepository;

    @Override
    public Employee getUserEmployeeByUserName(String user) {
        return this.userEmployeeRepository.getUserEmployeeByUserName(user);
    }

    @Override
    public List<Employee> getEmployee(int page) {
        return this.userEmployeeRepository.getEmployee(page);
    }

    @Override
    public long countEmployee() {
        return this.userEmployeeRepository.countEmployee();
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Employee employee = this.getUserEmployeeByUserName(username);
        if (employee == null) {
            throw new UsernameNotFoundException("Invalid username!");
        }
        Set<GrantedAuthority> authorities = new HashSet<>();
        authorities.add(new SimpleGrantedAuthority(employee.getUserRole()));
        return new org.springframework.security.core.userdetails.User(
                employee.getUsername(),
                employee.getPassword(), authorities
        );
    }

    @Override
    public boolean addEmployee(Employee employee) {
        return this.userEmployeeRepository.addEmployee(employee);
    }

    @Override
    public boolean checkOldPassword(String oldPassword) {
        return this.userEmployeeRepository.checkOldPassword(oldPassword);
    }

    @Override
    public boolean changePassword(Employee employee, String newPassword) {
        return this.userEmployeeRepository.changePassword(employee, newPassword);
    }
}
