/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.btl.repository;

import com.btl.pojo.Employee;
import java.util.List;

public interface UserEmployeeRepository {

    Employee getUserEmployeeByUserName(String username);

    List<Employee> getEmployee(int page);

    long countEmployee();

    boolean addEmployee(Employee employee);
}
