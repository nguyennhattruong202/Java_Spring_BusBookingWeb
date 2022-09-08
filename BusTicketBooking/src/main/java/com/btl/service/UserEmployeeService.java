/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.btl.service;

import com.btl.pojo.Employee;
import java.util.List;
import org.springframework.security.core.userdetails.UserDetailsService;

public interface UserEmployeeService extends UserDetailsService {

    Employee getUserEmployeeByUserName(String user);

    List<Employee> getEmployee(int page);

    long countEmployee();

    boolean addEmployee(Employee employee);

    boolean checkOldPassword(String oldPassword);

    boolean changePassword(Employee employee, String newPassword);
}
