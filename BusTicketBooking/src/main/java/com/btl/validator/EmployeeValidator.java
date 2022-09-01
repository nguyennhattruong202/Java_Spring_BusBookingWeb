/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.btl.validator;

import com.btl.pojo.Employee;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

@Component
public class EmployeeValidator implements Validator {

    @Override
    public boolean supports(Class<?> type) {
        return Employee.class.isAssignableFrom(type);
    }

    @Override
    public void validate(Object o, Errors errors) {
        Employee employee = (Employee) o;
        if (employee.getLastName().isEmpty() || employee.getLastName() == null) {
            errors.rejectValue("lastName", "admin.validation.employee.nullError");
        }
        if (employee.getImage().isEmpty() || employee.getImage() == null) {
            errors.rejectValue("image", "admin.validator.employee.nullError");
        }
    }

}
